class EventsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :edit, :destroy]
    
	def index
	end 

	def show
		@events = Event.all
	end
	def update
		@event = Event.find(params[:id])
		@event.update(event_params)
		redirect_to event_path(@event.id)
	end
	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to event_path
	end
	def new
		@event = Event.new
	end
	def create
		@event = Event.create(event_params)
		redirect_to event_path(@event.id)
		
	end
	def edit
		@event = Event.find(params[:id])
	end
	
	
	
	
	private
	
	def event_params
		params.require(:event).permit(:start_date, :duration, :title, :description, :price, :location, :admin_id)
	end
end
