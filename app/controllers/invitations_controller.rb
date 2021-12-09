class InvitationsController < ApplicationController
    def index
        @invitations = Invitation.where(invitee: current_user)
    end

    def new
        @invitation = Invitation.new
        @event = Event.find(params[:event_id])
    end

    def create
        #creates an Invitation.new for each user checks
        @event = Event.find(params[:event_id])
        @invites = params[:invitee_ids]
        @invites.each do |invite|
            @invitee = User.find(invite)
            @invitation = Invitation.new(invitee_id: @invitee.id, inviter_id: current_user.id, event_id: params[:event_id])
            if !@invitation.save
                render :new
            end
        end

        redirect_to event_path(@event.id)

    end

  
end
