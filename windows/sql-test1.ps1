#$sqlver=Invoke-Sqlcmd -ServerInstance "ServerName\InstanceName" -Query "SELECT SERVERPROPERTY('ProductVersion')"
#$sqlver[0]
cls
#Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\MSOLEDBSQL\CurrentVersion"

#Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\*"
#Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\Instance Names\SQL"
## OUTPUT: MSSQLSERVER  : MSSQL13.MSSQLSERVER

## working
#Invoke-SqlCmd -query "select @@version" -ServerInstance "localhost"

#--
#$inst = (get-itemproperty 'HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server').InstalledInstances
#foreach ($i in $inst)
#{
   #$p = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\Instance Names\SQL').$i
   #(Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\$p\Setup").Edition
   #(Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Microsoft SQL Server\$p\Setup").Version
#}
## OUTPUT: 13.3.6300.2
## Working
#Invoke-Sqlcmd -Query "SELECT @@VERSION;" -QueryTimeout 3

[reflection.assembly]::LoadWithPartialName("Microsoft.SqlServer.Smo") | out-null
$srv = New-Object "Microsoft.SqlServer.Management.Smo.Server" "."
$srv.Version
#$srv.EngineEdition

#Invoke-Sqlcmd -ServerInstance "ServerName\InstanceName" -Query "SELECT SERVERPROPERTY('ProductVersion') as ver" | Select -ExpandProperty ver
