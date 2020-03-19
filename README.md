## terraform_repo WIP
Terraform PR builder - WIP
## Contents:
- PR template 
- Terraform PR builder 
- GitHub CODEOWNERS file
- Terraform `.gitignore` file

## Pull request template:
- This helps code reviewers by answering some basic information about your proposed changes
```
# Topic of pull request

## Purpose:

## Changes:
- example 1
- example 2

## Tests:

## Deployment plan:

## Rollback plan:

## Miscellaneous information:
```

## PR builder:
 Upon PR creation, the PR builder will run: 
  - `terraform fmt`
  - `terraform init`
  - `terraform validate`
  - `terraform plan`

Notes:
- Make sure you set `tf_actions_version` accordingly on the repo created from the template.
- `GITHUB_TOKEN` is created for you by GitHub when you enable GitHub Actions.
- If you're calling a module in your GitHub Org that's in a separate private repo, create a PAT and use that for `terraform init` action instead of `GITHUB_TOKEN`.
- You need to store [AWS key secrets](https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets) with appropriate permissions for `terraform plan` to work,  unless you are going to [host your own runner](https://help.github.com/en/actions/hosting-your-own-runners).

## Branch Protection
This repo has a `.github/CODEOWNERS` file ready for you to update to enforce branch protection rules.  Don't forget to remove me, I'm in the file as this master branch is protected.
