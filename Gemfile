source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'rails', '~> 6.1.4'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'devise', github: 'ghiculescu/devise', branch: 'error-code-422' # https://github.com/heartcombo/devise/pull/5340 not yet merged
gem 'name_of_person', '~> 1.1'
gem 'omniauth', github: 'omniauth/omniauth'
gem 'omniauth-google-oauth2'
gem 'omniauth-rails_csrf_protection', '~> 1.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.0'
gem 'redis', '~> 4.0'
gem 'responders', github: 'heartcombo/responders' # https://github.com/heartcombo/responders/pull/223 not yet released
gem 'sass-rails', '>= 6'
gem 'sidekiq', '~> 6.1'
gem 'sidekiq-cron', '~> 1.2'
gem 'turbo-rails'
gem 'webpacker', '~> 5.0'
gem 'view_component', '>= 2.3.5', require: 'view_component/engine'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 3.35'
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 5.0.0'
end

group :development do
  gem 'annotate'
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

