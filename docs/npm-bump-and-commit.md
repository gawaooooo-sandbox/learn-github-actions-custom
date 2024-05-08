

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
| version-type | <pre>npm version コマンドの引数。<br>'patch', 'minor', 'major'などの release タイプを指定することを想定。</pre> | n/a | yes |
| checkout-ref | <pre>チェックアウトするリファレンス</pre> | `${{ github.head_ref || github.ref }}` | no |
| node-version-file | <pre>Node.jsのバージョンを指定するファイルのパス</pre> | `.nvmrc` | no |
| skip-checkout | <pre>チェックアウトをスキップするかどうか</pre> | `false` | no |
| skip-node-setup | <pre>Node.jsのセットアップをスキップするかどうか</pre> | `false` | no |

## Outputs

| Name | Description |
| :--- | :---------- |
| package-version | <pre>更新されたパッケージのバージョン</pre> |

<!-- actdocs end -->


