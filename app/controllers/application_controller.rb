class ApplicationController < ActionController::Base
  before_filter :redirect_to_naked
  protect_from_forgery

  private

  def redirect_to_naked
    if request.subdomain.present?
      redirect_to 'http://dockyard.com', :status => 301
    end
  end
end
