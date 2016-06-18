Rails.application.routes.draw do

  get 'mixed_coffee/index'

  # Default root
  root :to => 'mixed_coffee#index'

  ##API
  namespace :api, format: "json" do 
    namespace :v1 do
      post 'cafes/mix'
    end
  end

end
