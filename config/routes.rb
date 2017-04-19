Rails.application.routes.draw do
    
  resources :doit_lists do
      resources :doit_items do
          member do
              patch :complete
          end
      end
  end
  
  root "doit_lists#index"
end
