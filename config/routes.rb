Rails.application.routes.draw do
  resources :sample_pics
  resources :samples
  resources :draft_pics
  resources :drafts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root "home#index"

end
