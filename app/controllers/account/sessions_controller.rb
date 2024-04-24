# frozen_string_literal: true

class Account::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    super do |resource|
    # override the create method to redirect to root_path if user is already signed in
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to root_path ; return }
      end
      return
    end

    catch :warden do
      flash[:alert] = 'Invalid email or password'
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace('new_user', partial: 'account/sessions/new_user'); return }
        format.html { render :new ; return }
      end
    end
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
