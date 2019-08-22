class AttendancesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :edit, :destroy]

	def new
		@events = Event.all
	end

	def edit
	end

	def create
	end

	def destroy
	end
end
