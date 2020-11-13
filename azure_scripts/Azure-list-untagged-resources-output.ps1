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
