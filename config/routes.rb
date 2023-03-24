Rails.application.routes.draw do
  resources :clients
  resources :gyms 
  resources :memberships
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
