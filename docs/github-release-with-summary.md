

<!-- actdocs start -->

## Description

このアクションは、GitHub CLIを使用してGitHubリリースを作成し、オプションでジョブサマリーにリリース情報を出力します。

## Usage

```yaml
steps:
  - name: Create GitHub Release
    uses: gawaooooo-sandbox/learn-github-actions-custom/composite/github-release-with-summary@v0 # This is the version of the action
    with:
      version-tag: 'v1.0.0'
      github-token: 'YOUR_GITHUB_TOKEN'  # ここにGitHub Actionsが提供するデフォルトのトークンを指定
```

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| github-token | GitHubアクションのトークン | n/a | yes |
| version-tag | リリースに使用するバージョンタグ | n/a | yes |
| summary-output | ジョブサマリーにリリース情報を出力するかどうか | `true` | no |

## Outputs

N/A

<!-- actdocs end -->


