module RailsTemplate
  class HomeController < ActionController::Base
    def index
      render plain: "OK"
    end
  end
end
