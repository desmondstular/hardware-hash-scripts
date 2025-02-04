@ECHO OFF
echo Enabling WinRM
PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command Enable-PSRemoting -SkipNetworkProfileCheck -Force
echo Gathering AutoPilot Hash
PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command %~dp0Get-WindowsAutoPilotInfo.ps1 -GroupTag W11_SHARED_DESKTOP -ComputerName $env:computername -OutputFile %~dp0compHash.csv -append
echo Done!
pause                                                                                                                                                                                                                                                                    