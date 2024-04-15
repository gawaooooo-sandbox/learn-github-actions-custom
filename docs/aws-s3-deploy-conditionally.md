# aws-s3-deploy-conditionally

<!-- actdocs start -->

## Description

This action deploys files to an AWS S3 bucket conditionally.
It uses the 'aws-actions/configure-aws-credentials' action to configure AWS credentials.

In the 'aws-role-arn' input, provide the ARN of your AWS Role.
Ensure to manage sensitive values such as ARN and keys securely, preferably using GitHub Secrets.

To perform deployment, the action executes a sync command to the specified S3 bucket, controlled by the 'enable-aws-deploy' input parameter.

## Usage Example

```yml
steps:
  - name: Deployt to S3
    uses: composite/aws-s3-deploy-conditionally@main
    with:
      aws-role-arn: <your-aws-role-arn> # Replace with your actual AWS Role ARN from GitHub Secrets
      environment: prod
      s3-sync-command: ./dist s3://my-bucket --delete
```

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| aws-role-arn | <pre>Specify the ARN of your AWS Role for this action. It is recommended to manage the ARN value securely using GitHub Secrets. Reference the secret in your workflow like 'aws-role-arn: <your-secret-name>'.</pre> | n/a | yes |
| environment | <pre>"The environment to deploy to."</pre> | n/a | yes |
| s3-sync-command | <pre>"The command to sync files to the S3 bucket."<br>e.g. "./dist s3://my-bucket --delete"</pre> | n/a | yes |
| aws-region | <pre>"The AWS region where the S3 bucket is located."</pre> | `ap-northeast-1` | no |
| enable-aws-deploy | <pre>"Whether to deploy to AWS S3."</pre> | `true` | no |

## Outputs

| Name | Description |
| :--- | :---------- |
| s3-deploy-command | <pre>"The command to sync files to the S3 bucket."</pre> |

<!-- actdocs end -->


