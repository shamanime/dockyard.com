Dockyard::Application.routes.draw do
  get  '/contact_enquiry' => 'contacts#new', :as => :new_contact_enquiry
  post '/' => 'contacts#create', :as => :contacts
  root :to => 'home#index'
end
