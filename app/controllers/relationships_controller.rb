class RelationshipsController < ApplicationController
  
  def create
    Relationship.create(follower_id: current_user.id, leader_id: params[:leader_id])
  end

  def destroy
    relationships = Relationship.where(follower_id: current_user.id, leader_id: params[:leader_id])
    relationships.destroy_all
    render json: {message: "User successfully unfollowed"}
  
  
  end



end

