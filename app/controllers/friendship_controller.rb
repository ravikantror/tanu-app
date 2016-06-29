class FriendshipController < ApplicationController
 def create
 @friendship=current_user.friendship.new(friendship_params)
 @friendship.save
  redirect_to root_path
 end
  def destroy
    @friendship=current_user.friendship.find(params[:id])
    @friendship.destroy
    redirect_to current_user
  end
  private
  def friendship_params
    params.require(:friendship).permit(:friend_id)
  end
end
