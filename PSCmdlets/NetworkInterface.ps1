$resourceGroup = "demo-grp"
$network = "demogrp-vnet"
$subNetName =  "SubnetA"
$location = "Central US"
$networkInterfaceName = "app-interface"
$ipConfigName = "app-ipconfig"

$virtualNetwork = Get-AzVirtualNetwork -Name $network -ResourceGroupName $resourceGroup

$subnet = Get-AzVirtualNetworkSubnetConfig -VirtualNetwork $virtualNetwork -Name $subNetName 

New-AzNetworkInterface -Name $networkInterfaceName -ResourceGroupName $resourceGroup -Location $location -SubnetId $subnet.Id -IpConfigurationName $ipConfigName