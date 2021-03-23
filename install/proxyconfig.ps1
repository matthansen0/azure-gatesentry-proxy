mkdir C:\proxyconfig
Invoke-WebRequest -URI "https://raw.githubusercontent.com/matthansen0/azure-gatesentry-proxy/main/install/proxyclient.ps1" -OutFile C:\proxyconfig\proxyclient.ps1

$RunOnceKey = "HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnce"
set-itemproperty $RunOnceKey "NextRun" ('C:\Windows\System32\WindowsPowerShell\v1.0\Powershell.exe -executionPolicy Unrestricted -File ' + "C:\proxyconfig\proxyclient.ps1")

shutdown -r -t 0