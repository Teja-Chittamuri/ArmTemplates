$resourceGroup = "demo-grp"
$location = "NorthEurope"
 $appServicePlan = "demo-app-plan"
 $appName = "Telecomwebapp0121"

# To create a APPservice Plan

# New-AzAppServicePlan  -ResourceGroupName $resourceGroup -Name $appServicePlan  -Location $location -Tier Standard 

New-AzWebApp -ResourceGroupName $resourceGroup -Name $appName -Location $location -AppServicePlan $appServicePlan 