# setup-deployment-config

<!-- actdocs start -->

## Description

This action sets up the deployment configuration for the project by configuring build environments and preparing the S3 sync command.
Use the `build-environments` input to set environment variables in the format `KEY=VALUE` separated by spaces (e.g., 'BASE_URL=http://example.com SERVICE=app').
Use the `s3-sync-command` input to specify the command for syncing files to an S3 bucket, including any necessary flags.

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| build-environments | <pre>Required input to set the build environments.<br>Specify as a space-separated string of key-value pairs (e.g., 'BASE_URL=http://example.com SERVICE=app').</pre> | n/a | yes |
| s3-sync-command | <pre>The command to sync files to the S3 bucket, formatted as a command line string.<br>Example: './dist s3://my-bucket --delete'</pre> | n/a | yes |

## Outputs

| Name | Description |
| :--- | :---------- |
| build-environments | <pre>The build environments for the project, returned as a string of key-value pairs.</pre> |
| s3-sync-command | <pre>The command used to sync files to the S3 bucket, formatted as a command line string.</pre> |

<!-- actdocs end -->


