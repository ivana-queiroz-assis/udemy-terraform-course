resource "aws_iam_user" "myUser" {
  name= "John"
}


resource "aws_iam_policy" "customPolicy" {
  name= "MyCustomPolicyTerraform"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "glue:SearchTables",
                "glue:GetCrawler",
                "glue:GetDataCatalogEncryptionSettings",
                "glue:BatchGetDevEndpoints",
                "glue:GetTableVersions",
                "glue:GetPartitions",
                "glue:GetMLTransform",
                "glue:GetWorkflowRunProperties",
                "glacier:ListParts",
                "glue:GetDevEndpoint",
                "glue:GetSecurityConfiguration",
                "glue:GetResourcePolicy",
                "glue:GetTrigger",
                "glue:GetUserDefinedFunction",
                "glue:GetJobRun",
                "glue:GetUserDefinedFunctions",
                "glue:GetClassifier",
                "glue:GetJobs",
                "glue:GetTables",
                "glue:GetTriggers",
                "glacier:ListTagsForVault",
                "glue:GetWorkflowRun",
                "glue:GetPartition",
                "glue:GetDevEndpoints",
                "glue:BatchGetWorkflows",
                "glacier:ListMultipartUploads",
                "glue:BatchGetJobs",
                "glacier:ListVaults",
                "glue:GetJob",
                "glue:GetWorkflow",
                "glue:GetConnections",
                "glue:GetCrawlers",
                "glue:GetClassifiers",
                "glue:DeleteTableVersion",
                "glue:GetCatalogImportStatus",
                "glacier:ListJobs",
                "glue:GetTableVersion",
                "glue:GetConnection",
                "glue:GetJobBookmark",
                "glue:BatchGetPartition",
                "glue:GetSecurityConfigurations",
                "glue:GetDatabases",
                "glue:GetTags",
                "glue:GetTable",
                "glue:GetDatabase",
                "glue:GetMLTaskRun",
                "glue:GetDataflowGraph",
                "glue:BatchGetCrawlers",
                "glue:BatchGetTriggers",
                "glue:BatchDeleteTableVersion",
                "glue:GetWorkflowRuns",
                "glue:GetPlan",
                "glue:GetCrawlerMetrics",
                "glacier:ListProvisionedCapacity",
                "glue:GetJobRuns"
            ],
            "Resource": "*"
        }
    ]
}
  EOF
}


resource "aws_iam_policy_attachment" "policyBind" {
  name= "Policy Bind"
  users= ["${aws_iam_user.myUser.name}"]
  policy_arn="${aws_iam_policy.customPolicy.arn}"

  
}
