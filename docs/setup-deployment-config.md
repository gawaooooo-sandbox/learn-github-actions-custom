# setup-deployment-config

<!-- actdocs start -->

## Description

This action sets up the deployment configuration for the project.
Set build environments using the `build-environments` input.
Build environments are set in the format `KEY=VALUE`.
For example, `BASE_URL=http://example.com`.

The input `build-environments` is a JSON array of build environments.
Set the S3 sync command using the `s3-sync-command` input.
The S3 sync command is the command to sync files to the S3 bucket.
For example, `./dist s3://my-bucket --delete`.

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| build-environments | <pre>Required input to set the build environments.<br>Build environments in json array (e.g., ["BASE_URL=http://example.com", "SERVICE=app"])</pre> | `[]` | yes |
| s3-sync-command | <pre>"The command to sync files to the S3 bucket."<br>e.g. "./dist s3://my-bucket --delete"</pre> | n/a | yes |

## Outputs

| Name | Description |
| :--- | :---------- |
| build-environments | <pre>"The build environments for the project."</pre> |
| s3-sync-command | <pre>"The command to sync files to the S3 bucket."</pre> |

<!-- actdocs end -->


