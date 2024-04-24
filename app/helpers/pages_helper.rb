module PagesHelper
  def account_widget_frame_id = 'account-widget-frame'
  def account_widget_frame_tag(**attributes, &block)
    turbo_frame_tag account_widget_frame_id, target: modal_frame_id, **attributes, &block
  end
end
