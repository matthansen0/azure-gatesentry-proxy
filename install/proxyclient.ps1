#Install Certificate and Set Proxy
Invoke-WebRequest -URI "http://10.1.0.5:10786/home/certificate" -OutFile certificate.der
Import-Certificate -FilePath "certificate.der" -CertStoreLocation Cert:\LocalMachine\Root

<#
$reg = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
Set-ItemProperty -Path $reg -Name ProxyServer -Value "10.1.0.5:10413"
Set-ItemProperty -Path $reg -Name ProxyEnable -Value 1

#Output Logging
$settings = Get-ItemProperty -Path $reg
$settings.ProxyServer | Out-File -FilePath C:\proxyscriptlogging.txt
$settings.ProxyEnable | Out-File -Append -FilePath C:\proxyscriptlogging.txt

#>

netsh winhttp set proxy 10.1.0.5:10413

function Set-Proxy($proxy, $bypassUrls){
    $proxyBytes = [system.Text.Encoding]::ASCII.GetBytes($proxy)
    $bypassBytes = [system.Text.Encoding]::ASCII.GetBytes($bypassUrls)
    $defaultConnectionSettings = [byte[]]@(@(70,0,0,0,0,0,0,0,11,0,0,0,$proxyBytes.Length,0,0,0)+$proxyBytes+@($bypassBytes.Length,0,0,0)+$bypassBytes+ @(1..36 | % {0}))
    $registryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
    Set-ItemProperty -Path $registryPath -Name ProxyServer -Value $proxy
    Set-ItemProperty -Path $registryPath -Name ProxyEnable -Value 1
    Set-ItemProperty -Path "$registryPath\Connections" -Name DefaultConnectionSettings -Value $defaultConnectionSettings
    netsh winhttp set proxy $proxy bypass-list=$bypassUrls
}
Set-Proxy "10.1.0.5:10413" "localhost"