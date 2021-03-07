class EventsController < ApplicationController

    def new
        @event = current_user.created_events.build
    end

    def index
        @events = Event.all
    end

    def show
        @event = Event.find(params[:id])
    end

    def create
        @event = current_user.created_events.build(event_params)
        respond_to do |format|
            if @event.save
              format.html { redirect_to @event, notice: 'Event was successfully created.' }
              format.json { render :show, status: :created, location: @event }
            else
              format.html { render :new }
              format.json { render json: @event.errors, status: :unprocessable_entity }
            end
        end
    end

    private

    def event_params
        params.require(:event).permit(:date, :name)
    end
end