class UserController < ApplicationController
  before_action :authenticated_user!
  include Authentication
  
  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @user_followers = ''
    @user_following = @user.following
    @type = [:following]
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @user_followers = @user.followers
    @user_following = ''
    @type = [:followers]
    render 'show_follow'
  end

  def show
    @user = User.find(params[:id])
    @user_followers = @user.followers
    @user_following = @user.following
    @type = [:following, :followers]
    render 'show_follow'
  end
  
end
