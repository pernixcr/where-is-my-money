WhereIsMyMoney::Application.routes.draw do
  devise_for :users

  resources :categories
end
