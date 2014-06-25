module ApplicationHelper
  def menu_active(controller_name)
    "active" if controller.controller_path == controller_name
  end
end
