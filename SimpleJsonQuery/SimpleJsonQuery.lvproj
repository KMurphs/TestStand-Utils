<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="SimpleJsonNQuery.vi" Type="VI" URL="../SimpleJsonNQuery.vi"/>
		<Item Name="SimpleJsonNQueryFromFile.vi" Type="VI" URL="../SimpleJsonNQueryFromFile.vi"/>
		<Item Name="SimpleJsonQuery.vi" Type="VI" URL="../SimpleJsonQuery.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="SimpleJsonQuery32" Type=".NET Interop Assembly">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{BD157488-CC68-4940-A8DB-D290E5D5D8D3}</Property>
				<Property Name="App_INI_GUID" Type="Str">{D7E31CDE-732B-4A37-B7C1-697C2A29F507}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{E9ACA519-D6B1-4059-BDB6-871705134D1C}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">SimpleJsonQuery32</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/builds/NI_AB_PROJECTNAME/SimpleJsonQuery32</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{8ED86AA5-23AF-400E-8FBA-3E793C773798}</Property>
				<Property Name="Bld_version.build" Type="Int">9</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">SimpleJsonQuery32.dll</Property>
				<Property Name="Destination[0].path" Type="Path">/C/builds/NI_AB_PROJECTNAME/SimpleJsonQuery32/SimpleJsonQuery32.dll</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/builds/NI_AB_PROJECTNAME/SimpleJsonQuery32/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="DotNET2011CompatibilityMode" Type="Bool">false</Property>
				<Property Name="DotNETAssembly_ClassName" Type="Str">LabVIEWExports</Property>
				<Property Name="DotNETAssembly_delayOSMsg" Type="Bool">true</Property>
				<Property Name="DotNETAssembly_Namespace" Type="Str">InteropAssembly</Property>
				<Property Name="DotNETAssembly_signAssembly" Type="Bool">false</Property>
				<Property Name="DotNETAssembly_StrongNameKeyFileItemID" Type="Ref"></Property>
				<Property Name="DotNETAssembly_StrongNameKeyGUID" Type="Str">{F816F5F9-284F-4836-B0D1-16829E661383}</Property>
				<Property Name="Source[0].itemID" Type="Str">{6FD35D80-8EDB-4FA6-9B76-7E9852E42C2F}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[0]VIProtoConNum" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[0]VIProtoDataType" Type="Str">void</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[0]VIProtoIutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[0]VIProtoName" Type="Str">returnvalue</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[1]VIProtoConNum" Type="Int">11</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[1]VIProtoDataType" Type="Str">String</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[1]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[1]VIProtoIutputIdx" Type="Int">11</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[1]VIProtoName" Type="Str">JsonString</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[2]VIProtoConNum" Type="Int">10</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[2]VIProtoDataType" Type="Str">String</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[2]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[2]VIProtoIutputIdx" Type="Int">10</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[2]VIProtoName" Type="Str">Lookup</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[3]VIProtoConNum" Type="Int">3</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[3]VIProtoDataType" Type="Str">String</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[3]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[3]VIProtoIutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[3]VIProtoName" Type="Str">Value__32As__32String</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[3]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[4]VIProtoConNum" Type="Int">2</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[4]VIProtoDataType" Type="Str">DBL</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[4]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[4]VIProtoIutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[4]VIProtoName" Type="Str">Value__32As__32Numeric</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[4]VIProtoOutputIdx" Type="Int">2</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[5]VIProtoConNum" Type="Int">8</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[5]VIProtoDataType" Type="Str">Cluster</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[5]VIProtoDir" Type="Int">6</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[5]VIProtoIutputIdx" Type="Int">8</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[5]VIProtoName" Type="Str">error__32in</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[5]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[6]MethodName" Type="Str">SimpleJsonQuery</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[6]VIName" Type="Str">SimpleJsonQuery.vi</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[6]VIProtoConNum" Type="Int">0</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[6]VIProtoDataType" Type="Str">Cluster</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[6]VIProtoDir" Type="Int">7</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[6]VIProtoIutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[6]VIProtoName" Type="Str">error__32out</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[6]VIProtoOutputIdx" Type="Int">0</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfoVIDocumentation" Type="Str">Given a json string, extract value at the specified lookup string ('key'). </Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfoVIDocumentationEnabled" Type="Int">0</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfoVIIsNamesSanitized" Type="Int">1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfoVIProtoItemCount" Type="Int">7</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/SimpleJsonQuery.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">ExportedAssemblyVI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[0]VIProtoConNum" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[0]VIProtoDataType" Type="Str">void</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[0]VIProtoIutputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[0]VIProtoName" Type="Str">returnvalue</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[1]VIProtoConNum" Type="Int">11</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[1]VIProtoDataType" Type="Str">String</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[1]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[1]VIProtoIutputIdx" Type="Int">11</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[1]VIProtoName" Type="Str">JsonString</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[2]VIProtoConNum" Type="Int">10</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[2]VIProtoDataType" Type="Str">Array</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[2]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[2]VIProtoIutputIdx" Type="Int">10</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[2]VIProtoName" Type="Str">Lookups</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[3]VIProtoConNum" Type="Int">3</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[3]VIProtoDataType" Type="Str">Array</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[3]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[3]VIProtoIutputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[3]VIProtoName" Type="Str">Values__32As__32String</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[3]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[4]VIProtoConNum" Type="Int">2</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[4]VIProtoDataType" Type="Str">Array</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[4]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[4]VIProtoIutputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[4]VIProtoName" Type="Str">Value__32As__32Numeric</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[4]VIProtoOutputIdx" Type="Int">2</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[5]VIProtoConNum" Type="Int">8</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[5]VIProtoDataType" Type="Str">Cluster</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[5]VIProtoDir" Type="Int">6</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[5]VIProtoIutputIdx" Type="Int">8</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[5]VIProtoName" Type="Str">error__32in</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[5]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[6]MethodName" Type="Str">SimpleJsonNQuery</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[6]VIName" Type="Str">SimpleJsonNQuery.vi</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[6]VIProtoConNum" Type="Int">0</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[6]VIProtoDataType" Type="Str">Cluster</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[6]VIProtoDir" Type="Int">7</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[6]VIProtoIutputIdx" Type="Int">-1</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[6]VIProtoName" Type="Str">error__32out</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfo[6]VIProtoOutputIdx" Type="Int">0</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfoVIDocumentation" Type="Str">Given a json string, extract values at the specified lookup strings ('keys') </Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfoVIDocumentationEnabled" Type="Int">0</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfoVIIsNamesSanitized" Type="Int">1</Property>
				<Property Name="Source[2].ExportedAssemblyVI.VIProtoInfoVIProtoItemCount" Type="Int">7</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/SimpleJsonNQuery.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">ExportedAssemblyVI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[0]VIProtoConNum" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[0]VIProtoDataType" Type="Str">void</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[0]VIProtoIutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[0]VIProtoName" Type="Str">returnvalue</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[1]VIProtoConNum" Type="Int">11</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[1]VIProtoDataType" Type="Str">Path</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[1]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[1]VIProtoIutputIdx" Type="Int">11</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[1]VIProtoName" Type="Str">Json__32File</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[2]VIProtoConNum" Type="Int">10</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[2]VIProtoDataType" Type="Str">Array</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[2]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[2]VIProtoIutputIdx" Type="Int">10</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[2]VIProtoName" Type="Str">Lookups</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[3]VIProtoConNum" Type="Int">3</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[3]VIProtoDataType" Type="Str">Array</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[3]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[3]VIProtoIutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[3]VIProtoName" Type="Str">Values__32As__32String</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[3]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[4]VIProtoConNum" Type="Int">2</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[4]VIProtoDataType" Type="Str">Array</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[4]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[4]VIProtoIutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[4]VIProtoName" Type="Str">Value__32As__32Numeric</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[4]VIProtoOutputIdx" Type="Int">2</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[5]VIProtoConNum" Type="Int">8</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[5]VIProtoDataType" Type="Str">Cluster</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[5]VIProtoDir" Type="Int">6</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[5]VIProtoIutputIdx" Type="Int">8</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[5]VIProtoName" Type="Str">error__32in</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[5]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[6]MethodName" Type="Str">SimpleJsonNQueryFromFile</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[6]VIName" Type="Str">SimpleJsonNQueryFromFile.vi</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[6]VIProtoConNum" Type="Int">0</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[6]VIProtoDataType" Type="Str">Cluster</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[6]VIProtoDir" Type="Int">7</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[6]VIProtoIutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[6]VIProtoName" Type="Str">error__32out</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfo[6]VIProtoOutputIdx" Type="Int">0</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfoVIDocumentation" Type="Str">Given a json file, extract values at the specified lookup strings ('keys')</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfoVIDocumentationEnabled" Type="Int">0</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfoVIIsNamesSanitized" Type="Int">1</Property>
				<Property Name="Source[3].ExportedAssemblyVI.VIProtoInfoVIProtoItemCount" Type="Int">7</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/SimpleJsonNQueryFromFile.vi</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[3].type" Type="Str">ExportedAssemblyVI</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
				<Property Name="TgtF_companyName" Type="Str">PERISEO</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">SimpleJsonQuery64</Property>
				<Property Name="TgtF_internalName" Type="Str">SimpleJsonQuery64</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 PERISEO</Property>
				<Property Name="TgtF_productName" Type="Str">SimpleJsonQuery64</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{D9B1CA11-4CBB-44B6-8655-92860A3EDFBA}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">SimpleJsonQuery32.dll</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="SimpleJsonQuery64" Type=".NET Interop Assembly">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{BD157488-CC68-4940-A8DB-D290E5D5D8D3}</Property>
				<Property Name="App_INI_GUID" Type="Str">{D7E31CDE-732B-4A37-B7C1-697C2A29F507}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{B9568753-06C6-4C88-BFD4-BAEF22CD72AC}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">SimpleJsonQuery64</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/builds/NI_AB_PROJECTNAME/SimpleJsonQuery64</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{6C386F93-C68F-45E4-881A-22FDD9A9BF39}</Property>
				<Property Name="Bld_version.build" Type="Int">6</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">SimpleJsonQuery64.dll</Property>
				<Property Name="Destination[0].path" Type="Path">/C/builds/NI_AB_PROJECTNAME/SimpleJsonQuery64/SimpleJsonQuery64.dll</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/builds/NI_AB_PROJECTNAME/SimpleJsonQuery64/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="DotNET2011CompatibilityMode" Type="Bool">false</Property>
				<Property Name="DotNETAssembly_ClassName" Type="Str">LabVIEWExports</Property>
				<Property Name="DotNETAssembly_delayOSMsg" Type="Bool">true</Property>
				<Property Name="DotNETAssembly_Namespace" Type="Str">InteropAssembly</Property>
				<Property Name="DotNETAssembly_signAssembly" Type="Bool">false</Property>
				<Property Name="DotNETAssembly_StrongNameKeyFileItemID" Type="Ref"></Property>
				<Property Name="DotNETAssembly_StrongNameKeyGUID" Type="Str">{F816F5F9-284F-4836-B0D1-16829E661383}</Property>
				<Property Name="Source[0].itemID" Type="Str">{BC7D80D3-8B64-417D-B3B5-6BAC2847C45A}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[0]VIProtoConNum" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[0]VIProtoDataType" Type="Str">void</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[0]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[0]VIProtoIutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[0]VIProtoName" Type="Str">returnvalue</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[1]VIProtoConNum" Type="Int">11</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[1]VIProtoDataType" Type="Str">String</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[1]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[1]VIProtoIutputIdx" Type="Int">11</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[1]VIProtoName" Type="Str">String</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[2]VIProtoConNum" Type="Int">10</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[2]VIProtoDataType" Type="Str">String</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[2]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[2]VIProtoIutputIdx" Type="Int">10</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[2]VIProtoName" Type="Str">Lookup</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[3]VIProtoConNum" Type="Int">3</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[3]VIProtoDataType" Type="Str">String</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[3]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[3]VIProtoIutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[3]VIProtoName" Type="Str">Value__32As__32String</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[3]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[4]VIProtoConNum" Type="Int">2</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[4]VIProtoDataType" Type="Str">DBL</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[4]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[4]VIProtoIutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[4]VIProtoName" Type="Str">Value__32As__32Numeric</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[4]VIProtoOutputIdx" Type="Int">2</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[5]VIProtoConNum" Type="Int">8</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[5]VIProtoDataType" Type="Str">Cluster</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[5]VIProtoDir" Type="Int">6</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[5]VIProtoIutputIdx" Type="Int">8</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[5]VIProtoName" Type="Str">error__32in</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[5]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[6]MethodName" Type="Str">SimpleJsonQuery</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[6]VIName" Type="Str">SimpleJsonQuery.vi</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[6]VIProtoConNum" Type="Int">0</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[6]VIProtoDataType" Type="Str">Cluster</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[6]VIProtoDir" Type="Int">7</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[6]VIProtoIutputIdx" Type="Int">-1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[6]VIProtoName" Type="Str">error__32out</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfo[6]VIProtoOutputIdx" Type="Int">0</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfoVIDocumentation" Type="Str"></Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfoVIDocumentationEnabled" Type="Int">0</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfoVIIsNamesSanitized" Type="Int">1</Property>
				<Property Name="Source[1].ExportedAssemblyVI.VIProtoInfoVIProtoItemCount" Type="Int">7</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/SimpleJsonQuery.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">ExportedAssemblyVI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">PERISEO</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">SimpleJsonQuery64</Property>
				<Property Name="TgtF_internalName" Type="Str">SimpleJsonQuery64</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 PERISEO</Property>
				<Property Name="TgtF_productName" Type="Str">SimpleJsonQuery64</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{D9B1CA11-4CBB-44B6-8655-92860A3EDFBA}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">SimpleJsonQuery64.dll</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
