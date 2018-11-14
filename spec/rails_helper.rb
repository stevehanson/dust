require "spec_helper"
ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../config/environment", __dir__)
if Rails.env.production?
  abort("The Rails environment is running in production mode!")
end
require "rspec/rails"
# Add additional requires below this line. Rails is not loaded until this point!
require "selenium/webdriver"
require "rake"
require "simplecov"
SimpleCov.start :rails do
  add_group "Services", "app/services"
  add_group "Serializers", "app/serializers"
  coverage_dir "tmp/coverage"
end

Dir[Rails.root.join("spec/support/**/*.rb")].sort.each { |file| require file }

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.include Helpers
  config.include FactoryBot::Syntax::Methods
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.use_transactional_fixtures = false
  config.include ActiveSupport::Testing::TimeHelpers

  config.before(:suite) do
    Rails.application.load_tasks
  end
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

# require "action_dispatch/system_testing/test_helpers/screenshot_helper"
# ActionDispatch::SystemTesting::TestHelpers::ScreenshotHelper.class_eval do
#   def image_path
#     @image_path ||= absolute_image_path.to_s
#   end
# end
