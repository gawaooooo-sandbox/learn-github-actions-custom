---
title: npm-bump-from-label
layout: default
---

# npm-bump-from-label
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

{% raw %}

<!-- actdocs start -->

## Description

このアクションは、GitHubのラベルに基づいてNPMパッケージのバージョンを自動的にアップデートし、更新されたパッケージファイルをリポジトリにプッシュします。

**Gitタグは作成せず、タグのプッシュも行いません。**

`release/patch`、`release/minor`、`release/major`のいずれかのラベルがプルリクエストに適用された場合に使用します。

## Usage
以下のようにワークフローに組み込んで使用します。

`label-name`には、プルリクエストに適用されたバージョン更新用のラベルを指定し、必要に応じて`checkout-ref`を指定して、特定のGitリファレンスから作業を開始することができます。

```yaml
steps:
  - name: Bump version and push package files
    uses: gawaooooo-sandbox/learn-github-actions-custom/composite/npm-auto-bump@v0 # This is the version of the action
    with:
      label-name: 'release/patch'
```

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| label-name | <pre>バージョンを更新するラベル名<br>release/(patch|minor|major) のいずれかを指定します</pre> | n/a | yes |
| checkout-ref | <pre>チェックアウトするリファレンス</pre> | `${{ github.head_ref || github.ref }}` | no |
| node-version-file | <pre>Node.jsのバージョンを指定するファイルのパス</pre> | `.nvmrc` | no |

## Outputs

N/A

<!-- actdocs end -->

{% endraw %}
