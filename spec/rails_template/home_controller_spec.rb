require 'rails_spec_helper'
require 'rails_template/home_controller'

RSpec.describe RailsTemplate::HomeController do
  render_views

  it 'renders ok"' do
    get :index
    expect(response.body).to include("OK")
  end
end
