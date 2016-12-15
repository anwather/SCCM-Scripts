 function TriggerSchedule
    {
        param($ComputerName)

        $scheduleID = "{00000000-0000-0000-0000-000000000021}"

        $session = New-PSSession -ComputerName $ComputerName

        $sb = {
        Invoke-WmiMethod -Namespace root\ccm -Class sms_client -Name TriggerSchedule $using:scheduleID 
        }

        Invoke-Command -Session $session -ScriptBlock $sb
    } 
