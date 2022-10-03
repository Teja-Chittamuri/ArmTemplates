$resourceGroup = "demo-grp"
$location = "NorthEurope"
$saName = "demostorage65380"

$saAccount = New-AzStorageAccount -ResourceGroupName $resourceGroup -Name $saName -SkuName Standard_LRS -Location $location -Kind StorageV2 -AccessTier Cool 
