#Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full"
#https://learn.microsoft.com/en-us/dotnet/framework/migration-guide/versions-and-dependencies
#https://learn.microsoft.com/en-us/dotnet/framework/migration-guide/how-to-determine-which-versions-are-installed

$dotnetInfo = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full"
$version = "$($dotnetInfo.Version)"
$release = "$($dotnetInfo.Release)"
$min_version=$args[0]
#echo current: $version 
#echo $min_version
#$dotnetversion=$version
$dotnetversion=$release

Write-Host dotnetversion = $dotnetversion

If($dotnetversion -gt $min_version)
{
    Write-Host Current DOT Net Framework version is $version
}
Else
{
   #Write-Host DOT Net Framework having Lower Version
   throw "Error Message: DOT Net Framework having Lower Version"

}
