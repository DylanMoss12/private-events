class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.new(event_params)
    @event.save
    redirect_to event_path(@event.id)
  end

  def update
    @event = Event.find_by_id(params[:event_id])
    @event.attendies << User.find_by_id(params[:user_id])
    redirect_to @event
  end

  def show
    session[:current_event_id] = params[:id]
  end


  private

  def event_params
    params.require(:event).permit(:eventname, :description, :datetime, :location, :creator_id, :attendies, :event_id)
  end

end
