
## Identifying and Reporting Untagged Resources in Azure using PowerShell script
[Dislay all resources currently without tags](https://github.com/NorthwesternCloud/untagged-resources/blob/main/azure_scripts/Azure-list-untagged-resources-display.ps1)  
```
Write-Host "List all resource where Tag value is not Set"
Write-Host "********************************************"

#Fetch all resource details in the current subscription
$resources = get-AzureRmResource
foreach ($resource in $resources) {
  $tagcount = (get-AzureRmResource | where-object {$_.Name -match $resource.Name}).Tags.count
  if ($tagcount -eq 0) {
    Write-Host "Resource Name - " $resource.Name
    Write-Host "Resource Type and RG Name : " $resource.resourcetype " & " $resource.resourcegroupname "`n"
  }
}
```
[Output all resources currently without tags to a file for review](https://github.com/NorthwesternCloud/untagged-resources/blob/main/azure_scripts/Azure-list-untagged-resources-output.ps1)  
```
Write-Output "List all resource where Tag value is not Set" |Tee-Object untagged.txt -Append
Write-Output "********************************************" |Tee-Object untagged.txt -Append

#Fetch all resource details in current subscription and output to untagged.txt
$resources = get-AzureRmResource
foreach ($resource in $resources) {
  $tagcount = (get-AzureRmResource | where-object {$_.Name -match $resource.Name}).Tags.count
  if ($tagcount -eq 0) {
    Write-Output "Resource Name - " $resource.Name |Tee-Object untagged.txt -Append
    Write-Output "Resource Type and RG Name : " $resource.resourcetype " & " $resource.resourcegroupname "`n" |Tee-Object untagged.txt -Append
  }
}
```
Tips:
* Run this using Azure Cloud Shell (https://shell.azure.com)

Limitation: 
* ***current subscription only***
* onscreen display and file output format slightly different
