# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"

gem "activestorage-validator", "~> 0.2.2"
gem "authentication-zero", "~> 2.16"
gem "aws-sdk-s3", "~> 1.118", require: false
gem "bcrypt", "~> 3.1.7"
gem "bootsnap", require: false
gem "cssbundling-rails"
gem "image_processing", "~> 1.2"
gem "jsbundling-rails"
gem "madmin", "~> 1.2"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "que", "~> 2.2"
gem "rails", "~> 7.0.4"
gem "redis", "~> 4.0"
gem "sorbet-runtime", "~> 0.5.10585"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "view_component", "~> 2.82"

group :development, :test do
  gem "debug", platforms: [:mri, :mingw, :x64_mingw]
  gem "sorbet", "~> 0.5.10585"
  gem "spoom", "~> 1.1"
  gem "tapioca", "~> 0.10.3"
end

group :development do
  gem "rack-mini-profiler"
  gem "rubocop", "~> 1.40", require: false
  gem "rubocop-minitest", "~> 0.25.1", require: false
  gem "rubocop-performance", "~> 1.15", require: false
  gem "rubocop-rails", "~> 2.17", require: false
  gem "rubocop-sorbet", "~> 0.6.11", require: false
  # gem "spring"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
