Dockyard::Application.routes.draw do
  %w{work clients}.each do |page|
    get "/#{page}" => "pages##{page}", :as => page
  end
  root :to => 'pages#landing'
end
