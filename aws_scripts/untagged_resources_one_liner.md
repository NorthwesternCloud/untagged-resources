# Getting aws untaggted reasources 

## Quickstart

Make sure [jq](https://stedolan.github.io/jq/) and the [aws cli](https://aws.amazon.com/cli/) are installed. Using the `aws` tool's `resourcegrouptaggingapi` command, list all all resources and pipe them through `jq` and dump the `resourceARN` if a resource is missing a specific key (or anything else really).

```
aws --profile staging resourcegroupstaggingapi get-resources \
    --tags-per-page 500|jq '.[]|.[] | select(.Tags|all(.Key!="KEY_TO_SEARCH"))|.ResourceARN' 
```


## What's going here?

The aws commandline tool's  [resourcegroupstaggingapi](https://docs.aws.amazon.com/cli/latest/reference/resourcegroupstaggingapi/index.html) lists all resources and tags. The json output is then piped through [jq](https://stedolan.github.io/jq/download/) to get at the important bits. 
One can use jq to look for any set of tags missing a specific key. 

## Shape of data

```
[
{
  "ResourceARN": "arn:aws:apigateway:us-east-1::/restapis/wfqfjuq4d2/stages/latest",
  "Tags": [
    {
      "Key": "serverlessrepo:applicationId",
      "Value": "arn:aws:serverlessrepo:us-east-1:625046682746:applications/serverless-iiif"
    },
    {
      "Key": "serverlessrepo:semanticVersion",
      "Value": "2.0.1"
    }
  ]
}
...]
