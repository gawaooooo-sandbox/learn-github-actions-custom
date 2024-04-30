

<!-- actdocs start -->

## Description

このアクションは、開発中のパッケージをGitHub Packagesに公開します。

開発パッケージは、inputsで指定された`publish-tag`で公開され、正式リリース前に変更をテストするために使用されます。

## Usage

```yaml
steps:
  - name: Publish development package
    uses: gawaooooo-sandbox/learn-github-actions-custom/composite/npm-dev-publish@v0 # This is the version of the action
    with:
      version-type: 'prepatch'
      publish-tag: 'next'
      github-token: 'YOUR_GITHUB_TOKEN'  # ここにGitHub Actionsが提供するデフォルトのトークンを指定
```

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| github-token | <pre>GitHubトークン</pre> | n/a | yes |
| publish-tag | <pre>npm publish コマンドの --tag オプション。<br>'latest', 'beta', 'alpha', 'next'などがあります。<br>開発中のバージョンをテスト目的で公開する場合は'next'タグが適しています。</pre> | n/a | yes |
| version-type | <pre>npm version コマンドの引数。<br>'prepatch', 'preminor', 'premajor'などの pre release タイプを指定することを想定。</pre> | n/a | yes |
| checkout-ref | <pre>チェックアウトするリファレンス</pre> | `${{ github.head_ref || github.ref }}` | no |
| node-version-file | <pre>Node.jsのバージョンを指定するファイルのパス</pre> | `.nvmrc` | no |
| npm-install-command | <pre>npm install コマンド</pre> | `ci` | no |

## Outputs

N/A

<!-- actdocs end -->


