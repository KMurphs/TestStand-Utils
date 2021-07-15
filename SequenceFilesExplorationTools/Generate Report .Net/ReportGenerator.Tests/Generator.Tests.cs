using NUnit.Framework;
using System;
using System.IO;
using ReportGenerator;

namespace ReportGenerator.Tests
{
    public class Tests
    {
        private String text;
        private Generator ReportGenerator;

        [SetUp]
        public void Setup()
        {
            try
            {
                ReportGenerator = new Generator("sample-report.html");

                // Open the text file using a stream reader.
                using (var sr = new StreamReader(Path.Combine(Directory.GetCurrentDirectory(), "sample-report.txt")))
                {
                    // Read the stream as a string, and write the string to the console.
                    text = sr.ReadToEnd();
                    // Console.WriteLine(text);

                }
            }
            catch (IOException e)
            {
                Console.WriteLine("The file could not be read:");
                Console.WriteLine(e.Message);
            }
        }

        [Test]
        public void CanProvideVersionTest()
        {
            Assert.True(ReportGenerator.getVersion() == "1.0");
        }


        [Test]
        public void CanConvertTextToHTMLTest()
        {

            // foreach (char c in Path.GetInvalidPathChars()) Console.Write(c);
            // Console.WriteLine();
            // foreach (char c in Path.GetInvalidFileNameChars()) Console.Write(c);
            // Console.WriteLine();

            // Console.Write(Path.DirectorySeparatorChar);
            // Console.Write(Path.AltDirectorySeparatorChar);
            // Console.Write(Path.PathSeparator);
            // Console.Write(Path.VolumeSeparatorChar);

            Assert.True(ReportGenerator.process(text) == true);
        }
    }
}