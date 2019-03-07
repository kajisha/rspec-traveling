require 'active_support/core_ext/string/conversions'
require 'active_support/testing/time_helpers'
require 'rspec/traveling/version'

RSpec.configure do |config|
  config.include ActiveSupport::Testing::TimeHelpers

  config.around(:each, :travel_to) do |example|
    travel_to(example.metadata[:travel_to]) do
      example.run
    end
  end
end
