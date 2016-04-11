$tsenv = New-Object -COMObject Microsoft.SMS.TSEnvironment # This creates the object
$tsenv.GetVariables() | ForEach-Object { Write-Host "$_ = $($tsenv.Value($_))" } > temp.txt # List all the variables and values and save to temp.txt in the current path
cmtrace temp.txt # Open the file in CMTrace
