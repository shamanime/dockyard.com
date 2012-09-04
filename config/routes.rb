Dockyard::Application.routes.draw do
  post '/contacts' => 'contacts#create', :as => :new_contact
  %w{work people community contact}.each do |page|
    get "/#{page}" => "pages##{page}", :as => page
  end
  root :to => 'pages#landing'
end
