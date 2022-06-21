Rails.application.routes.draw do

  # Defines the root path route ("/")
  # root "articles#index"
  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    resources :recipe_foods, only: %i[new create edit update destroy]
  end

  get '/public_recipes', to: 'recipes#public_recipes'
end
