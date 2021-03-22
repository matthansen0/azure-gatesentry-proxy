Invoke-WebRequest -URI "http://10.1.0.5:10786/home/certificate" -OutFile certificate.der

Import-Certificate -FilePath "certificate.der" -CertStoreLocation Cert:\LocalMachine\Root

$reg = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
Set-ItemProperty -Path $reg -Name ProxyServer -Value "10.1.0.5:10413"
Set-ItemProperty -Path $reg -Name ProxyEnable -Value 1