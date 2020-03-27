rem remove optional WSUS server settings
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f

rem even harder, disable windows update service
rem sc config wuauserv start= disabled
rem net stop wuauserv
set logfile=C:\Windows\Temp\win-updates.log

if exist %logfile% (
  echo Show Windows Updates log file %logfile%
  dir %logfile%
  type %logfile%
  rem output of type command is not fully shown in packer/ssh session, so try PowerShell
  rem but it will hang if log file is about 22 KByte
  rem powershell -command "Get-Content %logfile%"
  echo End of Windows Updates log file %logfile%
)
