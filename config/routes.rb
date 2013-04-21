ChickenFarm::Application.routes.draw do
  match '/api/get_all_data', :to => 'api#get_all_data'
  match '/api/status', :to => 'api#status'
  root :to => 'main#index'
  
  # match '/test', :to => 'main#test'
  
end
