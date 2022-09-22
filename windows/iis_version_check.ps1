$iisInfo = Get-ItemProperty HKLM:\SOFTWARE\Microsoft\InetStp\
$version = [decimal]"$($iisInfo.MajorVersion).$($iisInfo.MinorVersion)"
#echo $version
$iisversion=$version
#$iisversion=4
Write-Host iisversion = $iisversion
If($iisversion -like '*IIS 8*'){
    Write-Host This server uses IIS6
}

If($iisversion -gt 6){
    #Write-Host This server uses IIS-5 laterversion
    Write-Host 
}
Else
{
   Write-Host IIS is NOT above 5 version
   throw "Error Message"

}
