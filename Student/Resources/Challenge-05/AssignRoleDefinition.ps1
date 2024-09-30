$resourceGroup="AiRagCosmosDBNoSQL"
$cosmosDbAccountName="airagcosmosdbnosqlaccount2"
$principalId="<Add your prinipal is>"
$roleDefinitionId="00000000-0000-0000-0000-000000000002"

# Assign the role definition "Cosmos DB Built-in Data Reader" with id ""00000000-0000-0000-0000-000000000002"" to the principal
# Reference https://learn.microsoft.com/en-us/azure/cosmos-db/how-to-setup-rbac#built-in-role-definitions
az cosmosdb sql role assignment create --account-name $cosmosDbAccountName --resource-group $resourceGroup --scope "/" --principal-id $principalId --role-definition-id $roleDefinitionId 