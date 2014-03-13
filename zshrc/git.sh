alias gcom="git commit -m"
alias gca="git commit -am"
alias gpro="git pull --rebase origin"
alias gpo="git push origin"
alias grcont="git add .;git rebase --continue"
alias gl="git log --pretty=format:'%h %an %s' --graph"

# http://git-scm.com/book/en/Git-Basics-Viewing-the-Commit-History
# a lot of ways to configure the git log

function cb()
{
  #git branch | grep "*" | grep -Eho "\w+" 2> /dev/null
  git branch | grep "*" | tr -d ' ' | cut -c2-
}

function gpl()
{
  git pull --rebase origin `cb`
}

function rebase_with_master
{
  cb=`cb`
  git checkout master && git pull ; git checkout $cb && git rebase master
}

function pd
{
  git pull && git push; cap deploy
}
