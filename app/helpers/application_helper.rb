module ApplicationHelper

  def render_flash
    if flash[:success]
      content_tag(:div, :class => [:message, :success]) { flash.now[:success] }
    elsif flash[:error]
      content_tag(:div, :class => [:message, :error])   { flash.now[:error]   }
    end
  end
end
