FadeyevCoUk::Application.routes.draw do
  root :to => 'home#index'
  
  get "/home/index" => "home#index"
end
