Connect-AzureRmAccount
Get-AzureRmSubscription
Get-AzureRmResourceGroup

New-AzureRmResourceGroup -Name prod -Location 'eastus'


New-AzureRmResourceGroupDeployment -Name testVNETDeploy -ResourceGroupName prod -TemplateFile C:\projects\Azure\azure_templates\VNET\101-vnet-two-subnets\azuredeploy.json -TemplateParameterFile C:\projects\Azure\azure_templates\VNET\101-vnet-two-subnets\azuredeploy.parameters.json


Get-AzureRmResource -ResourceGroupName prod


############################################################################
Get-AzureRmResourceGroup | select resourcegroupname
$rg = Get-AzureRmResourceGroup | where resourcegroupname -like Group* | Remove-AzureRmResourceGroup
Get-AzureRmResource | Select-Object name,resourcegroupname
remove-azure

$PSVersionTable

Update-Module -Force

