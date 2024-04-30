

<!-- actdocs start -->

## Description

このアクションは、プルリクエストに適用された特定のラベルに基づいてGitHub Packagesにパッケージを公開し、GitHubリリースを作成します。

ラベルが 'release/' で始まる場合のみ、バージョンタグを生成し、パッケージを公開します。

## Usage

```yaml
steps:
  - name: Publish release package
    uses: gawaooooo-sandbox/learn-github-actions-custom/composite/npm-release-publish@v0 # This is the version of the action
    with:
      pr-number: '1'
      github-token: 'YOUR_GITHUB_TOKEN'  # ここにGitHub Actionsが提供するデフォルトのトークンを指定
```

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| github-token | <pre>GitHubトークン</pre> | n/a | yes |
| pr-number | <pre>プルリクエスト番号</pre> | n/a | yes |
| checkout-ref | <pre>チェックアウトするリファレンス</pre> | `${{ github.ref }}` | no |
| node-version-file | <pre>Node.jsのバージョンを指定するファイルのパス</pre> | `.nvmrc` | no |
| npm-install-command | <pre>npm install コマンド</pre> | `ci` | no |

## Outputs

N/A

<!-- actdocs end -->


