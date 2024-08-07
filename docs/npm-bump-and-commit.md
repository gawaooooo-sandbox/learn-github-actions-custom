---
title: npm-bump-and-commit
layout: default
---

# npm-bump-and-commit
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

{% raw %}

<!-- actdocs start -->

## Description

このアクションは、npm version コマンドを使用してパッケージのバージョンを更新し、変更をコミットします。

**Gitタグは作成せず、タグのプッシュも行いません。**

## Usage

```yaml
steps:
  - name: Update npm version and commit
    uses: gawaooooo-sandbox/learn-github-actions-custom/composite/npm-bump-and-commit@v0 # This is the version of the action
    with:
      version-type: 'patch'
```

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| version-type | npm version コマンドの引数。<br>`patch`, `minor`, `major` などの release タイプを指定することを想定。 | n/a | yes |
| checkout-ref | チェックアウトするリファレンス | `${{ github.head_ref || github.ref }}` | no |
| node-version-file | Node.jsのバージョンを指定するファイルのパス | `.nvmrc` | no |
| skip-checkout | チェックアウトをスキップするかどうか | `false` | no |
| skip-node-setup | Node.jsのセットアップをスキップするかどうか | `false` | no |

## Outputs

| Name | Description |
| :--- | :---------- |
| package-version | 更新されたパッケージのバージョン |

<!-- actdocs end -->

{% endraw %}
