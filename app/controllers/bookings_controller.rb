class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.children_pool = ChildrenPool.find(params[:user_id])
    if @booking.save
      redirect_to booking_path(@booking.user)
    else
      @children_pool = @booking.children_pool
      render "families/show", status: :unprocessable_entity, notice: "Impossible to book this family"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :category)
  end
end
