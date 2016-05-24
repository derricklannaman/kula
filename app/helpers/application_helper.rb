module ApplicationHelper
  def resolve_layout controller, location

    if controller == "destinations" && location == "jamaica"
      "<div class='st-content-#{location}'></>".html_safe
    elsif controller == "pages" && location == "index"
      "<div class='st-content-home'></>".html_safe
    else
      "<div class='st-content'></>".html_safe
    end
  end
end
