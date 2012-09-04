Dockyard::Application.routes.draw do
  %w{work people community contact}.each do |page|
    get "/#{page}" => "pages##{page}", :as => page
  end
  root :to => 'pages#landing'
end
