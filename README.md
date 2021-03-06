## terraform_repo

This is a good first iteration to build upon or to get you started with GitHub Actions in general.

## Contents:
- Terraform PR builder (using GitHub Actions)
- GitHub CODEOWNERS file
- Terraform `.gitignore` file

## PR builder:
 Upon PR creation, the PR builder will run: 
  - `terraform fmt`
    - logic is in place to format the changes on your PR branch and commit them if need be
    - the step will fail and comment for awareness, but will trigger the next step which will apply fmt to your branch and commit to your branch.
  - `terraform init`
  - `terraform validate`
  - `terraform plan`

In the example below, the `terraform fmt` step failed however logic will write `fmt` changes to your branch and commit them.  Terraform plan is placed in a comment as well:
![Alt text](/example/example.png?raw=true)

Notes:
- Don't forget to pull down the changes to your local branch if `fmt` applied changes.  You can remove that logic in the github action if you don't want an automatic `fmt` apply as this will cause conflicts if you don't pull down the changes locally.
- Make sure you set `tf_actions_version` accordingly on the repo created from the template.
- `GITHUB_TOKEN` is created for you by GitHub when you enable GitHub Actions.
- If you're calling a module in your GitHub Org that's in a separate private repo, create a PAT and use that for `terraform init` action instead of `GITHUB_TOKEN`.
- You need to store [AWS key secrets](https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets) with appropriate permissions for `terraform init` & `terraform plan` to work,  unless you are going to [host your own runner](https://help.github.com/en/actions/hosting-your-own-runners).

## Branch Protection
This repo has a `.github/CODEOWNERS` file ready for you to update to enforce branch protection rules.
