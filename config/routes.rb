Rails.application.routes.draw do
    
  resources :doit_lists do
      resources :doit_items
  end
  
  root "doit_lists#index"
end
