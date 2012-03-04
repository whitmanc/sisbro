module ApplicationHelper
  def on_root?
    true if request.path == "/" or request.path == "" or  request.path == "//"
  end
end
