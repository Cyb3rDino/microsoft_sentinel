$RessourceGroup = "Deplyoment_Test"

New-AzResourceGroupDeployment -ResourceGroupName $RessourceGroup -TemplateFile azuredeploy.bicep