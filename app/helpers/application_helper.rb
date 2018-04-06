module ApplicationHelper
  def display_address(resource)
    resource.address.full_address.html_safe
  end
end
