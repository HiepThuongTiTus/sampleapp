Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  # resources : static_pages,only: [:home, :help] do
  #   collection do 
  #     get :home
  #     get :help
  #     post :search
  #   end
  # end

  get "/home", to: "static_pages#home"

  resources :posts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
