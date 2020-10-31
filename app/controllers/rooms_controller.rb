class RoomsController < ApplicationController

  def index 
    @room = Room.all.order(:id)
  end


  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
  end


end
