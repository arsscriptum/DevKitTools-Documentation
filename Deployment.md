<div align="center">
  <img src="img/deployment.png" alt="deployment" />
</div>

**Tools to assist in deployment, installation, and updating of Windows applications.**

## List Tools in Deployment


<div id="DeployUtil.exe"><h2>deployutil</h2></div>
<h4>Overview</h4>
Deployment Utility.

<h4>Purpose</h4>
Assists in automating the deployment of Windows applications, handling tasks such as copying, registering, or updating application files.

<h4>Syntax</h4>

```bash
DeployUtil.exe [options] <application>
```

<h4>Examples</h4>

```bash
DeployUtil.exe -register MyApp.exe
DeployUtil.exe -update MyApp.exe
```
<hr>

<div id="isxps.exe"><h2>isxps</h2></div>
<h4>Overview</h4>
XPS Document Validator.

<h4>Purpose</h4>
Checks if a given file is a valid XPS document, useful for deployment validation and format checking.

<h4>Syntax</h4>

```bash
isxps.exe <file>
```

<h4>Examples</h4>

```bash
isxps.exe document.xps
```
<hr>

<div id="rc.exe"><h2>rc</h2></div>
<h4>Overview</h4>
Resource Compiler.

<h4>Purpose</h4>
Compiles application resource script files into binary format for use during deployment or installation.

<h4>Syntax</h4>

```bash
rc.exe [options] <file.rc>
```

<h4>Examples</h4>

```bash
rc.exe install.rc
```
<hr>

<div id="cppwinrt.exe"><h2>cppwinrt</h2></div>
<h4>Overview</h4>
C++/WinRT Code Generator.

<h4>Purpose</h4>
Generates deployment-ready C++ projection headers for WinRT APIs, allowing modern deployment of Windows Runtime components.

<h4>Syntax</h4>

```bash
cppwinrt.exe [options] [inputs]
```

<h4>Examples</h4>

```bash
cppwinrt.exe -input winmds -output generated
```
<hr>

<div id="StoreUploader.exe"><h2>storeuploader</h2></div>
<h4>Overview</h4>
Windows Store Uploader.

<h4>Purpose</h4>
Uploads and validates Windows application packages for store deployment and update distribution.

<h4>Syntax</h4>

```bash
StoreUploader.exe [options] <package>
```

<h4>Examples</h4>

```bash
StoreUploader.exe MyApp.appx
```
<hr>
