RailsTemplate::Application.routes.draw do
  root to: 'rails_template/home#index', as: :home
end

module ActiveSupport::Dependencies
  old_constantize = instance_method(:constantize)

  define_method(:constantize) do |klass|
    require klass.underscore if klass =~ /Controller/
    old_constantize.bind(self).(klass)
  end
end
