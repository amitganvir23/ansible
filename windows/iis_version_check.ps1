$iisInfo = Get-ItemProperty HKLM:\SOFTWARE\Microsoft\InetStp\
$version = [decimal]"$($iisInfo.MajorVersion).$($iisInfo.MinorVersion)"
echo $version
$iisversion=$version

Write-Host iisversion = $iisversion
If($iisversion -like '*IIS 6*'){
    Write-Host This server uses IIS6
}

If($iisversion -like '*IIS 7*'){
    Write-Host This server uses IIS6
}

If($iisversion -like '*IIS 8*'){
    Write-Host This server uses IIS6
}

If(6 -gt '5.*'){
    Write-Host This server uses IIS-5 laterversion
}
