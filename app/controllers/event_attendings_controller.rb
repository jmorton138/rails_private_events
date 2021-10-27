class EventAttendingsController < ApplicationController

    def new
        @event_attending = EventAttending.new
    end

    def create
        @event_attending = current_user.event_attendings.build(attendings_params)
    end

    private

    def attendings_params
        params.require(:event_attendings).permit(:event)
    end
end
