# How To Use

1. Copy the report utility '**``copyReports.seq``'** to the folder where teststand sequences are saved.

1. Open the main sequence file responsible for the tests, add a '**``PostUUT Sequence File Callback``**'. Open the callback. 

1. Add a sequence call that points to '**``copyReports.seq``**'. In the step properties, provide values for:

   - ***``ReportsDirectory``*** - Source Directory for the reports (e.g. "c:\\test")
   - ***``ReportsSelector``*** - Name of the report to be copied. Wildcards can be used to select more that one report (e.g. "\*.html")
   - ***``DestinationDirectory``*** - Destination Directory for the reports (e.g. "C:\\test\\abc")

   This will copy all the reports in ***"c:\test"*** that match ***"\*.html"*** to the destination folder ***"C:\test\abc"***

1. An example of this is provided and can be referred to in **'``copyReportsTest.seq``'**
