---
title: node-setup-and-dependencies
layout: default
---

# node-setup-and-dependencies
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

{% raw %}

<!-- actdocs start -->

## Description

This action sets up Node.js and npm based on specified versions and options, and installs dependencies.
It's ideal for creating customizable environments in GitHub Actions workflows that require both environment setup and dependency management.
The process includes version management, optional checkout, dependency installation, and npm configuration.

## Usage Example

### Basic Setup

```yaml
steps:
  - name: Setup Node.js and Install dependencies
    uses: composite/node-npm-setup@v0 # This is the version of the action
    with:
      checkout-ref: <your-checkout-ref> # Use GitHub Actions context
      npm-install-options: '--ignore-scripts --no-audit'
```
This example demonstrates a basic setup where only essential npm install options are specified, ideal for most projects that do not require specific npm configurations.
It uses common parameters to ensure a smooth installation process without scripts or audit checks.

### Npm Configuration

```yaml
steps:
  - name: Setup Node.js and Install dependencies with specific npm settings
    uses: composite/node-npm-setup@v0 # This is the version of the action
    with:
      npm-registry-url: 'https://registry.npmjs.org' # Custom npm registry URL
      npm-scope: '@owner' # Custom scope for npm packages
      node-auth-token: <your-node-auth-token> # Use GitHub Secrets
      npm-install-options: '--ignore-scripts --no-audit'
```

This example is tailored for projects that need to interact with a specific npm registry or have private packages.
It configures a custom registry URL, a scoped package environment, and authentication using a secret token.
This setup is crucial for ensuring private packages are handled securely and effectively.

## Inputs

| Name | Description | Default | Required |
| :--- | :---------- | :------ | :------: |
| checkout-ref | Specify the Git reference (branch, tag, commit SHA) to checkout.<br>This input can be set to checkout a branch other than the default GitHub Actions branch.<br>You can specify this using GitHub context variables to dynamically determine which reference to use based on the current workflow context.<br><br>For example, to use the branch that triggered the workflow, you can reference `github.ref` in your workflow configuration.<br>The `github.head_ref` context is particularly useful in pull request workflows, as it refers to the head branch of the pull request which is being merged from. | `${{ github.head_ref }}` | no |
| create-inputs-summary | Enable this option to generate a summary of the workflow inputs. Helpful for debugging and logs. | `false` | no |
| node-auth-token | Provide an authentication token for operations requiring npm registry authentication. | n/a | no |
| node-caching | Enable caching for Node.js dependencies.<br>Specify `npm` to cache npm dependencies, or leave blank to disable caching. | `npm` | no |
| node-version | Set the Node.js version for the project.<br>If unspecified, the version specified in the `.nvmrc` file will be used if present. | n/a | no |
| node-version-file | Set the path to a file containing the Node.js version, like `.nvmrc`, used for the project. | `.nvmrc` | no |
| npm-install-command | Choose between `ci` (for installing stable dependencies) or `install` for a general installation. | `ci` | no |
| npm-install-options | Specify additional options for npm install commands, such as `--ignore-scripts` to skip running scripts. | n/a | no |
| npm-registry-url | Specify the npm registry URL.<br><br>For example, use `https://registry.npmjs.org` for npm's default registry or `https://npm.pkg.github.com` for GitHub Packages. | n/a | no |
| npm-scope | Specify the scope for npm package operations, which is typically used with private or scoped packages.<br><br>You can set this scope to match the owner of the GitHub repository by referring to the GitHub context variable for the repository owner.<br><br>This is particularly useful for projects that use GitHub Packages, where the scope is often set to the repository's owner. | n/a | no |
| skip-checkout | Specify whether to skip the checkout step.<br>Useful when the workflow already has the necessary codebase checked out. | `false` | no |

<!-- actdocs end -->

{% endraw %}
