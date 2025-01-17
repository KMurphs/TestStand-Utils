curl -o .gitignore https://www.toptal.com/developers/gitignore/api/csharp,vscode

dotnet new sln
@REM dotnet new console -n ReportGenerator -o ReportGenerator
dotnet new classlib -n ReportGenerator -o ReportGenerator
dotnet new nunit -n ReportGenerator.Tests -o ReportGenerator.Tests
dotnet sln add .\ReportGenerator\ReportGenerator.csproj
dotnet sln add .\ReportGenerator.Tests\ReportGenerator.Tests.csproj
dotnet add .\ReportGenerator.Tests\ReportGenerator.Tests.csproj reference .\ReportGenerator\ReportGenerator.csproj

dotnet test 
dotnet restore 


@REM <ItemGroup>
@REM   <DotNetCliToolReference Include="Microsoft.DotNet.Watcher.Tools" Version="1.0.0" />
@REM </ItemGroup>
cd .\ReportGenerator.Tests\
dotnet watch test


dotnet build
dotnet run
dotnet publish
dotnet release