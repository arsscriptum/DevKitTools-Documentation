


function ChangeReadme {
    [CmdletBinding(SupportsShouldProcess)]
    param()

    [string]$ToolsPath = "C:\Program Files (x86)\Windows Kits\10\bin\10.0.19041.0\x64"
    $Tools = Get-ChildItem -Path $ToolsPath -Filter "*.exe" | Sort-Object Name

    [System.Collections.ArrayList]$ErrList = [System.Collections.ArrayList]::new()
    $Tools = Get-ChildItem -Path $ToolsPath -Filter "*.exe" | Sort-Object Name
    [string]$ReadmePath = "D:\Dev\DevKitTools-Documentation\README.md"

    [string]$ReadmeBackupPath = "D:\Dev\DevKitTools-Documentation\README.bak"

    Copy-Item $ReadmePath $ReadmeBackupPath

    $c = Get-Content $ReadmePath -Raw -Encoding UTF8
    [uint32]$changesMade = 0

    foreach ($tool in $Tools) {
        $exeName = $tool.Name

        $ToReplace = '* `{0}`' -f $exeName
        $i = $c.IndexOf($ToReplace)
        if ($i -eq -1) {
            Write-Warning "Error did not find the executable $exeName in the content"
            [void]$ErrList.Add($exeName)
        } else {
            $changesMade++
            $linkUrl = '{0}' -f $exeName.ToLower().Replace('.exe', '')
            # Add to table of contents
            $ReplaceWith = '- [{0}](#{1})' -f $exeName, $linkUrl
            $c = $c.Replace($ToReplace, $ReplaceWith)
            Write-Host "processing $exeName"
        }



    }

    $ErrListCount = $ErrList.Count
    Write-Host "$changesMade modifications... $ErrListCount Errors"
    $ErrListCount

    # Write to file
    Set-Content -Path $ReadmePath -Value $c -Encoding UTF8
}


ChangeReadme
