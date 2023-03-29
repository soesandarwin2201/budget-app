class SplashController < ApplicationController
  def index
    redirect_to  users_index_path if user_signed_in?
  end
end
