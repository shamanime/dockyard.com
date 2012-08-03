module ApplicationHelper
  def body_classes
    [params[:contoller], params[:action]]
  end
end
