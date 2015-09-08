alias be="bundle exec"
alias bspec="foreman run bin/rspec $1 --no-profile"
alias c="clear"
alias edit="open -a MacVim.app $1"
alias fucking="git"
alias gitlog="git log --pretty=oneline"
alias lsl="ls -al"
alias migrate="bundle exec rake db:migrate db:test:prepare"

function port() { lsof -i tcp:"$1"; }

function cleanlocal() {
  echo "Before cleanup:";
  git branch;
  echo "----";
  git branch --merged | grep -v "\*" | xargs -n 1 git branch -D;
  echo "----";
  echo "After cleanup:";
  git branch;
}

function mergeFirstIntoSecond() {
  git checkout $1;
  git branch --set-upstream-to=origin/$1 $1
  git pull --rebase;
  git checkout $2;
  git branch --set-upstream-to=origin/$2 $2
  git pull --rebase;
  git merge $1;
}

function track() {
  branch_name=$(git branch | grep "*");
  branch_name="${branch_name/\* /}";
  git branch --set-upstream-to=origin/$branch_name $branch_name;
}

# protractor integration specs for Plan
function protract() {
  if [ $# -eq 1 ]
  then
    node_modules/protractor/bin/protractor protractor/conf.js --specs=protractor/features/$1.feature
  else
    node_modules/protractor/bin/protractor protractor/conf.js
  fi
}
