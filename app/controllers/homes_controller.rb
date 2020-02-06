class HomesController < ApplicationController
  #before_filter :authenticate_user!

  def index
  	@users = User.all
  	@feeds = current_user.feed.includes(:user) if current_user.present?
  end

end
