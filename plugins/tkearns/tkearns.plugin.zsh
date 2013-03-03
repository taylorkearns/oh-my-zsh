alias c='clear'
alias lsl='ls -al'
alias be='bundle exec'
alias migrate='bundle exec rake db:migrate && bundle exec rake db:test:prepare'

function port() {lsof -i tcp:"$1";}
