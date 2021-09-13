Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
  get "static_pages/home"
  get "static_pages/help"
  get "/home", to: "static_pages#home"
  get "/help", to: "static_pages#help"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
