require File.expand_path(File.join('..', 'boot'), __FILE__)
require 'action_controller/railtie'

module RailsTemplate
  class Application < Rails::Application
    config.active_support.bare = true
    config.cache_classes       = true
    config.dependency_loading  = false
    config.encoding            = 'utf-8'
    config.filter_parameters   += [:password, :password_confirmation]
    config.time_zone           = 'London'

    config.eager_load           = false
    config.autoload_once_paths  = []
    config.autoload_paths       = []
    config.eager_load_paths     = []
    paths['app/views']          = 'lib'

    config.secret_key_base      = 'change-me'
  end
end
