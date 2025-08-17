<div align="center">
  <img src="img/testing.png" alt="testing" />
</div>

**Tools to validate application and driver compatibility. Profiling, tracing, and performance measurement utilities.**

## List Tools in Testing



<div id="adpcmencode3.exe"><h2>adpcmencode3</h2></div>
<h4>Overview</h4>
ADPCM Audio Encoder.

<h4>Purpose</h4>
Encodes audio files into Adaptive Differential Pulse Code Modulation (ADPCM) format, often used in testing audio driver or codec compatibility.

<h4>Syntax</h4>

```bash
adpcmencode3.exe [input.wav] [output.adpcm]
```

<h4>Examples</h4>

```bash
adpcmencode3.exe sound.wav sound.adpcm
```
<hr>

<div id="aitstatic.exe"><h2>aitstatic</h2></div>
<h4>Overview</h4>
AIT (Application Impact Telemetry) Static Analyzer.

<h4>Purpose</h4>
Analyzes application binaries for telemetry compatibility and reporting conformance.

<h4>Syntax</h4>

```bash
aitstatic.exe [options] <app>
```

<h4>Examples</h4>

```bash
aitstatic.exe MyApp.exe
```
<hr>

<div id="betest.exe"><h2>betest</h2></div>
<h4>Overview</h4>
Binary Encoding Tester.

<h4>Purpose</h4>
Tests encoding and decoding of binaries for compatibility with various subsystems.

<h4>Syntax</h4>

```bash
betest.exe [input] [options]
```

<h4>Examples</h4>

```bash
betest.exe mybinary.bin
```
<hr>

<div id="cameraprofiletool.exe"><h2>cameraprofiletool</h2></div>
<h4>Overview</h4>
Camera Profile Management Tool.

<h4>Purpose</h4>
Validates, edits, and generates camera device profile data for driver and application testing.

<h4>Syntax</h4>

```bash
cameraprofiletool.exe [options] <profile>
```

<h4>Examples</h4>

```bash
cameraprofiletool.exe -validate camprofile.xml
```
<hr>

<div id="ComparePackage.exe"><h2>comparepackage</h2></div>
<h4>Overview</h4>
App Package Comparison Tool.

<h4>Purpose</h4>
Compares two Windows app packages for content, manifest, or resource differences.

<h4>Syntax</h4>

```bash
ComparePackage.exe <package1.appx> <package2.appx>
```

<h4>Examples</h4>

```bash
ComparePackage.exe old.appx new.appx
```
<hr>

<div id="computerhardwareids.exe"><h2>computerhardwareids</h2></div>
<h4>Overview</h4>
Hardware ID Extraction Utility.

<h4>Purpose</h4>
Extracts hardware IDs from system or driver binaries for testing device recognition.

<h4>Syntax</h4>

```bash
computerhardwareids.exe [options] <binary>
```

<h4>Examples</h4>

```bash
computerhardwareids.exe mydriver.sys
```
<hr>

<div id="convert-moftoprovider.exe"><h2>convert-moftoprovider</h2></div>
<h4>Overview</h4>
MOF-to-Provider Conversion Tool.

<h4>Purpose</h4>
Converts Managed Object Format (MOF) files into provider binaries for WMI testing.

<h4>Syntax</h4>

```bash
convert-moftoprovider.exe <file.mof> <output.dll>
```

<h4>Examples</h4>

```bash
convert-moftoprovider.exe test.mof testprovider.dll
```
<hr>

<div id="extidgen.exe"><h2>extidgen</h2></div>
<h4>Overview</h4>
External ID Generator.

<h4>Purpose</h4>
Generates external IDs for resources or objects for testing, analysis, and tracking.

<h4>Syntax</h4>

```bash
extidgen.exe [options]
```

<h4>Examples</h4>

```bash
extidgen.exe --count 10
```
<hr>

<div id="filetypeverifier.exe"><h2>filetypeverifier</h2></div>
<h4>Overview</h4>
File Type Verifier.

<h4>Purpose</h4>
Validates file types, extensions, and formats for compatibility or conformance testing.

<h4>Syntax</h4>

```bash
filetypeverifier.exe <file>
```

<h4>Examples</h4>

```bash
filetypeverifier.exe myfile.docx
```
<hr>

<div id="StoreUploader.exe"><h2>storeuploader</h2></div>
<h4>Overview</h4>
Windows Store Package Uploader.

<h4>Purpose</h4>
Uploads Windows application packages for automated testing and submission validation.

<h4>Syntax</h4>

```bash
StoreUploader.exe [options] <package>
```

<h4>Examples</h4>

```bash
StoreUploader.exe MyApp.appx
```
<hr>

<div id="xpsanalyzer.exe"><h2>xpsanalyzer</h2></div>
<h4>Overview</h4>
XPS Document Analyzer.

<h4>Purpose</h4>
Validates and tests XPS document structure, content, and rendering compatibility.

<h4>Syntax</h4>

```bash
xpsanalyzer.exe [options] <xpsfile>
```

<h4>Examples</h4>

```bash
xpsanalyzer.exe test.xps
```
<hr>

<div id="xpsconverter.exe"><h2>xpsconverter</h2></div>
<h4>Overview</h4>
XPS Document Converter.

<h4>Purpose</h4>
Converts XPS files to other formats for testing and validation.

<h4>Syntax</h4>

```bash
xpsconverter.exe [options] <xpsfile> <output>
```

<h4>Examples</h4>

```bash
xpsconverter.exe test.xps test.pdf
```
<hr>

<div id="wmimofck.exe"><h2>wmimofck</h2></div>
<h4>Overview</h4>
WMI MOF Consistency Checker.

<h4>Purpose</h4>
Checks Managed Object Format (MOF) files for consistency and correctness in WMI provider scenarios.

<h4>Syntax</h4>

```bash
wmimofck.exe <file.mof>
```

<h4>Examples</h4>

```bash
wmimofck.exe myprovider.mof
```
<hr>
