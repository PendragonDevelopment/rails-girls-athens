class EventsController < ApplicationController
  before_filter :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def update
    if @event.update_attributes(event_params)
      @event.update_attributes(start_time: parse_datetime(params[:event][:start_time]))
      @event.update_attributes(end_time: parse_datetime(params[:event][:end_time]))
      redirect_to @event, notice: "Event updated"
    else
      render :edit, notice: "Update failed"
    end
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description, :start_time, :end_time, :deadline, :event_type, :location_ids => [])
  end
end
