module ApplicationHelper
  def app_frame_id = 'app-frame'
  def app_frame_tag(**, &)
    turbo_frame_tag app_frame_id, **, &
  end

  def modal_frame_id = 'modal-frame'
  def modal_frame_tag(**, &)
    turbo_frame_tag modal_frame_id, **, &
  end

  def nav_frame_id = 'nav-frame'
  def nav_frame_tag(**, &)
    turbo_frame_tag nav_frame_id, **, &
  end
end
