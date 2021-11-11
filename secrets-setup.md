# https://docs.microsoft.com/en-us/azure/container-instances/container-instances-github-action#configure-github-workflow

$resourcegroup = "openhack8ep4f6r5rg"
# get the id of the resource group
$groupId=$(az group show --name $resourcegroup --query id --output tsv)
# create the service credential scoped to the resource group
az ad sp create-for-rbac --scope $groupId --role Contributor --sdk-auth

#output to be captured into AZURE_CREDENTIAL github repo secret
{
  "clientId": "455964b7-c007-46e7-9e24-cfe3edxxxxx",
  "clientSecret": "o0i-NPbFGHuaCFjal2B0pwmPQ2S.xxxxx",
  "subscriptionId": "1e1a664e-0f08-4de0-xxxx-116fc5aec1a0",
  "tenantId": "7645b935-3a64-488d-a29b-xxxe24862ebe0",
  "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
  "resourceManagerEndpointUrl": "https://management.azure.com/",
  "activeDirectoryGraphResourceId": "https://graph.windows.net/",
  "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
  "galleryEndpointUrl": "https://gallery.azure.com/",
  "managementEndpointUrl": "https://management.core.windows.net/"
}