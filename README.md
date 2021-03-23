# GateSentry Proxy on Azure

This repository contains automation to deploy [GatesEntry Proxy](https://gatesentryfilter.abdullahirfan.com/) on Azure. Troubleshooting environments which use proxies can be difficult, and the goal of this project is to allow you to deploy a "proxy lab" environment to test any applications or configurations with the use of a proxy server.

## Deployment

[//]: # (The short URLs below are to show impact of this solution by tracking number of deployments. You can use the direct link if you wish - https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthansen0%2Fazure-gatesentry-proxy%2Fmain%2Finstall%2Fazuredeploy.json)

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fmatthansen0%2Fazure-gatesentry-proxy%2Fmain%2Finstall%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fmatthansen0%2Fazure-gatesentry-proxy%2Fmain%2Finstall%2Fazuredeploy.json)

This template will deploy the following components:

- Ubuntu 18.04 VM with GatesEntry Proxy Installed
- Windows 2016 Server with a configured Proxy.

You can login to the admin portal of GateSentry by going to ``http://10.1.0.5:10786`` and using the default credentials of ``"admin/admin"``.

If any applications need to be configured to use the proxy, set them to use ``10.1.0.5:10413``.

After the deployment is complete, you can RDP into the Windows machine, which will be fully configured to use the proxy.

## Contributing

PRs and issues welcome!
