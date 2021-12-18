param connector_name string

param location string = resourceGroup().location

param logicapp_name string
param userAssignedIdentityName string



resource sentinelConnection 'Microsoft.Web/connections@2015-08-01-preview' = {
  name: connector_name
  location: location
  properties: {
    name: connector_name
      api: any({
      id: '/subscriptions/${subscription().subscriptionId}/providers/Microsoft.Web/locations/${resourceGroup().location}/managedApis/azuresentinel'
    })
  }
}

resource userAssignedIdentity 'Microsoft.ManagedIdentity/userAssignedIdentities@2018-11-30' = {
  name: userAssignedIdentityName
  location: resourceGroup().location
}

resource uaiAuthorization 'Microsoft.Authorization/roleAssignments@2020-04-01-preview' = {
  name: guid(resourceGroup().id)
  properties:{
    roleDefinitionId: '/subscriptions/${subscription().subscriptionId}/providers/Microsoft.Authorization/roleDefinitions/3e150937-b8fe-4cfb-8069-0eaf05ecd056' // Add Azure Sentinel Responder role to the UAI
    principalId: userAssignedIdentity.properties.principalId
    principalType: 'ServicePrincipal'
  }
}

resource logicApp 'Microsoft.Logic/workflows@2019-05-01' = {
  name: logicapp_name
  location: location
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    state: 'Enabled'
    parameters: {
      '$connections': {
        value: {
          azuresentinel: {
            connectionId: sentinelConnection.id
            connectionName: sentinelConnection.name
            connectionProperties: {
              authentication: {
                identity: userAssignedIdentity.id
                type: 'ManagedServiceIdentity'
              }
            }
            id: '/subscriptions/${subscription().subscriptionId}/providers/Microsoft.Web/locations/${resourceGroup().location}/managedApis/azuresentinel'
          }
        }
    }
    definition:{
      
    }
    }
  }

}
}
