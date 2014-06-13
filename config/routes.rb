Omrails::Application.routes.draw do
  # set the /about page and route it
  get "about" => "pages#about"
  root "pages#home"
end
