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

  def nav_link(text, path)
    options = current_page?(path) ? { :class => "active" } : {}
    content_tag(:li, options) do
      link_to text, path
    end
  end
end
