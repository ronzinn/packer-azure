if exist a:\unattend.xml (
  rem unattend file exists running with unattend file
  c:\windows\system32\sysprep\sysprep.exe /generalize /oobe /shutdown /unattend:a:\unattend.xml
  rem Sysprep with unattend file completed
) else (
  rem Cannot find unattend file
  del /F \Windows\System32\Sysprep\unattend.xml
  c:\windows\system32\sysprep\sysprep.exe /generalize /oobe /shutdown /quiet
  rem quiet shutdown completed
)
