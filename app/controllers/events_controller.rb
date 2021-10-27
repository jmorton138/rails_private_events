class EventsController < ApplicationController
    before_action :authenticate_user!

    def index
        @events = Event.all
        @past_events = Event.past
        @future_events = Event.future
    end

    def show
        @event = Event.find(params[:id])
    end

    def new
        @event = Event.new
    end

    def create
        @event = current_user.created_events.build(event_params)

        if @event.save
            redirect_to events_path
        else
            render :new
        end
    end

    def edit
        @event = Event.find(params[:id])
    end

    def update
        @event = Event.find(params[:id])

        if @event.update(event_params)
            redirect_to event_path
        else
            render :edit
        end

    end

    def destroy
        @event = Event.find(params[:id])
        @event.destroy
        redirect_to events_path
    end

    def attend
        @event = Event.find(params[:id])
        current_user.attended_events << @event
        redirect_to event_path
    end

    def cancel_attend
        @event = Event.find(params[:id])
        @event_attending = EventAttending.where(attended_event_id: @event.id, event_attendee_id: current_user.id)[0]
        #= current_user.attended_events.where(event_attended: @event )
        @event_attending.destroy
        redirect_to event_path

    end

    private

    def event_params
        params.require(:event).permit(:event_date, :name)
    end
end
