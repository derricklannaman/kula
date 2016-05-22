module ApplicationHelper
  def resolve_layout controller, location
    if controller == "destinations" && location == "jamaica"
      "<div class='st-content-#{location}'></>".html_safe
    else
      "<div class='st-content'></>".html_safe
    end
  end
end
