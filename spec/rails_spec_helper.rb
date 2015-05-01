require 'spec_helper'
require File.expand_path(File.join('..', '..', 'config', 'environment'), __FILE__)
require 'rspec/rails'

RSpec.configure do |config|
  config.include RSpec::Rails::ControllerExampleGroup, type: :controller, file_path: /.*_controller_spec/
end
