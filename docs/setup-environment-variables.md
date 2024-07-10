---
title: setup-environment-variables
layout: default
---

# setup-environment-variables
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

{% raw %}

<!-- actdocs start -->

## Description

This action is a crucial tool within your GitHub workflow to dynamically configure environment variables.
By setting up these variables, it allows other actions and scripts within the workflow to operate under defined conditions,
enhancing the flexibility and security of your deployment processes.

The `environment-variables` input takes a space-separated string of key-value pairs which will be transformed into actual environment variables accessible in subsequent steps of the job.
This is particularly useful for passing dynamic configurations and sensitive data securely between jobs or steps without hard-coding them into your YAML files.

## Usage Example

```yaml
steps:
  - name: Setup Environment Variables
    uses: composite/setup-environment-variables@v0 # This is the version of the action
    with:
      environment-variables: >-
        TEST_URL="https://example.com"
        API_KEY="abcdef12345"
        SPACE_SEPARATED="one two three"
```

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| environment-variables | <code>Required input to dynamically set the environment variables for your workflow.<br>Input these as a space-separated string of key-value pairs, where each pair is enclosed in quotes and keys are linked to their values by an equals sign.<br>This format ensures that the variables can be parsed and set correctly within the workflow.<br>For example, provide inputs like 'TEST="abc" URL="http://example.com" SERVICE="app"' to seamlessly integrate these variables into your build and deployment processes.</code> | n/a | yes |

<!-- actdocs end -->

{% endraw %}
