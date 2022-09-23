#Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\Instance Names\SQL"
$sqlInfo = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\Instance Names\SQL"
$version = "$($sqlInfo.MSSQLSERVER)"

$ver=$args[0]
$min_version1="MSSQL$ver"
$varb = $version.Split(".")[-2]
$sqlversion=$varb


Write-Host sqlversion = $sqlversion

If($sqlversion -ge $min_version1)
{
    Write-Host Current MSSQL version is $version
}
Else
{
    throw "Error Message: MSSQL NOT having required Version"

}
