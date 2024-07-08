

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
| github-token | <code>GitHubトークン</code> | n/a | yes |
| pr-number | <code>プルリクエスト番号</code> | n/a | yes |
| checkout-ref | <code>チェックアウトするリファレンス</code> | `${{ github.ref }}` | no |
| node-version-file | <code>Node.jsのバージョンを指定するファイルのパス</code> | `.nvmrc` | no |
| npm-install-command | <code>npm install コマンド</code> | `ci` | no |

<!-- actdocs end -->


