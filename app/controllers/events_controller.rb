class EventsController < ApplicationController
  before_action :find_event, only: [:show]
  before_action :find_comments, only: [:show]

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.create(event_params)
    redirect_to @event
  end

  def show
    @attendees = @event.attending.distinct
    authorize!(:read, @event)
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :country, :city, :postcode)
  end

  def find_event
    @event = Event.find(params[:id])
  end

  def find_comments
    @comments = @event.comments.sorted
  end

end
