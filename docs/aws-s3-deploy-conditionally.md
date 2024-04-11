# aws-s3-deploy-conditionally

<!-- actdocs start -->

## Description

This action deploys files to an AWS S3 bucket conditionally.
The action uses the `aws-actions/configure-aws-credentials` action to configure AWS credentials.

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| aws-role-arn | <pre>"The AWS IAM role ARN to assume."</pre> | n/a | yes |
| environment | <pre>"The environment to deploy to."</pre> | n/a | yes |
| s3-sync-command | <pre>"The command to sync files to the S3 bucket."<br>e.g. "./dist s3://my-bucket --delete"</pre> | n/a | yes |
| aws-region | <pre>"The AWS region where the S3 bucket is located."</pre> | `ap-northeast-1` | no |
| enable-aws-deploy | <pre>"Whether to deploy to AWS S3."</pre> | `true` | no |

## Outputs

| Name | Description |
| :--- | :---------- |
| s3-deploy-command | <pre>"The command to sync files to the S3 bucket."</pre> |

<!-- actdocs end -->


