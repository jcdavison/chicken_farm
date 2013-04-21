ChickenFarm::Application.routes.draw do
  match '/api/get_all_data', :to => 'api#get_all_data'
end
