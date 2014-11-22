require 'singleton'
require 'param_sanitizer'
require 'action_controller/railtie'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
