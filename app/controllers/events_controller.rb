class EventsController < ApplicationController
  before_action :find_event, only: [:show]
  before_action :find_comments, only: [:show]
  before_action :find_invited, only: [:show]

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

  def index
    @events = Event.page(params[:page]).order('start_date DESC')
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :country, :city,
      :postcode, :start_date, :start_time, :end_date, :end_time)
  end

  def find_event
    @event = Event.find(params[:id])
  end

  def find_comments
    @comments = @event.comments.order('created_at').page(params[:page])
  end

  def find_invited
    @invited = @event.invited - @event.attending.distinct
  end

end
