module ApplicationHelper

  def active_link? path
    "active" if current_page?(path)
  end

end
