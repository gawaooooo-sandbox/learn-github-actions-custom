---
title: setup-deployment-config
layout: default
---

# setup-deployment-config
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

{% raw %}

<!-- actdocs start -->

## Description

This action is essential for configuring deployment settings within your GitHub workflow.
It initializes necessary environment variables and an S3 sync command to effectively manage deployments to an AWS S3 bucket.

The `build-environments` input allows you to set a series of environment variables which are crucial for the build and deployment process, formatted as space-separated key-value pairs.
This setup enables subsequent steps or jobs in your GitHub Actions workflow to access these variables reliably, ensuring consistency across different environments.

The `s3-sync-command` input allows you to specify the exact command line string for synchronizing your project's files to an S3 bucket.
This capability is vital for ensuring that your deployment's state remains consistent with your current project build.

Here’s how you can use this action in your workflow:

## Usage Example

```yaml
steps:
  - name: Setup Deployment Config
    uses: ./composite/setup-deployment-config@v0 # This is the version of the action
    with:
      build-environments: >-
        BASE_URL="http://example.com"
        SERVICE="app:test"
        SPACE_SEPARATED="one two three"
      s3-sync-command: ./dist s3://my-bucket --delete --dryrun --exclude "*.log" --exclude "test/*"
```

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| s3-sync-command | Specifies the command to sync files to an S3 bucket.<br><br>Format it as a full command line string, e.g., `./dist s3://my-bucket --delete`. | n/a | yes |
| build-environments | Sets environment variables for the build process.<br><br>Provide a string of key-value pairs separated by spaces, e.g., `BASE_URL="http://example.com" SERVICE="app"`. | `` | no |

## Outputs

| Name | Description |
| :--- | :---------- |
| build-environments | Returns the set build environment variables as a string of key-value pairs. |
| s3-sync-command | Returns the formatted command used for syncing files to the S3 bucket. |

<!-- actdocs end -->

{% endraw %}
