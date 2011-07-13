module ApplicationHelper

  def render_flash
    if flash[:success]
      content_tag(:div, :class => [:message, :success]) { flash[:success] }
    elsif flash[:error]
      content_tag(:div, :class => [:message, :error])   { flash[:error]   }
    end
  end
end
