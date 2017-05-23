class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = current_user
    @users = User.all
    @not_friends = User.not_friends(current_user)
    @friendships = current_user.friendships

    @friendships_ids = current_user.friendships.pluck(:id)
    @friendships_inverse_ids = current_user.inverse_friendships.pluck(:id)
    @all_friends = User.all_friends(current_user)

    @friendships_inverse = current_user.inverse_friendships
  end

  def edit
    @user = current_user
  end

  def update_password
    @user = User.find(current_user.id)
    if @user.update(user_params)
      bypass_sign_in(@user)
      redirect_to root_path
    else
      render "edit"
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
