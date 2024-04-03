# inputs-summary

<!-- actdocs start -->

## Description

This action creates a summary of the inputs provided to the workflow.

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| workflow-inputs | <pre>The inputs provided to the workflow.<br>Passing the inputs context wrapped in a `toJSON` expression.<br>For example: `\$\{\{ toJSON(inputs) \}\}`</pre> | n/a | yes |

## Outputs

N/A

<!-- actdocs end -->

## 参考

-   [GitHub Actions Workflow 作成 Tips > Job Summaries の活用](https://engineers.ntt.com/entry/2022/12/21/095303)
