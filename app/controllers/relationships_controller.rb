class RelationshipsController < ApplicationController
  
  def create
    Relationship.create(follower_id: current_user.id, leader_id: params[:leader_id])
  end

  def destroy
  #  Relationship.destroy(id: params[:relationship_id])
  #   #see notes in users/show.html.erb - 
  index = 0
  while index < Relationships.all.length    
    if current_user.id == :follower_id && leader_id == params[:leader_id]
    Relationship[index].destroy
  end



end

