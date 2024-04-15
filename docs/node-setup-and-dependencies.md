# node-setup-and-dependencies

<!-- actdocs start -->

## Description

This action sets up Node.js and npm for the project.
Install dependencies using `npm ci`.

## Inputs

| Name                  | Description                                                                                                                                                                                                                                                       | Default                  | Required |
| :-------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :----------------------- | :------: |
| checkout-ref          | <pre>Optional input to set the ref to checkout.<br>The input syntax corresponds to the actions/checkout's one.</pre>                                                                                                                                              | `${{ github.head_ref }}` |    no    |
| create-inputs-summary | <pre>Optional input to create a summary of the inputs used in the workflow.</pre>                                                                                                                                                                                 | `false`                  |    no    |
| node-auth-token       | <pre>Optional input to set the authentication token to use for the npm commands.<br>The input syntax corresponds to the setup-node's one.<br>When using GitHub Packages, specify `secrets.GITHUB_TOKEN`<br>When using npm, specify `secrets.NPM_AUTH_TOKEN`</pre> | n/a                      |    no    |
| node-caching          | <pre>Optional input to set up caching for the setup-node action.<br>The input syntax corresponds to the setup-node's one.<br>Set to an empty string if caching isn't needed.</pre>                                                                                | `npm`                    |    no    |
| node-version          | <pre>Optional input to set the version of Node.js used to build the project.<br>The input syntax corresponds to the setup-node's one.</pre>                                                                                                                       | n/a                      |    no    |
| node-version-file     | <pre>Optional input to set the file that contains the version of Node.js used to build the project.<br>The input syntax corresponds to the setup-node's one.</pre>                                                                                                | `.nvmrc`                 |    no    |
| npm-install-command   | <pre>Optional input to set the npm command to run.<br>`npm ci` -> `ci`<br>`npm install` -> `install`</pre>                                                                                                                                                        | `ci`                     |    no    |
| npm-install-options   | <pre>Optional input to set the options to pass to the `npm ci` or `npm install` command.<br>e.g. `--ignore-scripts --no-audit`</pre>                                                                                                                              | n/a                      |    no    |
| npm-registry-url      | <pre>Optional input to set the registry URL to use for the npm commands.<br>The input syntax corresponds to the setup-node's one.<br>When using GitHub Packages, specify `https://npm.pkg.github.com`</pre>                                                       | n/a                      |    no    |
| npm-scope             | <pre>Optional input to set the scope to use for the npm commands.<br>The input syntax corresponds to the setup-node's one.<br>`hoge package` -> `@hoge`<br>GitHub Packages -> `@owner` (use `github.repository_owner`)</pre>                                      | n/a                      |    no    |
| skip-checkout         | <pre>Optional input to skip the checkout step.<br>The input syntax corresponds to the actions/checkout's one.</pre>                                                                                                                                               | `false`                  |    no    |

## Outputs

N/A

<!-- actdocs end -->
