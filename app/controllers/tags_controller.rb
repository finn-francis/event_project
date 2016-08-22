class TagsController < ApplicationController
  before_action :find_event, only: [:create]
  before_action :find_tag, only: [:index]

  def create
    @event.tags << set_tag
    respond_to do |format|
      format.js
    end
  end

  def index
    @events = @tag.events
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end

  def set_tag
    @tag = Tag.find_by(name: params[:tag][:name])
    @tag = Tag.create(tag_params) if @tag.nil?
    @tag
  end

  def find_tag
    @tag = Tag.find(params[:id])
  end

  def find_event
    @event = Event.find(params[:event_id])
  end

end
