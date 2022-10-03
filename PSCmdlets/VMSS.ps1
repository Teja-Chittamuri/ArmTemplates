$resourceGroup = "demo-grp"
$location = "NorthEurope"
$vmssName = "App-VMSS"
$vmImage = "Win2016Datacenter"
$vnet = "demogrp-vnet"
$vmsize = "Standard_DS2_v2"
$subnetName = "SubnetA"
$publicIpAddressName = "APP-VMSS-IP"

# New-AzPublicIpAddress -ResourceGroupName $resourceGroup -AllocationMethod Static  -Location $location -Name $publicIpAddressName  -Sku Standard

# Remove-AzPublicIpAddress -Name $publicIpAddressName -ResourceGroupName $resourceGroup 



 New-AzVmss -ResourceGroupName $resourceGroup -VMScaleSetName $vmssName -InstanceCount 3 -ImageName $vmImage -Location $location -VirtualNetworkName $vnet -VmSize $vmsize -SubnetName $subnetName  -UpgradePolicyMode "Automatic" -PublicIpAddressName $publicIpAddressName -Credential (Get-Credential)
 
 