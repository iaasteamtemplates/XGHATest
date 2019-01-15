# xg-azure-aa
Deployment template to deploy Sophos XG Active/Active firewall to Azure

Deploying
=========

Note that configuration sync between the XG nodes can be done by using SFM, Sophos Central or SCFM. 
Please reach out to your sales or channel representative to learn more about these Sophos products.

1) Press the deployment button and enter your Azure credentials when prompted.

[![Deploy to Azure](https://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fsophos-iaas%2Fxg-azure-aa%2Fmaster%2Fha.json)

2) Take a look on the example values for template parameters in `mainTemplateParameters.json`.

**If invalid parameters are passed, the deployment will fail.**

Please note:
* The `adminPassword` has to be minimum 8 characters, **containing at least a lowercase letter, an uppercase letter, a number, and a special character.**

3) Deployment will start.

4) Wait until the deployment goes to state "Succeeded".

***

Connect to the VM instance
==========================

[https://full-dns-name:4444](https://full-dns-name:4444)

***

Useful Links
============

* [Authoring Azure Resource Manager templates](https://azure.microsoft.com/en-us/documentation/articles/resource-group-authoring-templates/)