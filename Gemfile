#!/usr/bin/ruby

source :rubygems

gem 'rails', '~> 3.1.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem "unicorn"
gem "newrelic_rpm"
gem "girl_friday"
gem "exception_notification"

group :assets do
  gem "sass-rails", '3.1.5'
  gem "uglifier"
  gem 'jquery-ui-rails'
end

gem "audited-activerecord"
gem "rails3_acts_as_paranoid", "~>0.1.4"
gem "acts_as_tree_rails3"
gem "uuid"

gem 'jquery-rails'

#gem "rack", '= 1.2.2'   #Heroku seems to force this
gem 'dynamic_form'
gem "oauth"

gem "feed-normalizer"
gem "texticle"

gem "aws-s3"
gem "rmagick", :require => 'RMagick'
gem "json"
gem "geokit-rails3"

gem "will_paginate"
gem "aasm"
gem "authlogic"
#gem "authlogic-oid", :require => "authlogic_openid"
gem "ruby-openid", :require => "openid"
gem "oauth-plugin", :path => "#{File.expand_path(__FILE__)}/../vendor/gems/oauth-plugin-0.4.0.pre7"
gem "open_id_authentication", :git => "git://github.com/rewritten/open_id_authentication.git"
gem "cancan"
gem "dalli"
gem "redcarpet"
gem 'rails_admin'
gem "fastercsv"
gem "ar_after_transaction"
gem 'valid_email', :require => 'valid_email/email_validator'
gem "calendar_helper"

group :development, :test do
  gem "heroku"
  gem 'sqlite3'
  gem "silent-postgres"
  gem "rack"
  gem "rack-test"
  gem "awesome_print"
  gem "artifice"
  gem "opentransact"
  gem 'annotate'
  gem 'therubyracer'
end

group :test do
  gem "capybara"
  gem "cucumber"
  gem "cucumber-rails"
  gem "database_cleaner"
  gem "guard-spork"
  gem "rspec-rails" # :lib => false unless File.directory?(File.join(Rails.root, 'vendor/plugins/rspec-rails'))
  gem "spork"
  gem "test-unit"
end
