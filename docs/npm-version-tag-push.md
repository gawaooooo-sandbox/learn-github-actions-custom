

<!-- actdocs start -->

## Description

このアクションは、package.jsonからバージョンを抽出し、Gitタグを作成してプッシュします。

使用する前に、対象のリポジトリのコードをチェックアウトする必要があります。

## Usage

```yaml
steps:
  - name: Create version tag
    id: tag
    uses: gawaooooo-sandbox/learn-github-actions-custom/composite/npm-version-tag-push@v0 # This is the version of the action
```

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| package-json-path | Path to the package.json file. | `package.json` | no |

## Outputs

| Name | Description |
| :--- | :---------- |
| tag | The created Git tag. |

<!-- actdocs end -->


