WhereIsMyMoney::Application.routes.draw do
  devise_for :users

  get "/my_profile", to: "profiles#my_profile", as: "my_profile"

  root :to => "pages#index"
end
