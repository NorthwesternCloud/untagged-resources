


# Finding Untagged Resources Using CloudCheckr 
This guide will show you how to add tagging rules to CloudCheckr and then report on resources that violate those rules. This guide should work for CloudCheckr and CloucdCheckr CMx

As of Nov 17, 2020 only the following resource types are supported for un-tagged reporting:

 - AMI
-   DB Instance
-   EBS Snapshot
-   EBS Volume
-   EC2 Instance
-   Redshift Cluster
-   S3 Bucket

## Creating Tagging Rules

 1. Log into CloudCheckr and select your account. 
 2. From the left-hand menu browse to Cost -> Tagging -> Tagging Rules
 3. Select the "New Rule" button
 4. Add at least one rule by specifying a Tag Key and either a comma-separated list of Tag Values or an asterisk (*) to match any value. You can also check the "Allow Any Tag Value" box
 5. Optionally, add additional tags
 6. Optionally, further filter by region, resource type, and/or account. You can filter by resource type and account when reporting as well so you don't need to filter here unless your tag key is only applicable to a particular resource type.
 7. Enter a name for the rule
 8. Click Create Rule

For more information please see CloudCheckr's documentation: https://success.cloudcheckr.com/article/nvg4ccm1y8-tagging-rules
## On-Demand Reporting of Untagged Resources
 1. Log into CloudCheckr and select your account.
 2. From the left-hand menu browse to Cost -> Tagging -> Improperly Tagged Resources
 3. From the drop down filters choose which tagging rules, resources types, and/or accounts to report on
 4. Click Filter. You might not see results if you just created a tagging rule. There is some background processing that must occur before you see results. 
 
For more information please see CloudCheckr's documentation: https://success.cloudcheckr.com/article/xzfw05f62n-improperly-tagged-resources
 ## Enable Notifications for New Untagged Resources
 6. Browse to Accounts Settings -> Email Settings
     1. For CloudCheckr this is found at the bottom of the left hand menu
     2. For CloudCheckr CMx this is found in the 3-dot menu on the upper-right of the page
   2. Select the Daily Emails Tab
   3. Check the box for "Improperly Tagged Resources"
   4. Make sure you have an email set in the "Send emails to:" box at the top of the page OR specify a email on the Custom Email Setting for the rule

More information about all the email notifications can be found at https://success.cloudcheckr.com/article/llwgefwgdm-configuring-notifications-in-cloud-checkr
