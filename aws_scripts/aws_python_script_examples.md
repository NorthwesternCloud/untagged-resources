# aws python scripts

## Overview
AWS makes it fairly easy to script the finding of and reporting on untagged resources and tagging resources using the [boto3 library](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/resourcegroupstaggingapi.html). There are other methods available as well such as iterating through important resources or generating reports based on missing tags. 

## Example helper functions and script

[awstags](https://github.com/NorthwesternCloud/awstags) is a set of helper functions and a stand alone script. The functions get all resources and transform them into a python dictionary of key, value pairs to make it easier to work with. The script `res2csv` pages through all results and dumps them to a csv file. This is useful if you want to get an overview of all resources in your account/profile. 

## Try it out

[awstags](https://github.com/NorthwesternCloud/awstags)

## Add more
- This is just an example. If there's more scripts, or you want to extend awstags, have at it! 

