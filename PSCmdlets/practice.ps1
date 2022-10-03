$resourceGroup = "demo-grp"
$location ="North Europe"
$VnetName = "demo-grp-vnet"
$subnetName = "SubnetA"
$addressPrefix = "10.1.0.0/16"
$subnetAddressPrefix = "10.1.0.0/24"
$networkInterfaceName = "demo-interface"
$ipConfigName = "demo-ip-config"
$publicIpAddressName ="demo-pubic-ip"
$NSGName = "demo-NSG"


# # To Create 
#  $Subnet = New-AzVirtualNetworkSubnetConfig -Name $subnetName -AddressPrefix $subnetAddressPrefix
#  $VirtualNetwork = New-AzVirtualNetwork -Name $VnetName -ResourceGroupName $resourceGroup -Location $location -AddressPrefix $addressPrefix -Subnet $Subnet

#  To Access

#  $GetVnet = Get-AzVirtualNetwork -Name $VnetName -ResourceGroupName $resourceGroup 
#  $GetSubnet = Get-AZVirtualNetworkSubnetConfig -VirtualNetwork $VirtualNetwork -Name $subnetName  



  # $NetworkInterface = New-AzNetworkInterface -Name $networkInterfaceName -ResourceGroupName $resourceGroup -Location $location -IpConfigurationName $ipConfigName -SubnetId $GetSubnet.Id

  # $PublicIp = New-AzPublicIpAddress -ResourceGroupName $resourceGroup -AllocationMethod Dynamic -Name $publicIpAddressName -Location $location -Sku Basic

#  $NSGRule1 = New-AzNetworkSecurityRuleConfig -Name Allow-RDP -Access Allow -Protocol Tcp -Priority 300 -Direction Inbound -SourcePortRange * -SourceAddressPrefix Internet -DestinationAddressPrefix 10.1.0.0/24 -DestinationPortRange 80

#  $NSGRule2 = New-AzNetworkSecurityRuleConfig -Name Allow-HTTP -Access Allow -Protocol Tcp -Priority 310  -Direction Inbound  -SourcePortRange * -SourceAddressPrefix Internet  -DestinationAddressPrefix 10.1.0.0/24 -DestinationPortRange 80


#  $NSG = New-AzNetworkSecurityGroup -Name $NSGName -ResourceGroupName $resourceGroup -Location $location -SecurityRules $NSGRule1 , $NSGRule2
