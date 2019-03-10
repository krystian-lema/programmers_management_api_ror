Rails.application.routes.draw do
  resources :paradigms
  resources :languages
  resources :programmers
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
