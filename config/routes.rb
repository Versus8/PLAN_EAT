Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :recipes do
    resources :plannings
  end

  resources :plannings

  # Defines the root path route ("/")
  # root "articles#index"
  get 'owner_plannings', to: 'plannings#owner_planning', as: :owner_plannings
  get "recipes_index/:category", to: "recipes#recipes_index", as: :recipes_index
  get "recipes/:id/ingredients_list", to: "recipes#recipe_ingredients_index", as: :recipe_ingredients_index
  get "ingredients_list", to: "recipes#ingredients_list", as: :ingredients_list
end
