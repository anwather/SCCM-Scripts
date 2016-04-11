#Initialise TSEnv
$tsENV = New-Object -ComObject Microsoft.SMS.TSEnvironment
$obj = Get-WmiObject Win32_SystemEnclosure
$compname = "LT$($obj.SMBIOSAssetTag)"
$tsENV.Value("OSDComputerName") = "$compname"