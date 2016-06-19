require File.expand_path('../boot', __FILE__)

require 'rails/all'


Bundler.require(*Rails.groups)

module Redbucks
  class Application < Rails::Application

    ## Evita generar recursos css y js que no seran usados
    config.generators do |g|
        g.stylesheets false
        g.assets  false
    end
    
    ## Permisos para protocolo http por medios externos
    config.middleware.insert_before 0, "Rack::Cors" do
         allow do
           origins '*'
           resource '*', :headers => :any, :methods => [:get, :post, :options, :put, :destroy, :delete]
         end
    end


  end
end
