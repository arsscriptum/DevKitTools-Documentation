<div align="center">
  <img src="img/development.png" alt="development" />
</div>

**Compilers, linkers, and tools for building Windows desktop, UWP, and driver applications. Resource editors and utilities for managing application assets.**

## List Tools in Development

<div id="apivalidator.exe"><h2>apivalidator</h2></div>

<h4>Overview</h4>
A command-line tool for validating Windows API usage within application binaries.

<h4>Purpose</h4>
Checks that applications only use APIs allowed for their target platform and compliance profile (e.g., UWP, Store apps).

<h4>Syntax</h4>

```bash
apivalidator.exe [options] <binary>
```

<h4>Examples</h4>

```bash
apivalidator.exe myapp.exe
```
<hr>

<div id="cppwinrt.exe"><h2>cppwinrt</h2></div>

<h4>Overview</h4>
C++/WinRT code generator and toolset.

<h4>Purpose</h4>
Generates modern C++ projection headers for WinRT APIs, allowing developers to consume and implement WinRT components in C++.

<h4>Syntax</h4>

```bash
cppwinrt.exe [options] [inputs]
```

<h4>Examples</h4>

```bash
cppwinrt.exe -input winmds -output generated
```
<hr>

<div id="ctrpp.exe"><h2>ctrpp</h2></div>

<h4>Overview</h4>
Control Panel Resource Protocol Processor.

<h4>Purpose</h4>
Processes resource definition files for event tracing providers and generates C/C++ code and resource scripts.

<h4>Syntax</h4>

```bash
ctrpp.exe <input.man> [options]
```

<h4>Examples</h4>

```bash
ctrpp.exe events.man
```
<hr>

<div id="dxc.exe"><h2>dxc</h2></div>

<h4>Overview</h4>
DirectX Shader Compiler.

<h4>Purpose</h4>
Compiles HLSL shader code into binary format for DirectX 12 and supports new shader features.

<h4>Syntax</h4>

```bash
dxc.exe <file.hlsl> [options]
```

<h4>Examples</h4>

```bash
dxc.exe shader.hlsl -T ps_6_0 -Fo shader.cso
```
<hr>

<div id="fxc.exe"><h2>fxc</h2></div>

<h4>Overview</h4>
Legacy DirectX HLSL Shader Compiler.

<h4>Purpose</h4>
Compiles HLSL shader files into DirectX 9, 10, or 11 bytecode.

<h4>Syntax</h4>

```bash
fxc.exe /T <profile> /E <entrypoint> /Fo <output> <input.hlsl>
```

<h4>Examples</h4>

```bash
fxc.exe /T ps_5_0 /E main /Fo pixel.cso pixel.hlsl
```
<hr>

<div id="genmanifest.exe"><h2>genmanifest</h2></div>

<h4>Overview</h4>
Manifest file generator.

<h4>Purpose</h4>
Generates manifest files for resource configuration and registration.

<h4>Syntax</h4>

```bash
genmanifest.exe [options] <input>
```

<h4>Examples</h4>

```bash
genmanifest.exe app.config
```
<hr>

<div id="makepri.exe"><h2>makepri</h2></div>

<h4>Overview</h4>
PRI (Package Resource Index) file generator.

<h4>Purpose</h4>
Creates .pri files that package app resources for UWP and modern Windows applications.

<h4>Syntax</h4>

```bash
makepri.exe new /ProjectRoot <path> /ConfigXml <file> /OutputFile <output>
```

<h4>Examples</h4>

```bash
makepri.exe new /ProjectRoot . /ConfigXml priconfig.xml /OutputFile resources.pri
```
<hr>

<div id="mbidgenerator.exe"><h2>mbidgenerator</h2></div>

<h4>Overview</h4>
Media Bundle ID generator.

<h4>Purpose</h4>
Generates unique IDs for media resource bundles.

<h4>Syntax</h4>

```bash
mbidgenerator.exe [options] <input>
```

<h4>Examples</h4>

```bash
mbidgenerator.exe mymedia.bundle
```
<hr>

<div id="mc.exe"><h2>mc</h2></div>

<h4>Overview</h4>
Message Compiler.

<h4>Purpose</h4>
Compiles message resource files (.mc) for use in Windows event logging and message DLLs.

<h4>Syntax</h4>

```bash
mc.exe [options] <file.mc>
```

<h4>Examples</h4>

```bash
mc.exe myevents.mc
```
<hr>

<div id="mdmerge.exe"><h2>mdmerge</h2></div>

<h4>Overview</h4>
Managed Assembly Merger.

<h4>Purpose</h4>
Merges multiple .NET metadata files into a single assembly for use in Windows development.

<h4>Syntax</h4>

```bash
mdmerge.exe [options] <input> <output>
```

<h4>Examples</h4>

```bash
mdmerge.exe input1.dll input2.dll merged.dll
```
<hr>

<div id="midl.exe"><h2>midl</h2></div>

<h4>Overview</h4>
Microsoft Interface Definition Language (MIDL) compiler.

<h4>Purpose</h4>
Compiles .idl files to produce type libraries, header files, and code for COM interfaces.

<h4>Syntax</h4>

```bash
midl.exe [options] <file.idl>
```

<h4>Examples</h4>

```bash
midl.exe myinterface.idl
```
<hr>

<div id="midlc.exe"><h2>midlc</h2></div>

<h4>Overview</h4>
MIDL C Compiler front-end.

<h4>Purpose</h4>
Provides C-language parsing and code generation for .idl files.

<h4>Syntax</h4>

```bash
midlc.exe [options] <file.idl>
```

<h4>Examples</h4>

```bash
midlc.exe myinterface.idl
```
<hr>

<div id="midlrt.exe"><h2>midlrt</h2></div>

<h4>Overview</h4>
MIDL Runtime compiler.

<h4>Purpose</h4>
Generates code for runtime support of COM and RPC interfaces.

<h4>Syntax</h4>

```bash
midlrt.exe [options] <file.idl>
```

<h4>Examples</h4>

```bash
midlrt.exe myinterface.idl
```
<hr>

<div id="muirct.exe"><h2>muirct</h2></div>

<h4>Overview</h4>
Multilingual User Interface Resource Compiler Tool.

<h4>Purpose</h4>
Generates and manages resource files for multilingual application support.

<h4>Syntax</h4>

```bash
muirct.exe [options] <input>
```

<h4>Examples</h4>

```bash
muirct.exe app.resources
```
<hr>

<div id="rc.exe"><h2>rc</h2></div>

<h4>Overview</h4>
Resource Compiler.

<h4>Purpose</h4>
Compiles resource script files (.rc) into binary resource files for linking into Windows applications.

<h4>Syntax</h4>

```bash
rc.exe [options] <file.rc>
```

<h4>Examples</h4>

```bash
rc.exe myapp.rc
```
<hr>

<div id="regwinmd.exe"><h2>regwinmd</h2></div>

<h4>Overview</h4>
Windows Metadata Registration Tool.

<h4>Purpose</h4>
Registers and manages Windows metadata (.winmd) files for use by the Windows Runtime.

<h4>Syntax</h4>

```bash
regwinmd.exe [options] <winmd-file>
```

<h4>Examples</h4>

```bash
regwinmd.exe MyComponent.winmd
```
<hr>

<div id="uuidgen.exe"><h2>uuidgen</h2></div>

<h4>Overview</h4>
UUID Generator.

<h4>Purpose</h4>
Generates a new universally unique identifier (UUID/GUID).

<h4>Syntax</h4>

```bash
uuidgen.exe [options]
```

<h4>Examples</h4>

```bash
uuidgen.exe
```
<hr>

<div id="winmdidl.exe"><h2>winmdidl</h2></div>

<h4>Overview</h4>
Windows Metadata IDL Extractor.

<h4>Purpose</h4>
Extracts IDL from Windows Metadata (.winmd) files.

<h4>Syntax</h4>

```bash
winmdidl.exe [options] <file.winmd>
```

<h4>Examples</h4>

```bash
winmdidl.exe MyComponent.winmd
```
<hr>

<div id="wsdcodegen.exe"><h2>wsdcodegen</h2></div>

<h4>Overview</h4>
Web Services for Devices (WSD) Code Generator.

<h4>Purpose</h4>
Generates proxy and stub code for web services device protocols.

<h4>Syntax</h4>

```bash
wsdcodegen.exe [options] <input.wsdl>
```

<h4>Examples</h4>

```bash
wsdcodegen.exe service.wsdl
```
<hr>
