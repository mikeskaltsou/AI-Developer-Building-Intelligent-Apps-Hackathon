# Set variables for resource group, server name, and database name
$resourceGroupName="ai-dev-hackathon-nl-to-sql"
$serverName="ai-dev-hackathon-nl-to-sql-sqlserver"
$databaseName="AdventureWorks"
$location='eastus'
$adminUsername='sqladmin'
$adminPassword='P@ssw0rd1234'
$bacpacFileUri="https://dbbackupadventureworks.blob.core.windows.net/dbbackup/advdb.bacpac"
$storageKey="""?sp=r&st=2024-08-22T14:05:18Z&se=2027-12-30T23:05:18Z&spr=https&sv=2022-11-02&sr=b&sig=vlaCN6vww4ajZbMm4FvMERLpXZEP4pIfWPSacspWCSI%3D"""

# Create a resource group
az group create --name $resourceGroupName --location $location

# Create a SQL server
az sql server create --name $serverName --resource-group $resourceGroupName --location $location --admin-user $adminUsername --admin-password $adminPassword

# Create a SQL database
az sql db create --name $databaseName --resource-group $resourceGroupName --server $serverName --edition "Standard" --service-objective "S2" --family None --capacity 50 --max-size 20GB --backup-storage-redundancy "Local"

# Create a firewall rule to allow access to the SQL server
az sql server firewall-rule create --resource-group $resourceGroupName --server $serverName --name "AllowAll" --start-ip-address "0.0.0.0" --end-ip-address "255.255.255.255"

az sql db import --name $databaseName --resource-group $resourceGroupName --admin-user $adminUsername --admin-password $adminPassword --server $serverName  --storage-key-type SharedAccessKey --storage-uri $bacpacFileUri --storage-key $storageKey

