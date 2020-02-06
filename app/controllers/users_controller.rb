class UsersController < ApplicationController
	#before_filter :authenticate_user!

  def show
    @user = User.find(params[:format])
    @feeds = @user.tweets.includes(:user) if @user.present?
  end

end
