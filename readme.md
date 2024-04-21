# GitHub Uploader for Windows

This repository contains a Windows batch script that automatically uploads a directory to a GitHub repository on a daily basis.

## Prerequisites

Before running the script, you need to have the following installed on your Windows machine:

1. **Git**: Follow these steps to install Git on your Windows system:

  - Go to the official [Git website](https://git-scm.com/downloads) and download the latest version for Windows.
  - Run the installer and follow the prompts to complete the installation.

2. **GitHub Account**: Create a GitHub account if you don't have one already.

3. **GitHub Personal Access Token**: Generate a personal access token by following these steps:

  - Go to your GitHub account settings.
  - Navigate to "Developer Settings" > "Personal Access Tokens".
  - Click "Generate New Token" and follow the prompts to create a new token with the appropriate scopes (e.g., `repo` scope for repository access).

Replace `your-username` with your GitHub username.

4. **Configure Variables**: Open the `config.bat` file and update the following variables with your information:

```batch
set GITHUB_USERNAME=your_username
set GITHUB_REPO=your_repo_name
set GITHUB_BRANCH=your_branch_name
set WORKING_DIRECTORY="path/to/your/working/directory"
set GITHUB_TOKEN=your_personal_access_token
```

