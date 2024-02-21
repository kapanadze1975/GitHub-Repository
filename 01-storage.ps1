## Sign IN to Azure
Connect-AzAccount
or
Set-AzContext SubscriptonName

## Create Resource Group
New-AzResourceGroup -Name myResourceGroup -Location "East US"

# Displey Resource Group
Get-AzResourceGroup
  ## Example 1: Get a resource group by name
  Get-AzResourceGroup -Name "myResourceGroup"
    ### LInk - https://learn.microsoft.com/en-us/powershell/module/az.resources/get-azresourcegroup?view=azps-11.3.0

# Deploy Template
$templateFile = "./arm-templatedemo.json"
New-AzResourceGroupDeployment -Name blanktemplate -ResourceGroupName myResourceGroup -TemplateFile $templateFile






## You tube tutorial 
https://www.youtube.com/watch?v=pHZDkJxd-wE&ab_channel=Abhishek.Veeramalla

## Create VNet Resoures
