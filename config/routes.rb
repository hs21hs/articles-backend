Rails.application.routes.draw do
  post "/articles/newLike", to: 'articles#createLike'
  get "/articles", to: 'articles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
