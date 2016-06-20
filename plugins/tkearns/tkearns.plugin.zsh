alias be="bundle exec"
alias bspec="foreman run bin/rspec $1 --no-profile"
alias c="clear"
alias edit="open -a MacVim.app $1"
alias fucking="git"
alias gitlog="git log --pretty=oneline"
alias lsl="ls -al"
alias migrate="bundle exec rake db:migrate db:test:prepare"

function port() { lsof -i tcp:"$1"; }

function track() {
  branch_name=$(git branch | grep "*");
  branch_name="${branch_name/\* /}";
  git branch --set-upstream-to=origin/$branch_name $branch_name;
}
