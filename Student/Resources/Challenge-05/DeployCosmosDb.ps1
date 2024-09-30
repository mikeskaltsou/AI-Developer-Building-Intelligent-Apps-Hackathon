
$resourceGroup="AiRagCosmosDBNoSQL"
$location="eastus"
$cosmosDbAccountName="airagcosmosdbnosqlaccount2"
$cosmosDbDatabaseName="airagcosmosdbnosqldbname"
$cosmosDbContainer="airagcosmosdbnosqlcontainer"

# Log in to Azure
az login

# Create a resource group
az group create --name $resourceGroup --location $location

# Create a Cosmos DB account
az cosmosdb create --name $cosmosDbAccountName --resource-group $resourceGroup --locations regionName=$location

# Create a database
az cosmosdb sql database create --account-name $cosmosDbAccountName --resource-group $resourceGroup --name $cosmosDbDatabaseName

# Create a container
az cosmosdb sql container create --account-name $cosmosDbAccountName --resource-group $resourceGroup --database-name $cosmosDbDatabaseName --name $cosmosDbContainer --partition-key-path /id

az cosmosdb update --resource-group $resourceGroup --name $cosmosDbAccountName  --capabilities EnableNoSQLVectorSearch