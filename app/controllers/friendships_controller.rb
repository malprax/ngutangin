class FriendshipsController < ApplicationController
  def create
    if Friendship.where("(user_id = ? and friend_id = ?) or (user_id = ? and friend_id = ?)", current_user.id, params[:friend_id], params[:friend_id], current_user.id ).first
      flash[:notice] = "Already friend, nothing to add."
      redirect_to root_url
    else
      @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
      if @friendship.save
        flash[:notice] = "Added friend."
        redirect_to root_url
      else
        flash[:error] = "Unable to add friend."
        redirect_to root_url
      end
    end
  end

  def destroy
    @friendship =  current_user.friendships.find_by_id(params[:id]) || current_user.inverse_friendships.find_by_id(params[:id])
    @friendship.destroy
    flash[:notice] = "Removed friendship."
    redirect_to root_url
  end

  def unfriend
    @friendship = Friendship.where("(user_id = ? and friend_id = ?) or (user_id = ? and friend_id = ?)", current_user.id, params[:id], params[:id], current_user.id ).first
    @friendship.destroy
    flash[:notice] = "Removed friendship."
    redirect_to root_url
  end
end
