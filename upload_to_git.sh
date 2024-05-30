#!/bin/bash

# Load the variables from the config file
source config.sh

# Get the current date as the folder name
FOLDER_NAME=$(date +"%Y-%m-%d")

# Change to the folder
cd "$FOLDER_NAME"

#!/bin/bash



# Get the current date as the folder name
FOLDER_NAME=$(date +"%Y-%m-%d")

# Change to the folder
cd "$FOLDER_NAME"

echo $GITHUB_TOKEN | gh auth login --with-token 

# Initialize a Git repository if it doesn't exist
if ! gh repo list | grep -q "$GITHUB_REPO"; then
  gh repo create "$GITHUB_REPO" --public
fi

# Add and commit the files
git add .
git commit -m "Uploaded files from $FOLDER_NAME"

# Push the changes to GitHub
git push origin "$GITHUB_BRANCH"

echo "Files uploaded to GitHub successfully!"
# Initialize a Git repository if it doesn't exist
if [ ! -d ".git" ]; then
  git init
  git remote add origin "https://$GITHUB_USERNAME:$GITHUB_TOKEN@github.com/$GITHUB_USERNAME/$GITHUB_REPO.git"
  git checkout -b "$GITHUB_BRANCH"
fi

# Add and commit the files
git add .
git commit -m "Uploaded files from $FOLDER_NAME"

# Push the changes to GitHub
git push -u origin "$GITHUB_BRANCH" && echo "Files uploaded to GitHub successfully!"

