module ApplicationHelper
  def button_to(name, url)
    link_to name, url, class: "btn btn-default"
  end
  def button_to_delete(name, url, toConfirm)
    if toConfirm
    link_to name, url, method: :delete, data: { confirm: 'Are you sure?' }, class: "btn btn-default"
    else
      link_to name, url, method: :delete, class: "btn btn-default"
      end
  end
  def link_to_delete(name, url, toConfirm)
    if toConfirm
      link_to name, url, method: :delete, data: { confirm: 'Are you sure?' }
    else
      link_to name, url, method: :delete
    end
  end
end
