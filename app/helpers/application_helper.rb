module ApplicationHelper
  def button_to(name, url)
    link_to name, url, class: "btn btn-default"
  end
end
