require 'rack/reloader'

RailsTemplate::Application.configure do

  class Reloader
    def initialize(app)
      @reloader = Rack::Reloader.new(app, 0.5)
    end

    def call(env)
      ActiveSupport::Dependencies.remove_unloadable_constants!
      RailsTemplate::Application.routes_reloader.execute_if_updated
      ActionController::Base.view_paths.each(&:clear_cache)
      @reloader.call(env)
    end
  end

  config.action_controller.perform_caching      = false
  config.logger       = Logger.new(STDOUT)
  config.logger.level = Logger::DEBUG
  config.middleware.use                           Reloader
end
