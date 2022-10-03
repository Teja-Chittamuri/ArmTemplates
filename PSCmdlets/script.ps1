# Connect-AzAccount

$resourceGroup = "demo-grp"
$network = "demo-grp-Vnet"
$location = "UK South"
$subNetName = "SubnetA"
$subnetAddressPrefix = "10.1.0.0/24"

# To create a VNet 
# New-AzVirtualNetwork -Name "demotestgrp-Vnet" -ResourceGroupName "demo-grp" -Location "Uk South" -AddressPrefix "192.168.0.0/16"

# Defining a Var to store the Result of Vnet
# $Vnet = Get-AzVirtualNetwork -Name "demotestgrp-Vnet" -ResourceGroupName "demo-grp" 



# Displaying the location on the terminals
# Write-Host $Vnet.Location

# Write-Host $Vnet.AddressSpace.AddressPrefixes

# Removing existing VNet

# Remove-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup

# New-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup -Location $location -AddressPrefix "192.168.0.0/16"

# Write-Output $virtualNetwork.Location
# Write-Output $virtualNetwork.AddressSpace.AddressPrefixes

 $virtualNetwork = Get-AzVirtualNetwork  -Name $network -ResourceGroupName $resourceGroup

Add-AzVirtualNetworkSubnetConfig -Name $subNetName -VirtualNetwork $virtualNetwork -AddressPrefix $subnetAddressPrefix

Set-AzVirtualNetwork   -VirtualNetwork $virtualNetwork

