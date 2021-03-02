source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem "rails", "~> 5.2.4", ">= 5.2.4.4"
gem "mysql2", "~> 0.5.2"
gem "puma", "~> 3.11"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"

# Redis
gem "redis-rails"

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "pry-byebug"
  gem "pry-rails"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"

  gem "capistrano"
  gem "capistrano3-puma"
  gem "capistrano-rails", :require => false
  gem "capistrano-passenger"
  gem "capistrano-yarn"
  gem "capistrano-bundler", :require => false
  gem "capistrano-rvm"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "devise", "~> 4.7", ">= 4.7.1"
gem "devise-async"

# Background Job
gem "resque"

gem "letter_opener"

gem "resque-status"

gem "resque-web", require: "resque_web"
# Authenticate social
gem "omniauth-facebook", "~> 8.0"

# Render error
gem "simple_form"

# ENV
gem "figaro"

# Editor
gem "ckeditor"
gem "mini_magick"

# search
gem "ransack"

# Paginate
gem "kaminari"
gem "bootstrap-kaminari-views"

# Support
gem "config"
gem "lazyload-rails"

gem "aws-sdk-s3", "~> 1"

gem "sitemap_generator"
