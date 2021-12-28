class InvitationsController < ApplicationController
    def index
        @invitations = Invitation.where(invitee: current_user)

    end

    def new
        @invitation = Invitation.new
        @event = Event.find(params[:event_id])
        # find users who havnt' already been invited to this event,not the host, and not already attending
        @users = User.order(:last_name).map do |user|
            user if @event.invitations.where(invitee_id: user.id).length == 0 && user != @event.creator
        end
        @users = @users.compact


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
        @event = Event.find(@invitation.event_id)
        if current_user.attended_events.where(id: @event.id)
            current_user.attended_events.delete(@event)
        end
        redirect_to invitations_path
    end

    def accept
        @invitation = Invitation.find(params[:id])
        @invitation.accepted = true
        @invitation.save
        @event = Event.find(@invitation.event_id)
        if current_user.attended_events << @event
            redirect_to invitations_path
        end
    end

  
end
