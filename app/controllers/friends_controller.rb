class FriendsController < ApplicationController
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

  def show
    @debts = Debt.includes(:kreditur, :debitur).where("(kreditur_id = ? and debitur_id = ?) or (kreditur_id = ? and debitur_id = ?)", params[:id], current_user.id, current_user.id, params[:id])
    @utangs = @debts.where(kreditur_id: current_user.id)
    @friend = User.find(params[:id])
    @piutangs = @debts.where(debitur_id: current_user.id)
  end
end
