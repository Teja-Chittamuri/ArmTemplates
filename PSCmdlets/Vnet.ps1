$resourceGroup = "demo-grp"
$network = "demogrp-vnet"
$location = "Central US"
$addressPrefix = "10.1.0.0/16"
$subnetName = "SubnetA"
$subnetAddressPrefix = "10.1.0.0/24"

# New-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup -Location $location -AddressPrefix $addressPrefix

# Remove-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup

# $virtualNetwork = Get-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup 

# # $virtualNetwork | Set-AzVirtualNetwork 


# $subnet = New-AzVirtualNetworkSubnetConfig -Name $subnetName -AddressPrefix $subnetAddressPrefix

#  New-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup -Location $location -AddressPrefix $addressPrefix -Subnet $subnet

$virtualNetwork = Get-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup