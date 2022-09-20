class RelationshipsController < ApplicationController
  
  def create
    Relationship.create(follower_id: current_user.id, leader_id: params[:leader_id])
  end

end

