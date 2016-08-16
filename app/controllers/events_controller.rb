class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.create(event_params)
    redirect_to @event
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :country, :city, :postcode)
  end

end
