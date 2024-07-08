---
title: npm-manual-publish
layout: default
---

# npm-manual-publish
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

{% raw %}

<!-- actdocs start -->

## Description

このアクションは、手動で開発中のパッケージをGitHub Packagesに公開します。

特定のプレリリースタグを用いてバージョン管理し、テストやプレビュー目的で利用されることが想定されています。

公開するパッケージは、`publish-tag`で指定されたタグ（例: 'next'）を使用して管理されます。

## Usage

```yaml
steps:
  - name: Publish development package
    uses: gawaooooo-sandbox/learn-github-actions-custom/composite/npm-manual-publish@v0 # This is the version of the action
    with:
      version-type: 'prepatch'
      publish-tag: 'next'
      github-token: 'YOUR_GITHUB_TOKEN'  # ここにGitHub Actionsが提供するデフォルトのトークンを指定
```

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| github-token | <code>GitHubトークン</code> | n/a | yes |
| publish-tag | <code>npm publish コマンドの --tag オプション。<br>'latest', 'beta', 'alpha', 'next'などがあります。<br>開発中のバージョンをテスト目的で公開する場合は'next'タグが適しています。</code> | n/a | yes |
| version-type | <code>npm version コマンドの引数。<br>'prepatch', 'preminor', 'premajor'などの pre release タイプを指定することを想定。</code> | n/a | yes |
| checkout-ref | <code>チェックアウトするリファレンス</code> | `${{ github.head_ref || github.ref }}` | no |
| node-version-file | <code>Node.jsのバージョンを指定するファイルのパス</code> | `.nvmrc` | no |
| npm-install-command | <code>npm install コマンド</code> | `ci` | no |

<!-- actdocs end -->

{% endraw %}
