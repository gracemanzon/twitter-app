class RelationshipsController < ApplicationController
  def create
    Relationship.create(follower_id: current_user.id, leader_id: params[:leader_id])

    redirect_back(fallback_location: root_path)
  end

  def destroy
    relationships = Relationship.where(follower_id: current_user.id, leader_id: params[:leader_id])
    relationships.destroy_all
    redirect_back(fallback_location: root_path)
  end
end
