class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
    authorize @events
  end

  def show
  end

  def new
    @event = Event.new
    authorize @event
  end

  def edit
  end

  def create
    @event = current_user.events.new(event_params)

    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  def update
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_url, notice: 'Event was successfully destroyed.'
  end

  private
    def set_event
      @event = Event.find(params[:id])
      authorize @event
    end

    def event_params
      params[:event][:event_type] = params[:event][:event_type].to_i
      params.require(:event).permit(:title, :art_id, :start_time, :end_time, :event_type)
    end
end
