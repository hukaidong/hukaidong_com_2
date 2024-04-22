module PagesHelper
  def account_widget_frame_tag(**attributes, &block)
    turbo_frame_tag 'account-widget-frame', target: modal_frame_id, **attributes, &block
  end
end
