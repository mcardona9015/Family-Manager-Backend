class CalendarsController < ApplicationController
    before_action :authenticate, only: [:create, :index]
    def create
        # byebug
        calendar_params = params.require(:calendar).permit(:text, :description, :startDate, :endDate, :recurrenceRule, :allDay)
        calendar_event = Calendar.create(user_id: @current_user.id)  
        calendar_event.update(calendar_params)
        render json: calendar_event    
    end

    def index
        calendar_events = @current_user.calendars
        render json: calendar_events
    end
end
