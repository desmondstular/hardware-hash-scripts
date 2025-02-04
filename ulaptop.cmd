@ECHO OFF
echo Enabling WinRM
PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command Enable-PSRemoting -SkipNetworkProfileCheck -Force
echo Gathering AutoPilot Hash
PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command %~dp0Get-WindowsAutoPilotInfo.ps1 -GroupTag W11_SINGLE_USER_LAPTOP -ComputerName $env:computername -OutputFile %~dp0compHash.csv -append
echo Done!
pause