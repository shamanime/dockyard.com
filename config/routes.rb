Dockyard::Application.routes.draw do
  resources :contacts, :only => [:create]
  root :to => 'home#index'
end
