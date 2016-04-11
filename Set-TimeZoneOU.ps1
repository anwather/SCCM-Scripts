#Initialise TSEnv
$tsENV = New-Object -ComObject Microsoft.SMS.TSEnvironment

$ipGateway = Get-WmiObject Win32_NetworkAdapterConfiguration | Where ipenabled -eq $true

switch ($ipGateway.DefaultIPGateway)
    {
    "xxx" {$tsEnv.Value("OSDTimeZone") = "Cen. Australia Standard Time"}
    "xxx" {$tsEnv.Value("OSDTimeZone") = "E. Australia Standard Time"}
    "xxx" {$tsEnv.Value("OSDTimeZone") = "AUS Eastern Standard Time"}
    "xxx" {$tsEnv.Value("OSDTimeZone") = "AUS Eastern Standard Time"}
    "xxx" {$tsEnv.Value("OSDTimeZone") = "W. Australia Standard Time"}
    "xxx" {$tsEnv.Value("OSDTimeZone") = "AUS Eastern Standard Time"}
    }

$tsENV.Value("OSDDomainOUName") = "LDAP://OU=Devices,DC=test,DC=com"