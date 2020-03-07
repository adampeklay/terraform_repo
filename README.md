## terraform_repo WIP
This repo is used to create a template for Terraform GitHub repos.
The template created can called via Terraform GitHub provider to create new GitHub repositories, etc.

## Contents:
- Pull request template 
- Terraform PR builder 
- GitHub CODEOWNERS file
- Terraform `.gitignore` file

## Pull request template:
- This helps everyone out by answering some basic information about your proposed changes

## PR builder:
 Upon PR creation, the PR builder will run: 
  - `terraform fmt`
  - `terraform init`
  - `terraform validate`
  - `terraform plan`

Notes:
- Make sure you set `tf_actions_version` accordingly on the repo created from the template.
- `GITHUB_TOKEN` is created for you by GitHub when you enable GitHub Actions.
- You need to store [AWS key secrets](https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets) with appropriate permissions for `terraform plan` to work,  unless you are going to [host your own runner](https://help.github.com/en/actions/hosting-your-own-runners).

## Branch Protection
This repo will have a code owners file ready for you to update to enforce branch protection rules.  Don't forget to remove me, I'm in the file as this master branch is protected.