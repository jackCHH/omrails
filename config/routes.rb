Omrails::Application.routes.draw do
  resources :pins

  devise_for :users
  # set the /about page and route it
  get "about" => "pages#about"
  root "pages#home"
end
