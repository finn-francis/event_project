class TagsController < ApplicationController
  before_action :find_event, only: [:create]
  before_action :find_tag, only: [:create]

  def create
    @event.tags << @tag
    respond_to do |format|
      format.js
    end
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end

  def find_tag
    @tag = Tag.find_by(name: params[:tag][:name])

    if @tag.nil?
      @tag = Tag.create(tag_params)
    end
    @tag
  end

  def find_event
    @event = Event.find(params[:event_id])
  end

end
