alias c='clear'
alias lsl='ls -al'
alias be='bundle exec'
alias migrate='bundle exec rake db:migrate db:test:prepare'
alias zeusmigrate='zeus bundle exec rake db:migrate db:test:prepare'
alias rss='rspec spec/'
alias zrss='zeus rspec spec/'

function port() {lsof -i tcp:"$1";}
