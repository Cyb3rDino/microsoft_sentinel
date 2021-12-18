param laws_name string
param sku string = 'PerGB2018'
param location string = resourceGroup().location
param retentionInDays int = 31
param resourceTags object = {
  Env: 'Demo'
  Solution: 'Sentinel'
}
var azureSentinel = {
  name: 'SecurityInsights(${laws_name})'
  galleryName: 'SecurityInsights'
}

resource workspace_ressource 'Microsoft.OperationalInsights/workspaces@2020-10-01' = {
  name: laws_name
  location: location
  properties: {
    sku: {
      name: sku
    }
    retentionInDays: retentionInDays
  }

}

resource solutionAzureSentinel 'Microsoft.OperationsManagement/solutions@2015-11-01-preview' = {
  name: azureSentinel.name
  location: location
  tags: resourceTags
  dependsOn:  [
    workspace_ressource
  ]
  properties: {
    workspaceResourceId: workspace_ressource.id
  }
  plan: {
    name: azureSentinel.name
    product: 'OMSGallery/${azureSentinel.galleryName}'
    publisher: 'Microsoft'
    promotionCode: ''
  }
}
