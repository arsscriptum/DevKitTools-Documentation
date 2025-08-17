<div align="center">
  <img src="img/signing.png" alt="signing" />
</div>

**Utilities for signing binaries, verifying digital signatures, and managing certificates (e.g., signtool.exe). Tools for creating and inspecting appx/msix packages.**

## List Tools in Signing


<div id="cert2spc.exe"><h2>cert2spc</h2></div>
<h4>Overview</h4>
Converts one or more X.509 certificates to a Software Publisher Certificate (SPC).

<h4>Purpose</h4>
Used to create an SPC file from certificate files, required for digitally signing drivers or applications.

<h4>Syntax</h4>

```bash
cert2spc.exe cert1.cer [cert2.cer ...] output.spc
```

<h4>Examples</h4>

```bash
cert2spc.exe mycert.cer mycert.spc
```
<hr>

<div id="certmgr.exe"><h2>certmgr</h2></div>
<h4>Overview</h4>
Certificate Manager Tool.

<h4>Purpose</h4>
Manages certificates, certificate trust lists (CTLs), and certificate revocation lists (CRLs).

<h4>Syntax</h4>

```bash
certmgr.exe [options] [file]
```

<h4>Examples</h4>

```bash
certmgr.exe -add mycert.cer -s -r localMachine root
```
<hr>

<div id="makeappx.exe"><h2>makeappx</h2></div>
<h4>Overview</h4>
App Package Creator.

<h4>Purpose</h4>
Creates or inspects .appx and .msix application packages for Windows Store deployment.

<h4>Syntax</h4>

```bash
makeappx.exe pack /d <folder> /p <package.appx>
makeappx.exe unpack /p <package.appx> /d <folder>
```

<h4>Examples</h4>

```bash
makeappx.exe pack /d MyAppFolder /p MyApp.appx
```
<hr>

<div id="makecat.exe"><h2>makecat</h2></div>
<h4>Overview</h4>
Catalog File Maker.

<h4>Purpose</h4>
Creates a catalog (.cat) file from a catalog definition (.cdf) file, often used to sign driver packages.

<h4>Syntax</h4>

```bash
makecat.exe <catalog.cdf>
```

<h4>Examples</h4>

```bash
makecat.exe MyCatalog.cdf
```
<hr>

<div id="makecert.exe"><h2>makecert</h2></div>
<h4>Overview</h4>
Certificate Creation Tool.

<h4>Purpose</h4>
Generates X.509 certificates for test or development purposes.

<h4>Syntax</h4>

```bash
makecert.exe [options] output.cer
```

<h4>Examples</h4>

```bash
makecert.exe -r -pe -n "CN=Test" -b 01/01/2020 -e 01/01/2030 -sky exchange -sv test.pvk test.cer
```
<hr>

<div id="PackageEditor.exe"><h2>packageeditor</h2></div>
<h4>Overview</h4>
App Package Editor.

<h4>Purpose</h4>
Edits, signs, or inspects app package contents for .appx and .msix files.

<h4>Syntax</h4>

```bash
PackageEditor.exe [options] <package>
```

<h4>Examples</h4>

```bash
PackageEditor.exe -list MyApp.appx
```
<hr>

<div id="pktextract.exe"><h2>pktextract</h2></div>
<h4>Overview</h4>
Package Extractor.

<h4>Purpose</h4>
Extracts contents from signed package files for inspection or troubleshooting.

<h4>Syntax</h4>

```bash
pktextract.exe <package> <destination>
```

<h4>Examples</h4>

```bash
pktextract.exe MyApp.appx ExtractedContents
```
<hr>

<div id="pvk2pfx.exe"><h2>pvk2pfx</h2></div>
<h4>Overview</h4>
PVK/Certificate to PFX Converter.

<h4>Purpose</h4>
Combines a PVK private key file and a CER certificate into a single PFX (PKCS#12) file.

<h4>Syntax</h4>

```bash
pvk2pfx.exe -pvk <private.pvk> -spc <cert.spc> -pfx <output.pfx>
```

<h4>Examples</h4>

```bash
pvk2pfx.exe -pvk test.pvk -spc test.spc -pfx test.pfx
```
<hr>

<div id="signtool.exe"><h2>signtool</h2></div>
<h4>Overview</h4>
Signing Tool.

<h4>Purpose</h4>
Digitally signs files, verifies signatures, and timestamps code and packages.

<h4>Syntax</h4>

```bash
signtool.exe sign /f <cert.pfx> /p <password> <file>
signtool.exe verify <file>
```

<h4>Examples</h4>

```bash
signtool.exe sign /f test.pfx /p mypass MyApp.exe
signtool.exe verify /pa MyApp.exe
```
<hr>

<div id="stampinf.exe"><h2>stampinf</h2></div>
<h4>Overview</h4>
INF File Stamper.

<h4>Purpose</h4>
Updates date/time and versioning information in INF files, used in driver signing.

<h4>Syntax</h4>

```bash
stampinf.exe [options] <file.inf>
```

<h4>Examples</h4>

```bash
stampinf.exe MyDriver.inf
```
<hr>

<div id="mt.exe"><h2>mt</h2></div>
<h4>Overview</h4>
Manifest Tool.

<h4>Purpose</h4>
Adds, modifies, or extracts application manifest resources in binaries.

<h4>Syntax</h4>

```bash
mt.exe -manifest <manifest.xml> -outputresource:<binary>;#1
```

<h4>Examples</h4>

```bash
mt.exe -manifest app.manifest -outputresource:MyApp.exe;#1
```
<hr>
