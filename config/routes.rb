Rails.application.routes.draw do
  devise_for :users
  # get 'carts/:id' => "carts#show", as: "cart"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "products#index" 
  # devise_scope :user do
  #   # Redirests signing out users back to sign-in
  #   get "users", to: "devise/sessions#new"
  # end
  resources :cards
  resources :orders
  resources :line_items

  post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  # get 'line_items/:id' => "line_items#show", as: "line_item"
  delete 'line_items/:id' => "line_items#destroy"  
  resources :products do
    resources :reviews
  end
end
