class InvitationsController < ApplicationController
    def index
        @invitations = Invitation.where(invitee: current_user)
    end
end
