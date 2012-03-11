# PlayBox

This is a skeleton for Web UI experiments. It uses Sinatra to compile
CoffeeScript and SCSS on the fly.


## Setup

1. Get Ruby, Rubygems, and bundler.
sudo apt-get install ruby-full
sudo gem update --system
sudo gem install bundler

2. Install all the required gems.
bundle install

3. Start up the web server.
bundle exec shotgun config.ru
nohup bundle exec unicorn config.ru > web.log &

4. Go to [http://localhost:9393](http://localhost:9393) and play.


## Experiment

CoffeeScript files go in the `javascripts/` directory and are automatically
merged into one big file, so you don't need to worry about exporting your
classes.

SCSS files go into the `stylesheets/` directory, and must be `@import`ed in
`stylesheets/application.scss`. CSS is sensitive to the order of the rules, so
you're in control of that.

The main page is in `views/welcome.erb`. The server-side code is in `app.rb`.
