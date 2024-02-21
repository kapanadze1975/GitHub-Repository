Install-Module Az  
Import-Module Az  
test david new new david axali
Ctrl + Shift + P  to open Azure Sing IN ..

Get-AzResourceGroup    - To list the resource groups in your subscription, use Get-AzResourceGroup.
Get-AzResourceGroup -Name exampleGroup     - To get one resource group, provide the name of the resource group.

Remove-AzResourceGroup -Name demoresource    - To remove resource Group

## Create an empty resource group
# - This command creates a resource group that has no resources. 
#   You can use the New-AzResource or New-AzResourceGroupDeployment 
#   cmdlets to add resources and deployments to this resource group.
New-AzResourceGroup -Name Demo -Location "East US"

## to Deploy ARM Templage PowerShell
New-AzResourceGroup -Name arm-vscode -Location eastus
New-AzResourceGroupDeployment -ResourceGroupName arm-vscode -TemplateFile ./arm-templatedemo.json -TemplateParameterFile ./arm-templatedemo.parameters.json

## Create Storage ARM Template
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
  "contentVersion": "1.0.0.0",
  "resources": [
    {
      "type": "Microsoft.Storage/storageAccounts",
      "apiVersion": "2021-04-01",
      "name": "mystorageaccount1234", // Change this to a unique name
      "location": "eastus", // Change the location if needed
      "sku": {
        "name": "Standard_LRS"
      },
      "kind": "StorageV2",
      "properties": {}
    }
  ]
}





## Clean up resources
Remove-AzResourceGroup -Name arm-vscode

## To deploy arm template
$templateFile="storage-account.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="blanktemplate-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile

## You tube tutorial 
https://www.youtube.com/watch?v=pHZDkJxd-wE&ab_channel=Abhishek.Veeramalla

## Create VNet Resoures
