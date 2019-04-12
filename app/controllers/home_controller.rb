class HomeController < ApplicationController
  before_action :authenticated_user!
  include Authentication

  def index
  end

  def userlist
    @users = User.all_except(current_user)
    @user_followers = current_user.followers
    @user_following = current_user.following
    @type = [:following, :followers]
  end
end

