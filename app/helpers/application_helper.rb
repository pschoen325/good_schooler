module ApplicationHelper
  def boldification(text)
    "<strong><strike>#{text}</strike></strong>".html_safe
  end
end
