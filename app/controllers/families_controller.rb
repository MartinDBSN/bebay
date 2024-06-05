class FamiliesController < ApplicationController
  def index
    @families = User.all
    @location = User.near("#{params[:location]} brussels", 20)
    @activity = params[:activity]
    @date = params[:date]
  end

  def show
    @family = User.find(params[:id])
    # @booking = Booking.new
  end

end
