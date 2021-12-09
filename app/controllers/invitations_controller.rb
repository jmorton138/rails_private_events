class InvitationsController < ApplicationController
    def index
        @invitations = Invitation.where(invitee: current_user)
    end

    def new
        @invitation = Invitation.new
        @event = Event.find(params[:event_id])
    end

    def create
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

    def reject
        @invitation = Invitation.find(params[:id])
        @invitation.accepted = false
        @invitation.save
        redirect_to invitations_path
    end

    # def accept_invite
    #     @invitation.accepted = true
    #     @invitation.save
    #     # update event attendings
    # end

  
end
