Rails.application.routes.draw do
  # get 'doses/new'
  # get 'doses/create'
  # get 'cocktails', to: 'cocktails#index'
  # post 'cocktails', to: 'cocktails#create'
  # get 'cocktails/new', to: 'cocktails#new', as: :new_cocktail
  # get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: %i[create new show] do
    resources :doses, only: %i[create new]
  end
  resources :doses, only: [:destroy]
end
