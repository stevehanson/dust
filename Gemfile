source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
gem 'puma', '~> 3.11'
gem "pg"
gem "pry-rails"
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
gem 'redis', '~> 4.0'
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem "capybara"
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem "rubocop", require: false
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "rack-mini-profiler", require: false
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
end

group :test do
    gem "capybara-selenium"
  gem "climate_control"
  gem "database_cleaner"
  gem "fakeredis"
  gem "launchy"
  gem "rspec-rails"
  gem "rswag-specs"
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock", require: false
end

group :production do
  gem "rack-timeout" # terminate long-running requests
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
