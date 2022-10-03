$resourceGroup ="demo-grp"
$location ="UK South"
$publicIpAddressName = "demo-public-ip"

New-AzPublicIpAddress -ResourceGroupName $resourceGroup -Name $publicIpAddressName -Location $location -AllocationMethod Dynamic