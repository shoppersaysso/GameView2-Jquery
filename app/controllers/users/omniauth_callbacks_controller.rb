class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
      @user = User.from_omniauth(request.env["omniauth.auth"])
      sign_in_and_redirect @user
      format.html { redirect_to @user, notice: 'Successfully logged in.' }
      format.json { render :show, status: :created, location: @user }
    end

end
