require File.expand_path('../boot', __FILE__)

require 'rails/all'


Bundler.require(*Rails.groups)

module Redbucks
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.generators do |g|
        g.stylesheets false
        g.assets  false
    end
    
    config.middleware.insert_before 0, "Rack::Cors" do
         allow do
           origins '*'
           resource '*', :headers => :any, :methods => [:get, :post, :options, :put, :destroy, :delete]
         end
    end


  end
end
