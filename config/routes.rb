Dockyard::Application.routes.draw do
  post '/' => 'contacts#create', :as => :contacts
  root :to => 'home#index'
end
