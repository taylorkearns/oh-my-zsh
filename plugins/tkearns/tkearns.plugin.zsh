alias be="bundle exec"
alias bower="noglob bower"
alias c="clear"
alias cr="clear && rspec"
alias edit="open -a MacVim.app $1"
alias gitlog="git log --pretty=oneline"
alias lsl="ls -al"
alias migrate="bundle exec rake db:migrate db:test:prepare"
alias zmigrate="zeus rake db:migrate db:test:prepare"
alias zrss="zeus rspec spec/"

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

function mergeDevelop() {
  git checkout develop;
  git pull --rebase;
  git checkout feature/daily_update;
  git pull --rebase;
  git merge develop;
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
