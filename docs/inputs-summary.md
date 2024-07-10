---
title: inputs-summary
layout: default
---

# inputs-summary
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

{% raw %}

<!-- actdocs start -->

## Description

This action logs workflow inputs and generates a Markdown summary to visually organize the provided data.

## Usage Example
```yaml
steps:
  - name: Create Inputs Summary
    uses: composite/inputs-summary@v0 # This is the version of the action
    with:
      workflow-inputs: '{"build_target":"production","test_mode":"enabled"}'
```

In this example, workflow-inputs are set directly as a JSON string.
To dynamically pass inputs from another step, use the `toJSON` function in your workflow file.
This serialization method ensures that the JSON format is correctly handled and parsing errors are avoided.

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| workflow-inputs | <code>The inputs provided to the workflow.<br>Pass inputs context as a JSON string, or use `toJSON` function to serialize inputs in the workflow file.</code> | n/a | yes |

<!-- actdocs end -->

{% endraw %}

## 参考

-   [GitHub Actions Workflow 作成 Tips > Job Summaries の活用](https://engineers.ntt.com/entry/2022/12/21/095303)
