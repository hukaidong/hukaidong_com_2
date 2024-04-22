module ApplicationHelper
  def app_frame_id = 'app-frame'
  def app_frame_tag(**attributes, &block)
    turbo_frame_tag app_frame_id, **attributes, &block
  end

  def modal_frame_id = 'modal-frame'
  def modal_frame_tag(**attributes, &block)
    turbo_frame_tag modal_frame_id, **attributes, &block
  end
end
