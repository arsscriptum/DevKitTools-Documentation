

[string]$Script:RootPath = (Resolve-Path -Path "$PSScriptRoot\.." -ErrorAction Stop).Path
[string]$Script:TmpDirectory = Join-Path "$($Script:RootPath)" "tmp"
[string]$Script:BackupDirectory = Join-Path "$($Script:RootPath)" "bak"
[string]$Script:DataDirectory = (Resolve-Path -Path "$($Script:RootPath)\data" -ErrorAction Stop).Path
[string]$Script:ScriptsDirectory = (Resolve-Path -Path "$($Script:RootPath)\scripts" -ErrorAction Stop).Path
[string]$Script:DocumentationDataJsonPath = Join-Path "$($Script:DataDirectory)" "DocumentationData.json"
[string]$Script:DocumentationTodoListPath = Join-Path "$($Script:RootPath)" "TODO.md"
[string]$Script:ToolsPath = "C:\Program Files (x86)\Windows Kits\10\bin\10.0.19041.0\x64"
[System.Collections.Generic.List[string]]$Script:Categories = [System.Collections.Generic.List[string]]@("Development", "Debugging", "Signing", "Testing", "Deployment")

$Script:CategoryDescriptions = @{
    Development = 'Compilers, linkers, and tools for building Windows desktop, UWP, and driver applications. Resource editors and utilities for managing application assets.'
    Debugging = 'Tools for low-level debugging, such as ```windbg.exe``` and crash dump analysis utilities. Tools for symbol management, memory dumps, and log collection.'
    Signing = 'Utilities for signing binaries, verifying digital signatures, and managing certificates (e.g., signtool.exe). Tools for creating and inspecting appx/msix packages.'
    Testing = 'Tools to validate application and driver compatibility. Profiling, tracing, and performance measurement utilities.'
    Deployment = 'Tools to assist in deployment, installation, and updating of Windows applications.'
}

$Script:ImgSectionTemplate = @"
<div align="center">
  <img src="img/{0}.png" alt="{0}" />
</div>
"@


$Script:DocSectionTemplate = @"
<div id=`"{0}`"><h2>{1}</h2></div>

<h4>Overview</h4>

...

<h4>Purpose</h4>

...

<h4>Syntax</h4>

...

``````bash
bla
bla
``````
<h4>Examples</h4>

...

``````bash
bla
bla
``````

<hr>`n

"@


function Write-CategoryMarkDownFile {
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(Position = 0, Mandatory = $true, HelpMessage = 'Tools Path')]
        [string]$Category
    )

    if (-not ($Script:Categories.Contains($Category))) {
        throw "invalid category"
    }
    if(-not(Test-Path "$Script:BackupDirectory")){
        New-Item -Path "$Script:BackupDirectory" -ItemType Directory -Force | Out-Null
    }
    [string]$OutFileName = "{0}.md" -f $Category
    $imgTxt = $Script:ImgSectionTemplate -f "$($Category.ToLower())"
    $overviewTxt = $Script:CategoryDescriptions[$Category]

    [string]$DocumentationPath = Join-Path "$($Script:RootPath)" "$OutFileName"

    $RawData = Import-GeneratedDocumentationData
    $FileContent = "{0}`n`n**{1}**`n`n" -f $imgTxt, $overviewTxt
    $FileContent += "## List Tools in {0}`n" -f $Category

    $CatObject = $RawData.CategoryList.Where({$_.CategoryName -eq "$Category"})

    [System.Collections.Generic.List[string]]$ExeList =$CatObject.ProgramList

    foreach ($exe in $exelist) {
        $linkUrl = $exe.ToLower().TrimEnd('.exe')
        $SectionString += $Script:DocSectionTemplate -f $exe, $linkUrl
    }
    $FileContent += $SectionString

    if(Test-Path "$DocumentationPath"){
        $backupFilename = "{0}.md.backup" -f $Category 
        $backupFilePath = Join-Path "$Script:BackupDirectory" "$backupFilename"
        Write-Host "Backing up existing file $DocumentationPath => $backupFilePath" -f DarkYellow
        Move-Item "$DocumentationPath" "$backupFilePath" -Force
    }
    # Write to file
    $FileContent | Set-Content -Path "$DocumentationPath" -Encoding UTF8
    Write-Host "Written $Path" -f DarkCyan
}




<#
    Parsed some temporary file...
#>
function Get-ExecutableNamesFromListFiles {
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(Position = 0, Mandatory = $true, HelpMessage = 'Directory containing .list files')]
        [string]$Category,
        [Parameter(Mandatory = $false)]
        [switch]$Json
    )

    [string]$CategoryToFind = $Category.ToLower()
    [System.Collections.Generic.List[string]]$exeList = [System.Collections.Generic.List[string]]::new()


    $files = Get-ChildItem -Path $Script:DataDirectory -Filter "*.list" -File

    foreach ($file in $files) {
        $fi = Get-Item -Path "$($file.Fullname)" -EA Stop
        $bname = $fi.BaseName
        $bname = $bname.ToLower()
        Write-Verbose "Searching for $CategoryToFind => base name is $bname "
        if ($bname -eq $CategoryToFind) {
            Write-Verbose "FOUND CATEGORY! Iterating in the file..."

            $lines = Get-Content $file.FullName | Where-Object { $_.Contains('.exe') }
            foreach ($line in $lines) {
                $s = $line.IndexOf('[') + 1
                $e = $line.IndexOf(']') - 3
                $exe = $line.SubString($s, $e)


                $exeFullname = Join-Path $Script:ToolsPath $exe

                $Valid = [System.IO.File]::Exists($exeFullname)

                Write-Verbose "found exe name $exe => is valid $Valid"

                if ($Valid) {
                    [void]$exeList.Add($exe)

                }
            }
        }

    }
    $exeListCount = $exeList.Count
    Write-Verbose "$exeListCount executables found"
    [pscustomobject]$resObj = [pscustomobject]@{
        CategoryName = "$Category"
        ProgramList = $exeList
    }

    if ($Json) {
        $ret = $resObj | ConvertTo-Json
        return $ret
    }
    return $resObj
}


<#
    Parsed some temporary file...
#>
function Get-CategoriesListFromFiles {
    [CmdletBinding(SupportsShouldProcess)]
    param()

    [System.Collections.Generic.List[string]]$CatList = [System.Collections.Generic.List[string]]::new()

    $files = Get-ChildItem -Path $Script:DataDirectory -Filter "*.list" -File

    foreach ($file in $files) {
        $fi = Get-Item -Path "$($file.Fullname)" -EA Stop
        $bname = $fi.BaseName
        $bname = $bname.ToLower()
        [int]$i = $bname[0]
        $newint = $i - 32
        [char]$c = $newint

        $resStr = ''
        $index = 0

        $bname.ToCharArray() | % {
            if ($index -eq 0) {
                $resStr += $c
                $index++
            } else {
                $resStr += $_
                $index++
            }
        }

        [void]$CatList.Add($resStr)
    }

    $CatListCount = $CatList.Count

    $CatList
}



function Invoke-GenerateAllCategoriesMarkdownFiles {
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(Mandatory = $false)]
        [switch]$ReadDataFiles
    )

    [System.Collections.Generic.List[pscustomobject]]$FullList = [System.Collections.Generic.List[pscustomobject]]::new()
    $CategoryCount = $Script:Categories.Count
    $UseDataFiles = if ($ReadDataFiles) { $true } elseif ($CategoryCount -eq 0) { $True } else { $False }
    if ($UseDataFiles) {
        Write-Verbose "Using data files"
        $cats = Get-CategoriesListFromFiles
    } else {
        Write-Verbose "Using hard-coded category list"
        $cats = $Script:Categories
    }

    Write-Verbose "getting categories list => found $($cats.Count) categories"

    foreach ($cat in $cats) {
        Write-CategoryMarkDownFile $cat
        $file = $cat + '.md'
        Write-Host "Generating $file..."
    }
}



function Invoke-GenerateDocumentationData {
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(Mandatory = $false)]
        [switch]$ReadDataFiles,
        [Parameter(Mandatory = $false, HelpMessage = 'Generate the data as Json, else its a pscustomobject')]
        [switch]$Json
    )

    [System.Collections.Generic.List[pscustomobject]]$FullList = [System.Collections.Generic.List[pscustomobject]]::new()
    $CategoryCount = $Script:Categories.Count
    $UseDataFiles = if ($ReadDataFiles) { $true } elseif ($CategoryCount -eq 0) { $True } else { $False }
    if ($UseDataFiles) {
        Write-Verbose "Using data files"
        $cats = Get-CategoriesListFromFiles
    } else {
        Write-Verbose "Using hard-coded category list"
        $cats = $Script:Categories
    }

    Write-Verbose "getting categories list => found $($cats.Count) categories"

    foreach ($cat in $cats) {
        $psobj = Get-ExecutableNamesFromListFiles $cat
        [void]$FullList.Add($psobj)
        Write-Verbose "category `"$cat`" => found $($psobj.ProgramList.Count) excutables for $cat"
    }

    [pscustomobject]$readme = [pscustomobject]@{
        Id = "Documentation"
        CategoryList = $FullList
    }

    if ($Json) {
        $ret = $readme | ConvertTo-Json -Depth 5
        return $ret
    }
    return $readme
}



function Export-GeneratedDocumentationData {
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(Position = 0, Mandatory = $true, HelpMessage = 'Generate the data as Json, else its a pscustomobject')]
        [ValidateNotNullOrEmpty()]
        [string]$Path = "$Script:DocumentationDataJsonPath"

    )

    Invoke-GenerateDocumentationData -Json | Set-Content -Path $Path -Encoding UTF8

    Write-Host "Written $Path" -f DarkCyan
}

function Import-GeneratedDocumentationData {
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(Position = 0, Mandatory = $false, HelpMessage = 'Generate the data as Json, else its a pscustomobject')]
        [ValidateNotNullOrEmpty()]
        [string]$Path = "$Script:DocumentationDataJsonPath",
        [Parameter(Mandatory = $false, HelpMessage = 'Generate the data as Json, else its a pscustomobject')]
        [switch]$Json
    )

    $JsonData = Get-Content -Path $Path -Encoding UTF8
    $RawData = $JsonData | ConvertFrom-Json -Depth 5

    if ($Json) {
        return $JsonData
    }
    return $RawData

}


function Invoke-GenerateTodoList {
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(Mandatory = $false, HelpMessage = 'Directory containing .list files')]
        [switch]$StdOut
    )

    [string]$Path = "$Script:DocumentationTodoListPath"

    $RawData = Import-GeneratedDocumentationData
    $TodoFileContent = "# DOCUMENTATION TODO LIST`n"
    $CatListString = "## List of Categories (completed)`n"
    foreach ($cat in $RawData.CategoryList) {
        $name = $cat.CategoryName
        $CatListString += " - [ ] {0}`n" -f $name
    }

    $TodoFileContent += "`n$CatListString"

    $TodoFileContent += "`n## Executable Documentation Completion List`n"

    foreach ($cat in $RawData.CategoryList) {
        $SectionString = ''
        $name = $cat.CategoryName
        $exelist = $cat.ProgramList

        $SectionString += "`n### {0}`n`n" -f $name

        $spaces2 = [string]::new(' ', 2)
        $spaces5 = [string]::new(' ', 5)

        foreach ($exe in $exelist) {
            $exeTodo = "{0}- {1}`n{2}- [ ] Overview`n{2}- [ ] Syntax`n{2}- [ ] Examples`n" -f $spaces2, $exe, $spaces5
            $SectionString += $exeTodo
        }
        $TodoFileContent += $SectionString
    }

    if ($StdOut) {
        Write-Output "$TodoFileContent"

    } else {
        New-Item -Path "$Path" -ItemType File -Value "$TodoFileContent" -Force | Out-Null
        Write-Host "NewTODO List Created in $Path" -f DarkGreen
    }
}



function Test-NewHardCodedCategoryList {
    [CmdletBinding(SupportsShouldProcess)]
    param()

    [System.Collections.Generic.List[string]]$exeList2 = @()
    [void]$exeList2.Add('adpcmencode3.exe')
    [void]$exeList2.Add('aitstatic.exe')
    [void]$exeList2.Add('betest.exe')
    [void]$exeList2.Add('cameraprofiletool.exe')
    [void]$exeList2.Add('ComparePackage.exe')
    [void]$exeList2.Add('computerhardwareids.exe')
    [void]$exeList2.Add('convert-moftoprovider.exe')
    [void]$exeList2.Add('extidgen.exe')
    [void]$exeList2.Add('filetypeverifier.exe')
    [void]$exeList2.Add('StoreUploader.exe')
    [void]$exeList2.Add('xpsanalyzer.exe')
    [void]$exeList2.Add('xpsconverter.exe')
    [void]$exeList2.Add('wmimofck.exe')

    [pscustomobject]$o1 = [pscustomobject]@{
        CategoryName = "GenericList"
        ProgramList = $exeList2
    }

    $test1 = $o1 | ConvertTo-Json


    [System.Collections.Generic.List[string]]$exeList = [System.Collections.Generic.List[string]]::new()
    [void]$exeList.Add('adpcmencode3.exe')
    [void]$exeList.Add('aitstatic.exe')
    [void]$exeList.Add('betest.exe')
    [void]$exeList.Add('cameraprofiletool.exe')
    [void]$exeList.Add('ComparePackage.exe')
    [void]$exeList.Add('computerhardwareids.exe')
    [void]$exeList.Add('convert-moftoprovider.exe')
    [void]$exeList.Add('extidgen.exe')
    [void]$exeList.Add('filetypeverifier.exe')
    [void]$exeList.Add('StoreUploader.exe')
    [void]$exeList.Add('xpsanalyzer.exe')
    [void]$exeList.Add('xpsconverter.exe')
    [void]$exeList.Add('wmimofck.exe')
    [pscustomobject]$o2 = [pscustomobject]@{
        CategoryName = "ArrayList"
        ProgramList = $exeList
    }

    $test2 = $o2 | ConvertTo-Json

    Write-Host "$test1" -f DarkRed
    Write-Host "$test2" -f DarkRed

}


