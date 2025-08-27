source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '~> 8.0.2', '>= 8.0.2.1'

gem 'image_processing', '1.12.2'

gem 'active_storage_validations', '0.9.8'
gem 'propshaft'
gem 'sqlite3', '>= 2.1'
gem 'puma', '>= 5.0'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder'

gem 'tzinfo-data', platforms: %i[windows jruby]

gem 'solid_cable'
gem 'solid_cache'
gem 'solid_queue'

gem 'bootsnap', require: false

gem 'bcrypt', '3.1.18'

gem 'faker', '2.21.0'

gem "dartsass-rails"
gem "bootstrap", "~> 5.3.3"

gem 'bootstrap-will_paginate',    '1.0.0'
gem 'will_paginate',              '3.3.1'

gem 'kamal', require: false

gem 'thruster', require: false


group :development, :test do
  gem 'debug', platforms: %i[mri windows], require: 'debug/prelude'
  gem 'guard', '~> 2.18.0'            # 追加(3.6)
  gem 'guard-minitest', '~> 2.4.6'    # 追加(3.6)
  gem 'minitest-reporters', '~> 1.6.0' # 追加(3.6)
  gem 'brakeman', require: false
  # gem "rubocop-rails-omakase", require: false
  gem 'sgcop', github: 'SonicGarden/sgcop', branch: 'main'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'rails-controller-testing'
  gem 'selenium-webdriver'
end

group :development, :test do
  gem 'factory_bot_rails'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
end
