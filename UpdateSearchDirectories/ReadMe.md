# Programmatically Updating TestStand Search Directories Tool


It might be a good things for a TestStand Workspace to programmaticaly add the search directories it needs to run properly. And maybe cleanup after itself to avoid unnecessary pollution. 

This also helps porting a project from one PC to another.<br><br><br>


## Definition

The sequence file/tool `UpdateSearchDirectories.seq` will read the **search directories** *specific to a target TestStand project* from a data file.

The sequence file will then iterate through all the current Search Directories items until it finds one whose *path* matches one of the *paths* provided from the *data file*.
  - If such entry is found, that entry is updated to the parameters provided as input to `UpdateSearchDirectories.seq` (i.e enable if the sequence file parameter `doEnable` is `True` else disable) 

  - Otherwise, a new entry is appended at the end of the Search Directories items and is set to the input parameters provided to `UpdateSearchDirectories.seq` (i.e enable if the sequence file parameter `doEnable` is `True` else disable) and path from the data file.


The sequence will then reload TestStand for the updated search directories to come in effect.<br><br><br>


## Data File

By default, this data file is named `project-search-directories.txt` and lives next to the tool/sequence file `UpdateSearchDirectories.seq`. 

  - Each line is a path that contains dependencies for the target TestStand project

### Content example

```
\\parsec.local\globalshare\Scratch\Stephane\Labview Schauenburg\pds\projects\Schauenburg\Sentinel 4\TestStand Deployment\sw\Parsec_Lib\LabVIEW

\\parsec.local\globalshare\Scratch\Stephane\Labview Schauenburg\pds\projects\Schauenburg\Sentinel 4\TestStand Deployment\sw\LV_source

\\parsec.local\globalshare\Scratch\Stephane\Labview Schauenburg\pds\projects\Schauenburg\Labview Project
```
<br><br><br>

## Search Directory Item

### Overview 

It represents a place for where to look for dependencies of a TestStand project. 

An example of a search directory item structure is
```
{
    "Disabled": True,
    "SearchSubDirs": True,
    "ExcludeHiddenSubdirs": True,
    "FileExtRestrictions": "",
    "Path": "C:\Tests"
}
```

where:
1. ***Path*** is the path of the search directory
2. ***Disabled*** determines whether this path should be used when TestStand resolves dependencies.
3. ***SearchSubDirs*** determines whether this path's subfolders should be included when TestStand resolves dependencies.
4. ***ExcludeHiddenSubdirs*** determines whether this path's hidden subfolders should be included ir not when TestStand resolves dependencies.
5. ***FileExtRestrictions*** are there files in that path that must be excluded based on their extensions.

<br><br>

### State Mutation Effect


If the `doEnable` parameter passed to the sequence file/tool `UpdateSearchDirectories.seq` is `True`, the entries added or updated will have the following form:

```
{
    "Disabled": True,
    "SearchSubDirs": True,
    "ExcludeHiddenSubdirs": False,
    "FileExtRestrictions": "",
    "Path": "some\path\from\data\file"
}
```


If it is passed in as `False`:

```
{
    "Disabled": False,
    "SearchSubDirs": False,
    "ExcludeHiddenSubdirs": False,
    "FileExtRestrictions": "",
    "Path": "some\path\from\data\file"
}
```

<br><br>

## Resources
1. https://forums.ni.com/t5/NI-TestStand/How-to-programmatically-add-a-search-directory-path/td-p/32759?profile.1. language=en
1. https://forums.ni.com/t5/NI-TestStand/1. How-to-add-directory-to-the-search-directory-in-runtime-at-net/td-p/737971?profile.language=en
1. https://forums.ni.com/t5/NI-TestStand/Programmatically-Inserting-search-directory/td-p/1063612?profile.language=en
1. https://forums.ni.com/t5/NI-TestStand/Disabling-Report-Generation/td-p/988664?profile.language=en
1. https://forums.ni.com/t5/NI-TestStand/How-to-read-a-textfile-in-TestStand/td-p/774125?profile.language=en
1. [https://www.ni.com/en-za/support/documentation/supplemental/06/a-guide-to-developing-effective--maintainable-teststand-sequence.html](https://www.ni.com/en-za/support/documentation/supplemental/06/a-guide-to-developing-effective--maintainable-teststand-sequence.html)