Rails.application.routes.draw do
  devise_for :users

  # Defines the root path route ("/")
  resources :foods, only: %i[index show new create destroy]
  root "users#index"

  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    resources :recipe_foods, only: %i[new create edit update destroy]
  end

  get '/public_recipes', to: 'recipes#public_recipes'

end
