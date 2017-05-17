class PagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = current_user
    @users = User.all
    @not_friends = User.all
    @friendships = current_user.friendships
    @friendships_inverse = current_user.inverse_friendships
  end
end
