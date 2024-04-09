# setup-environment-variables

<!-- actdocs start -->

## Description

This action sets up environment variables for the project.
Set environment variables using the `environments` input.
Environment variables are set in the format `KEY=VALUE`.
For example, `BASE_URL=http://example.com`.
The input `environments` is a JSON array of environment variables.

## Inputs

| Name         | Description                                                                                                                                               | Default | Required |
| :----------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------- | :------ | :------: |
| environments | <pre>Required input to set the environment variables.<br>Environment variables in json array (e.g., ["BASE_URL=http://example.com", "SERVICE=app"])</pre> | `[]`    |   yes    |

## Outputs

N/A

<!-- actdocs end -->
