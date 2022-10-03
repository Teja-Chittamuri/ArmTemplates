$resourceGroup = "demo-grp"
$location = "NorthEurope"
$availabilitySetName = "demo-app-set"


# Remove-AzAvailabilitySet -ResourceGroupName $resourceGroup -Name $availabilitySetName

New-AzAvailabilitySet -ResourceGroupName $resourceGroup -Name $availabilitySetName  -Location $location -PlatformUpdateDomainCount 5 -PlatformFaultDomainCount 3 -Sku Aligned