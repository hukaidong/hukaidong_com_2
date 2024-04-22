class PagesController < ApplicationController
  devise_group :user, contains: [:user]

  def index
  end

  def home
  end

  def navigations
  end

  def accounting_widget
  end

  def modal_clear
    render partial: 'pages/modals/clear'
  end
end
