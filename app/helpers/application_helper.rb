module ApplicationHelper
  def nav_bar
    content_tag(:div, :class => "navbar-nav navbar-inverse navbar-fixed-top", :role => "navigation") do
      content_tag(:div, :class => "container") do
        content_tag(:ul, :class => "nav navbar-nav") do
          yield
        end
      end
    end
  end

  def nav_link(text, path, link_options = {})
    options = current_controller?(path) ? { :class => "active" } : {}
    content_tag(:li, options) do
      link_to text, path, link_options
    end
  end

  def current_controller?(path)
    controller_for_path = Rails.application.routes.recognize_path(path)[:controller]
    #controller_name is a rails helper for the name of the current controller
    controller_for_path == controller_name
  end
end
