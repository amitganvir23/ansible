#Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full"
#https://learn.microsoft.com/en-us/dotnet/framework/migration-guide/versions-and-dependencies

$dotnetInfo = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full"
$version = "$($dotnetInfo.Version)"
$release = "$($dotnetInfo.Release)"
$min_version1=$args[0]
$min_version2=$args[1]
#echo current: $version 
#echo $min_version
#$dotnetversion=$version
$dotnetversion=$release

Write-Host dotnetversion = $dotnetversion

If($dotnetversion -eq $min_version1)
{
    Write-Host Current DOT Net Framework version is $version
} ElseIf($dotnetversion -eq $min_version2)
{
    Write-Host Current DOT Net Framework version is $version
}
Else
{
   #Write-Host DOT Net Framework having Lower Version
   #throw "Error Message: DOT Net Framework having Lower Version"
   throw "Error Message: DOT Net Framework NOT having 4.6 Version"

}
