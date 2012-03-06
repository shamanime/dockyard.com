Dockyard::Application.routes.draw do
  get  '/contact_inquiery' => 'contacts#new', :as => :new_contact_inquiery
  post '/' => 'contacts#create', :as => :contacts
  root :to => 'home#index'
end
