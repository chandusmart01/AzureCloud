targetScope = 'subscription'

var rgname = 'devgroup'
resource resourcegroupname 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgname
  location: 'eastus'
}


module storageModule 'module.bicep' ={
  name: 'storagModule'
  scope: resourceGroup(resourcegroupname.name)
  params: {
    'storageAccountName': 'devabcdstorage34i98u'
  }
}
