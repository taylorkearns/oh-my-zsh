alias be='bundle exec'
alias bower='noglob bower'
alias c='clear'
alias cr='clear && rspec'
alias lsl='ls -al'
alias migrate='bundle exec rake db:migrate db:test:prepare'
alias zmigrate='zeus rake db:migrate db:test:prepare'
alias zrss='zeus rspec spec/'

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

function removeextras() {
  rm spec/controllers/$1_controller_spec.rb;
  rm app/helpers/$1_helper.rb;
  rm spec/helpers/$1_helper_spec.rb;
}
