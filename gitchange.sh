#!/bin/sh

git filter-branch --env-filter '

OLD_EMAIL="68059131+Swarnim-hub@users.noreply.github.com"
CORRECT_NAME="Arsh Sahzad"
CORRECT_EMAIL="admin@arsh.dev"

if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
export GIT_COMMITTER_NAME="$CORRECT_NAME"
export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
export GIT_AUTHOR_NAME="$CORRECT_NAME"
export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags

# Next Commad
# git push --force --tags origin 'refs/heads/*'
