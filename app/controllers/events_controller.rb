class EventsController < ApplicationController
  before_filter :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
    if @event.update_attributes(event_params)
      redirect_to @event, notice: "Event updated"
    else
      render :edit, notice: "Update failed"
    end
  end

  def destroy
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description, :start_time, :end_time, :deadline, :event_type)
  end
end
