Drctly::Application.routes.draw do
  devise_for :users, path: "/", path_names: { sign_in: 'login', sign_out: 'logout'} 
  root "home#index"
  resources :urls, only: [:show, :create, :new]

  get "/:code", to: "urls#direct"
end
