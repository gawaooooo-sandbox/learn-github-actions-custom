---
title: npm-auto-publish-on-merge
layout: default
---

# npm-auto-publish-on-merge
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

{% raw %}

<!-- actdocs start -->

## Description

このアクションは、マージされたプルリクエストに基づいてGitHub Packagesにパッケージを自動公開し、GitHubリリースを作成します。

'release/' で始まるラベルがプルリクエストに適用されている場合にのみ、バージョンタグを生成し、パッケージを公開します。

## Usage

```yaml
steps:
  - name: Publish release package
    uses: gawaooooo-sandbox/learn-github-actions-custom/composite/npm-auto-publish-on-merge@v0 # This is the version of the action
    with:
      pr-number: '1'
      github-token: 'YOUR_GITHUB_TOKEN'  # ここにGitHub Actionsが提供するデフォルトのトークンを指定
```

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| github-token | GitHubトークン | n/a | yes |
| pr-number | プルリクエスト番号 | n/a | yes |
| checkout-ref | チェックアウトするリファレンス | `${{ github.ref }}` | no |
| node-version-file | Node.jsのバージョンを指定するファイルのパス | `.nvmrc` | no |
| npm-install-command | npm install コマンド | `ci` | no |

<!-- actdocs end -->

{% endraw %}
