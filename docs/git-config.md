---
title: git-config
layout: default
permalink: /git-config/
---

# git-config
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

<!-- actdocs start -->

## Description

このアクションは、Gitの設定ファイルで以下のボットアカウントを設定します:

- **user.name**: `github-actions[bot]`
- **user.email**: `41898282+github-actions[bot]@users.noreply.github.com`

この設定は、コードのコミットやプッシュを含むワークフローに役立ちます。ただし、設定が既に行われている場合はスキップされます。

## Usage
以下のようにワークフローに組み込んで使用します。

```yaml
steps:
  - name: Configure Git
    uses: gawaooooo-sandbox/learn-github-actions-custom/composite/git-config@v0 # This is the version of the action
```

## Inputs

N/A

## Outputs

N/A

<!-- actdocs end -->


