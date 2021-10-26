class EventsController < ApplicationController

    def index
        @events = Event.all
    end

    def show
        @user = User.find(params[:id])
        @events = @user.created_events
    end
end
