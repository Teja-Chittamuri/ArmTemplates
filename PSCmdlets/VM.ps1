$resourceGroup = "demo-grp"
$location = "NorthEurope"
$VmName = "demovm01"
$vmsize = "Standard_DS2_v2"
$winImage = "Win2019Datacenter"
$NSGName ="demo-NSG"
$virtualNetworkName = "demogrp-vnet"
$subNetName = "SubnetA"
$VmPublicIP = "demo-public-ip"
$availabilitySetName = "demo-app-set"



$virtulMachine = New-AzVM -Name $vmName -ResourceGroupName $resourceGroup -Location $location -VirtualNetworkName $virtualNetworkName -SubnetName $subNetName -PublicIpAddressName $VmPublicIP  -SecurityGroupName $NSGName -Image $winImage -Size $vmsize -Credential (Get-Credential) -AvailabilitySetName $availabilitySetName