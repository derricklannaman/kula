module ApplicationHelper
  def resolve_layout controller, location
    if controller == "destinations" && location == "jamaica"

      "<div class='st-content-ja'></>".html_safe
    else
      "<div class='st-content'></>".html_safe
    end
  end
end
