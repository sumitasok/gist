alias gcom="git commit -m"
alias gca="git commit -am"
alias gitpro="git pull --rebase origin"
alias gitpo="git push origin"
alias gitrcont="git add .;git rebase --continue"
alias gitl="git log --pretty=format:'%h %an %s' --graph"


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
