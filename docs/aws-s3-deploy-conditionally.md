# aws-s3-deploy-conditionally

<!-- actdocs start -->

## Description

This action deploys files to an AWS S3 bucket conditionally.
The action uses the `aws-actions/configure-aws-credentials` action to configure AWS credentials.

```yml
steps:
  - name: Deployt to S3
    uses: composite/aws-s3-deploy-conditionally@main
    with:
      aws-role-arn: '${{ secrets.AWS_ROLE_ARN }}' # For the 'aws-role-arn', use the ARN of your AWS Role. You should use GitHub Secrets to manage sensitive values.
      environment: prod
      s3-sync-command: ./dist s3://my-bucket --delete
```

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| aws-role-arn | <pre>Use the 'aws-role-arn: ${{ secrets.AWS_ROLE_ARN }}' pattern with your actual AWS Role ARN.</pre> | n/a | yes |
| environment | <pre>"The environment to deploy to."</pre> | n/a | yes |
| s3-sync-command | <pre>"The command to sync files to the S3 bucket."<br>e.g. "./dist s3://my-bucket --delete"</pre> | n/a | yes |
| aws-region | <pre>"The AWS region where the S3 bucket is located."</pre> | `ap-northeast-1` | no |
| enable-aws-deploy | <pre>"Whether to deploy to AWS S3."</pre> | `true` | no |

## Outputs

| Name | Description |
| :--- | :---------- |
| s3-deploy-command | <pre>"The command to sync files to the S3 bucket."</pre> |

<!-- actdocs end -->


