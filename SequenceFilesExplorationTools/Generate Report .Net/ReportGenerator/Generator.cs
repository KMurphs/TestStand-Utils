using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.IO;


namespace ReportGenerator
{
    public class Generator
    {
        private TestStandStep hierarchyRoot;
        private string reportName;




        public string getVersion(){
            return "1.0";
        }
        public Generator(string reportName){
            this.reportName = reportName;
        }





        public bool process(string text){
            
            string assemblyFolder = Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location);
            string reportFilePath = Path.Combine("..", "Reports");
            reportFilePath = Path.Combine(reportFilePath, this.reportName);
            reportFilePath = Path.Combine(assemblyFolder, reportFilePath);
            System.IO.File.WriteAllText(reportFilePath.Replace(".html", ".timeline.txt"), text);




            Regex rgx = new Regex(@"^(\s\s\-\s\s)*\[(\d+)\]\[([\w]+)\]([\t])*\[(.+)\]([\s]*)([\t])+([^\[\]]+)\[?([a-zA-Z\s-]+)?\]?$");
            string lineSeparator = text.Contains("\r\n") ? "\r\n" : "\n";

            List<TestStandStep> steps = text.Split( new[] { lineSeparator }, StringSplitOptions.None )
                                                .Where(token => rgx.IsMatch(token))
                                                .Select(token => { 
                                                    Match m = rgx.Match(token);
                                                    Int32 stepRecursionLevel = 0;
                                                    Int32.TryParse(m.Groups[2].ToString(), out stepRecursionLevel);
                                                    string stepType = m.Groups[3].ToString();
                                                    string stepName = m.Groups[5].ToString();
                                                    string stepModulePath = m.Groups[8].ToString();
                                                    string stepTargetSequenceName = m.Groups[9].ToString();
                                                    TestStandStep step = new TestStandStep(stepName, stepType, stepRecursionLevel, stepModulePath, stepTargetSequenceName);
                                                    // step.RegisterSequenceCallStep(new List<TestStandStep>());
                                                    // Console.WriteLine(step.toHTML()); 
                                                    return step;
                                                })
                                                .ToList();
            
            this.hierarchyRoot = steps[0];
            List<TestStandStep> hierarchyStack = new List<TestStandStep>(){ this.hierarchyRoot };
            buildStepHierarchy(hierarchyStack, steps, 1);

            HTMLReport report = new HTMLReport(reportFilePath.Replace(".html", ".timeline.html"), this.hierarchyRoot.toHTML());


            SortedSet<string> dependencies = new SortedSet<string>();
            foreach (TestStandStep f in steps){ dependencies.Add(f.ToString()); }

            using(TextWriter f = new StreamWriter(reportFilePath.Replace(".html", ".dependencies.txt")))
            {
                foreach (String s in dependencies.ToList()) f.WriteLine(s);
            }







            return true;
        }
        private void buildStepHierarchy(List<TestStandStep> hierarchyStack, List<TestStandStep> steps, Int32 stepIdx){
            
            if(stepIdx >= steps.Count) return;

            TestStandStep stackTop = hierarchyStack[hierarchyStack.Count - 1];
            TestStandStep currentStep = steps[stepIdx];

            if(currentStep.RecursionLevel <= stackTop.RecursionLevel){
                hierarchyStack.Remove(stackTop); 
            } else if(currentStep.RecursionLevel == stackTop.RecursionLevel + 1){
                stackTop.AddSequenceCallStep(currentStep);
                stepIdx++;
            } else if(currentStep.RecursionLevel == stackTop.RecursionLevel + 2){
                hierarchyStack.Add(stackTop.GetLastSequenceCallStep());
                stackTop.GetLastSequenceCallStep().AddSequenceCallStep(currentStep);
                stepIdx++;
            } else {
                throw new Exception("Corrupted data");
            }

            buildStepHierarchy(hierarchyStack, steps, stepIdx);
        }
    }








    public class TestStandStep{
        private string name;
        private string type;
        private Int32 recursionLevel;
        public Int32 RecursionLevel{ get { return this.recursionLevel; } }
        
        private bool isModule;
        private string modulePath;
        private string fileName;

        private bool isSequenceCall;
        private string targetSequenceName;
        private IList<TestStandStep> targetSequenceSteps;

        public override string ToString()
        {
            // string filename = this.modulePath.Split(new String[] { "(Module Not Found" }, StringSplitOptions.None)[0];
            // filename = filename.Replace("\r", "").Replace("\n", "").Replace("\t", "").Replace("\\", "\\\\");
            // // filename = filename.Replace("\\", "\\\\");
            // // string invalid = new string(Path.GetInvalidFileNameChars()) + new string(Path.GetInvalidPathChars());

            // // foreach (char c in invalid)
            // // {
            // //     filename = filename.Replace(c.ToString(), ""); 
            // // }
            // try{
            //     filename = Path.GetFileName(filename.Substring(0, 53));
            // }catch(Exception e){
            //     Console.WriteLine(e);
            //     Console.WriteLine(filename);
            // }
            
            string filename = (this.fileName + "                              ").Substring(0, 30);
            
            return $"[{this.type.ToUpper()}]\t[{filename}]\t\t\t{this.modulePath}";
        }

        public TestStandStep(string name, string type, Int32 recursionLevel, string modulePath, string targetSequenceName)
        {
            this.name = name;
            this.type = type;
            this.recursionLevel = recursionLevel;

            this.isModule = !(modulePath == "" || modulePath == null);
            this.modulePath = modulePath;

            String[] parts = this.modulePath.Replace(Path.DirectorySeparatorChar, Path.AltDirectorySeparatorChar).Split(Path.AltDirectorySeparatorChar);
            this.fileName = parts[parts.Length - 1].Split(new String[] { "(Module" }, StringSplitOptions.None)[0].Replace("\t", "");

            this.isSequenceCall = !(targetSequenceName == "" || targetSequenceName == null);
            this.targetSequenceName = targetSequenceName;
            this.targetSequenceSteps = new List<TestStandStep>();
        }

        public void AddSequenceCallStep(TestStandStep targetSequenceStep){
            if(!this.isSequenceCall) return;
            this.targetSequenceSteps.Add(targetSequenceStep);
        }
        public TestStandStep GetLastSequenceCallStep(){
            if(!this.isSequenceCall) return null;
            return this.targetSequenceSteps[this.targetSequenceSteps.Count - 1];
        }
        static Int32 stepId = 0;
        private Int32 getStepId(){
            stepId = stepId + 1;
            return stepId;
        }
        static IDictionary<string, string> icons = new Dictionary<string, string>()
        {
            { "actvx", "automation.ico" },
            { "net", "dotnet.ico" },
            { "exe", "execstep.ico" },
            { "dll", "flexdll.ico" },
            { "vi", "lvadapt.ico" },
            { "ts", "ni_stdtype.ico" },
            { "seq", "SeqAdp.ico" },
        };
        public string toHTML(){


            Int32 stepId = getStepId();
            string module_CSSClassValue = this.isModule ? "ts-item--module" : "";
            string sequenceCall_CSSClassValue = this.isSequenceCall ? "ts-item--sequence" : "";
            string moduleNotFound_CSSClassValue = this.modulePath.ToLower().Contains("module not found") ? "module-not-found" : "";
            string targetSequenceSteps = this.targetSequenceSteps.Aggregate("", (acc, tsStep) => $"{acc}\n\n{tsStep.toHTML()}");
            string stepIcon = icons[this.type.ToLower()];


            return $@"
<li class='ts-item {module_CSSClassValue} {sequenceCall_CSSClassValue} {moduleNotFound_CSSClassValue}'>

  <input type='checkbox' id='ts-item-{stepId}-view-sequence-call-target' class='ts-item-view-sequence-call-target'>
  <input type='checkbox' id='ts-item-{stepId}-view-more' class='ts-item__view-more'>
  <label for='ts-item-{stepId}-view-sequence-call-target' class='ts-item__opener'>
    <i class='fas fa-plus'></i>
    <i class='fas fa-minus'></i>
  </label>
  
  <div class='ts-item__data'>
    <div class='ts-item__data__main'>
      <span class='ts-item__icon'><img src='./html-assets/icons/{stepIcon}'></span>
      <span class='ts-item__name'>{this.name}</span>
      <span class='ts-item__type'>{this.type.ToUpper()}</span>
      <span class='ts-item__copy-icon' click='copyToClipboard(""{this.modulePath}"")'><i class='far fa-copy'></i></span>
      <label for='ts-item-{stepId}-view-more' class='ts-item__expand-icon'><i class='fas fa-ellipsis-v'></i></label>    
    </div>
    <div class='ts-item__data__detailed'>
      <span class='ts-item__recursion-level'><span>Recursion Level: </span>{this.recursionLevel}</span>
      <span class='ts-item__sequence-call-target'><span>Target Sequence: </span>{this.targetSequenceName}</span>
      <span class='ts-item__absolute-path'>{this.modulePath}</span>
    </div>
  </div>
  <ul class='ts-item-container reset'>
    {targetSequenceSteps}
  </ul>
</li>  
            ";
        }
    }


    public class HTMLReport{
        public HTMLReport(string filePath, string steps){
            if(filePath == "" || filePath == null) throw new Exception("Provide File Name for Report");

            string template = $@"
<!DOCTYPE html>
<html lang='en'>
<head>
  <meta charset='UTF-8'>
  <meta name='viewport' content='width=device-width, initial-scale=1.0'>
  <link rel='stylesheet' href='./html-assets/style.css'>
  <title>TestStand Exploration Report</title>
</head>
<body>
  <div class='app-root'>

    <div class='slidecontainer'>
        <span>Expand Items at Level: <span>1</span></span> 
        <input type='range' min='0' max='5' value='0' class='slider' step='1' id='myRange'>
    </div>

    <ul class='ts-item-container reset'>
        {steps}
    </ul>
  </div>
  <script src='./html-assets/all.min.js'></script>
  <script src='./html-assets/script.js'></script>
</body>
</html>
";
            try
            {
                System.IO.File.WriteAllText(filePath, template);
            }
            catch (IOException e)
            {
                Console.WriteLine("The file could not be written to:");
                Console.WriteLine(e.Message);
            }

        }
    }

}
