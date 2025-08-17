<div align="center">
  <img src="img/debugging.png" alt="debugging" />
</div>

**Tools for low-level debugging, such as ```windbg.exe``` and crash dump analysis utilities. Tools for symbol management, memory dumps, and log collection.**

## List Tools in Debugging

<div id="accevent.exe"><h2>accevent</h2></div>

<h4>Overview</h4>

A tool for monitoring accessibility events in Windows applications.

<h4>Purpose</h4>
Used by developers to track and debug UI automation and accessibility (MSAA/UIA) events.

<h4>Syntax</h4>

```bash
accevent.exe [options]
```

<h4>Examples</h4>

```bash
accevent.exe
```
<hr>

<div id="dxcapsviewer.exe"><h2>dxcapsviewer</h2></div>
<h4>Overview</h4>
DirectX Capabilities Viewer.

<h4>Purpose</h4>
Displays and logs graphics adapter and driver capabilities, useful for troubleshooting GPU feature support.

<h4>Syntax</h4>

```bash
dxcapsviewer.exe
```

<h4>Examples</h4>

```bash
dxcapsviewer.exe
```
<hr>

<div id="espexe.exe"><h2>esp</h2></div>
<h4>Overview</h4>
Event Source Processor.

<h4>Purpose</h4>
Processes ETW (Event Tracing for Windows) event sources for debugging event generation and logging.

<h4>Syntax</h4>

```bash
espexe.exe [options]
```

<h4>Examples</h4>

```bash
espexe.exe -log myevents.log
```
<hr>

<div id="filtdump.exe"><h2>filtdump</h2></div>
<h4>Overview</h4>
Filter Dump Utility.

<h4>Purpose</h4>
Displays filter data structures, typically for debugging search/filter components or indexing services.

<h4>Syntax</h4>

```bash
filtdump.exe [options] <filterfile>
```

<h4>Examples</h4>

```bash
filtdump.exe data.flt
```
<hr>

<div id="filtreg.exe"><h2>filtreg</h2></div>
<h4>Overview</h4>
Filter Registration Utility.

<h4>Purpose</h4>
Registers and manages IFilter components for content indexing and search.

<h4>Syntax</h4>

```bash
filtreg.exe [options] <filterdll>
```

<h4>Examples</h4>

```bash
filtreg.exe myfilter.dll
```
<hr>

<div id="ftquery.exe"><h2>ftquery</h2></div>
<h4>Overview</h4>
Full-text Query Utility.

<h4>Purpose</h4>
Executes test full-text queries against indexed data sources for debugging search/indexing.

<h4>Syntax</h4>

```bash
ftquery.exe [options] <query>
```

<h4>Examples</h4>

```bash
ftquery.exe "SELECT * FROM Table WHERE CONTAINS(*, 'text')"
```
<hr>

<div id="gamesaveutil.exe"><h2>gamesaveutil</h2></div>
<h4>Overview</h4>
Game Save Utility.

<h4>Purpose</h4>
Used for testing and debugging game save functionality and file management on Windows.

<h4>Syntax</h4>

```bash
gamesaveutil.exe [options]
```

<h4>Examples</h4>

```bash
gamesaveutil.exe --list
```
<hr>

<div id="graphedt.exe"><h2>graphedt</h2></div>
<h4>Overview</h4>
GraphEdit Tool.

<h4>Purpose</h4>
Visual editor for building and debugging DirectShow filter graphs (audio/video processing).

<h4>Syntax</h4>

```bash
graphedt.exe
```

<h4>Examples</h4>

```bash
graphedt.exe
```
<hr>

<div id="ifilttst.exe"><h2>ifilttst</h2></div>
<h4>Overview</h4>
IFilter Test Utility.

<h4>Purpose</h4>
Tests and debugs IFilter implementations for document parsing and content indexing.

<h4>Syntax</h4>

```bash
ifilttst.exe [options] <testfile>
```

<h4>Examples</h4>

```bash
ifilttst.exe document.docx
```
<hr>

<div id="inspect.exe"><h2>inspect</h2></div>
<h4>Overview</h4>
Accessibility Inspector.

<h4>Purpose</h4>
Examines UI elements for accessibility information; used for debugging MSAA/UIA compliance.

<h4>Syntax</h4>

```bash
inspect.exe
```

<h4>Examples</h4>

```bash
inspect.exe
```
<hr>

<div id="jsconstraintdebug.exe"><h2>jsconstraintdebug</h2></div>
<h4>Overview</h4>
JavaScript Constraint Debugger.

<h4>Purpose</h4>
Debugs and analyzes constraint-based layouts in JavaScript applications.

<h4>Syntax</h4>

```bash
jsconstraintdebug.exe [options]
```

<h4>Examples</h4>

```bash
jsconstraintdebug.exe --input app.js
```
<hr>

<div id="mftrace.exe"><h2>mftrace</h2></div>
<h4>Overview</h4>
Media Foundation Trace Utility.

<h4>Purpose</h4>
Collects debug trace data for Windows Media Foundation pipelines.

<h4>Syntax</h4>

```bash
mftrace.exe [options] <logfile>
```

<h4>Examples</h4>

```bash
mftrace.exe output.log
```
<hr>

<div id="oleview.exe"><h2>oleview</h2></div>
<h4>Overview</h4>
OLE/COM Object Viewer.

<h4>Purpose</h4>
Views, browses, and debugs registered COM classes, interfaces, and type libraries.

<h4>Syntax</h4>

```bash
oleview.exe
```

<h4>Examples</h4>

```bash
oleview.exe
```
<hr>

<div id="TB3x.exe"><h2>TB3x</h2></div>
<h4>Overview</h4>
TraceBuffer Utility.

<h4>Purpose</h4>
Debugs and manages kernel-level tracing buffers for driver and system analysis.

<h4>Syntax</h4>

```bash
TB3x.exe [options]
```

<h4>Examples</h4>

```bash
TB3x.exe --list
```
<hr>

<div id="topoedit.exe"><h2>topoedit</h2></div>
<h4>Overview</h4>
Topology Editor.

<h4>Purpose</h4>
Graphical tool for building and debugging Media Foundation topology graphs.

<h4>Syntax</h4>

```bash
topoedit.exe
```

<h4>Examples</h4>

```bash
topoedit.exe
```
<hr>

<div id="tracefmt.exe"><h2>tracefmt</h2></div>
<h4>Overview</h4>
Trace Format Utility.

<h4>Purpose</h4>
Converts raw ETW trace logs to readable text using formatting files.

<h4>Syntax</h4>

```bash
tracefmt.exe <logfile> [options]
```

<h4>Examples</h4>

```bash
tracefmt.exe trace.etl
```
<hr>

<div id="tracelog.exe"><h2>tracelog</h2></div>
<h4>Overview</h4>
Trace Logging Controller.

<h4>Purpose</h4>
Starts, stops, and configures ETW logging sessions.

<h4>Syntax</h4>

```bash
tracelog.exe [options]
```

<h4>Examples</h4>

```bash
tracelog.exe -start MySession
tracelog.exe -stop MySession
```
<hr>

<div id="tracepdb.exe"><h2>tracepdb</h2></div>
<h4>Overview</h4>
Trace PDB Utility.

<h4>Purpose</h4>
Processes PDB (Program Database) files for trace symbol resolution.

<h4>Syntax</h4>

```bash
tracepdb.exe [options] <pdbfile>
```

<h4>Examples</h4>

```bash
tracepdb.exe mybinary.pdb
```
<hr>

<div id="traceview.exe"><h2>traceview</h2></div>
<h4>Overview</h4>
Trace Log Viewer.

<h4>Purpose</h4>
Displays, analyzes, and filters ETW logs in a graphical interface.

<h4>Syntax</h4>

```bash
traceview.exe [options]
```

<h4>Examples</h4>

```bash
traceview.exe trace.etl
```
<hr>

<div id="tracewpp.exe"><h2>tracewpp</h2></div>
<h4>Overview</h4>
Trace Preprocessor.

<h4>Purpose</h4>
Preprocesses trace statements in source code for WPP (Windows software trace preprocessor) tracing.

<h4>Syntax</h4>

```bash
tracewpp.exe [options] <source files>
```

<h4>Examples</h4>

```bash
tracewpp.exe mydriver.cpp
```
<hr>

<div id="vsdiagview.exe"><h2>vsdiagview</h2></div>
<h4>Overview</h4>
Visual Studio Diagnostic Viewer.

<h4>Purpose</h4>
Displays and analyzes diagnostic logs from Visual Studio tools.

<h4>Syntax</h4>

```bash
vsdiagview.exe [options] <logfile>
```

<h4>Examples</h4>

```bash
vsdiagview.exe session.diaglog
```
<hr>

<div id="vshadow.exe"><h2>vshadow</h2></div>
<h4>Overview</h4>
Volume Shadow Copy Utility.

<h4>Purpose</h4>
Creates, manages, and deletes shadow copies (snapshots) of volumes for backup and debugging.

<h4>Syntax</h4>

```bash
vshadow.exe [options] <volumes>
```

<h4>Examples</h4>

```bash
vshadow.exe C:
```
<hr>

<div id="vssagent.exe"><h2>vssagent</h2></div>
<h4>Overview</h4>
VSS Agent Utility.

<h4>Purpose</h4>
Assists in managing and debugging Volume Shadow Copy Service operations.

<h4>Syntax</h4>

```bash
vssagent.exe [options]
```

<h4>Examples</h4>

```bash
vssagent.exe --list
```
<hr>

<div id="vsstrace.exe"><h2>vsstrace</h2></div>
<h4>Overview</h4>
VSS Trace Utility.

<h4>Purpose</h4>
Logs and traces VSS operations for debugging backup and restore processes.

<h4>Syntax</h4>

```bash
vsstrace.exe [options]
```

<h4>Examples</h4>

```bash
vsstrace.exe -log vss.log
```
<hr>

<div id="vstorcontrol.exe"><h2>vstorcontrol</h2></div>
<h4>Overview</h4>
Virtual Storage Control Utility.

<h4>Purpose</h4>
Manages and debugs virtual storage devices and services.

<h4>Syntax</h4>

```bash
vstorcontrol.exe [options]
```

<h4>Examples</h4>

```bash
vstorcontrol.exe --list
```
<hr>

<div id="vswriter.exe"><h2>vswriter</h2></div>
<h4>Overview</h4>
VSS Writer Simulator.

<h4>Purpose</h4>
Simulates and debugs VSS writer operations for testing backup scenarios.

<h4>Syntax</h4>

```bash
vswriter.exe [options]
```

<h4>Examples</h4>

```bash
vswriter.exe
```
<hr>

<div id="wsddebug_client.exe"><h2>wsddebug_client</h2></div>
<h4>Overview</h4>
Web Services for Devices (WSD) Debug Client.

<h4>Purpose</h4>
Debugs WSD device communication and tests client interactions.

<h4>Syntax</h4>

```bash
wsddebug_client.exe [options]
```

<h4>Examples</h4>

```bash
wsddebug_client.exe --device mywsd
```
<hr>

<div id="wsddebug_host.exe"><h2>wsddebug_host</h2></div>
<h4>Overview</h4>
WSD Debug Host.

<h4>Purpose</h4>
Hosts WSD services for debugging and development.

<h4>Syntax</h4>

```bash
wsddebug_host.exe [options]
```

<h4>Examples</h4>

```bash
wsddebug_host.exe --service myservice
```
<hr>

<div id="wstracedump.exe"><h2>wstracedump</h2></div>
<h4>Overview</h4>
Windows Trace Dump Utility.

<h4>Purpose</h4>
Parses and displays trace dump files for debugging and analysis.

<h4>Syntax</h4>

```bash
wstracedump.exe <dumpfile>
```

<h4>Examples</h4>

```bash
wstracedump.exe trace.dmp
```
<hr>

<div id="wstraceutil.exe"><h2>wstraceutil</h2></div>
<h4>Overview</h4>
Windows Trace Utility.

<h4>Purpose</h4>
Performs miscellaneous trace-related operations and analysis.

<h4>Syntax</h4>

```bash
wstraceutil.exe [options]
```

<h4>Examples</h4>

```bash
wstraceutil.exe --help
```
<hr>

<div id="wsutil.exe"><h2>wsutil</h2></div>
<h4>Overview</h4>
Web Services Utility.

<h4>Purpose</h4>
Diagnostic tool for testing and debugging Windows web service APIs.

<h4>Syntax</h4>

```bash
wsutil.exe [options]
```

<h4>Examples</h4>

```bash
wsutil.exe --list
```
<hr>
