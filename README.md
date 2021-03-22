# GateSentry Proxy on Azure

This repository contains automation to deploy [GateSentry Proxy](https://gatesentryfilter.abdullahirfan.com/) on Azure.

## Deployment

[//]: # (The short URLs below are to show impact of this solution by tracking number of deployments. You can use the direct link if you wish - https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthansen0%2Fazure-gatesentry-proxy%2Fmain%2Finstall%2Fazuredeploy.json)

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthansen0%2Fazure-gatesentry-proxy%2Fmain%2Finstall%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fmatthansen0%2Fazure-gatesentry-proxy%2Fmain%2Finstall%2Fazuredeploy.json)

This template will deploy the following components:

- Ubuntu 18.04 VM with GatesEntry Proxy Installed
- Windows 2016 Server with a configured Proxy.

You can login to the admin portal of GateSentry by going to ``http://IP-address-of-Linux-VM:10786`` and logging in using the default credentials of ``"admin/admin"``.

### Still in development

- Windows Server 2016 Client VM
- Azure Bastion Service used to connect to the servers

The automated install will download the certificate from GateSentry and install it in the trusted root store on the Windows VM, and then configure the proxy settings on the Windows VM).

## Contributing

PRs and issues welcome!
