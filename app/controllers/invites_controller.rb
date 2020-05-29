class InvitesController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
    @users = User.where.not(id: [current_user.id, @event.creator_id])
  end
end
