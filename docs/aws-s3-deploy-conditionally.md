---
title: aws-s3-deploy-conditionally
layout: default
---

# aws-s3-deploy-conditionally
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

[Link button](https://just-the-docs.com){: .btn }

{% raw %}

<!-- actdocs start -->

## Description

This action deploys files to an AWS S3 bucket conditionally.
It uses the `aws-actions/configure-aws-credentials` action to configure AWS credentials.

In the `aws-role-arn` input, provide the ARN of your AWS Role.
Ensure to manage sensitive values such as ARN and keys securely, preferably using GitHub Secrets.

To perform deployment, the action executes a sync command to the specified S3 bucket, controlled by the `enable-aws-deploy` input parameter.

## Usage Example

```yml
steps:
  - name: Deploy to S3
    uses: composite/aws-s3-deploy-conditionally@main
    with:
      aws-role-arn: <your-aws-role-arn> # Replace with your actual AWS Role ARN from GitHub Secrets
      environment: prod
      s3-sync-command: ./dist s3://my-bucket --delete
```

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| aws-role-arn | Specify the ARN of your AWS Role for this action.<br>It is recommended to manage the ARN value securely using GitHub Secrets.<br>Reference the secret in your workflow like `aws-role-arn: <your-secret-name>`. | n/a | yes |
| environment | The environment to deploy to. | n/a | yes |
| s3-sync-command | Specify the command to be executed after `aws s3 sync`.<br>This command should include the local path of the files to be deployed and the target S3 bucket path, as well as any necessary flags.<br>For example: `./dist s3://your-bucket-name/path --delete --exclude "tmp/*"` | n/a | yes |
| aws-region | Specify the AWS region where your S3 bucket is located.<br>This is necessary for the action to correctly interface with the correct regional endpoint of AWS S3.<br>For example, use `us-east-1` for the North Virginia region or `eu-central-1` for the Frankfurt region.<br>If not specified, the default region `ap-northeast-1` (Tokyo) is used. | `ap-northeast-1` | no |
| enable-aws-deploy | Whether to deploy to AWS S3. | `true` | no |

## Outputs

| Name | Description |
| :--- | :---------- |
| s3-deploy-command | The command to sync files to the S3 bucket. |

<!-- actdocs end -->

{% endraw %}
