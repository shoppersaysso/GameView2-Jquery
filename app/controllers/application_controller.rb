class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: [:index]

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || home_path
  end

  def disable_flash
    @disable_flash = true
  end

  def home
    @recent_reviews = Review.most_recent(5)
  end

  def index
    if signed_in?
      redirect_to '/home'
    end
  end

end
