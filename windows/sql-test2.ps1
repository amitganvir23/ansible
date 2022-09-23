#--
cls
#Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\Instance Names\SQL"

$sqlInfo = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\Instance Names\SQL"
$version = "$($sqlInfo.MSSQLSERVER)"
#$min_version1=$args[0]
$min_version1=MSSQL13
#echo current: $version

#$vara = $version.Substring(1, $text.lastIndexOf('.'))
$varb = $version.Split(".")[-2]
echo $varb
$sqlversion=$varb

#$sqlversion=$version

Write-Host sqlversion = $sqlversion

If($sqlversion -like $min_version1)
{
    Write-Host Current MSSQL version is $version
}
Else
{
   throw "Error Message: MSSQL NOT having required Version"
