class PagesController < ApplicationController
  devise_group :user, contains: [:user]

  def index
  end

  def home
    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.replace(app_frame_id, partial: 'pages/home') }
      format.html { render partial: 'pages/home' }
    end
  end

  def dashboard
    respond_to do |format|
      format.turbo_stream
      format.html
    end
  end

  def navigations
  end

  def accounting_widget
  end

  def modal_clear
    render partial: 'pages/modals/clear'
  end
end
