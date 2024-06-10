class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    @family = current_user
    @children = @family.children
    @availabilities = current_user.available_dates
    @my_bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(
      start_date: params[:booking][:date],
      category: params[:booking][:activity])
    @booking.user = current_user
    # @booking.children_pool = ChildrenPool.find(params[:user_id])
    if @booking.save
      redirect_to edit_booking_path(@booking)
    else
      raise
      # @children_pool = @booking.children_pool
      redirect_to family_path(current_user), status: :unprocessable_entity, notice: "Impossible to book this family"
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @family = User.find(@booking.user_id)
    @activity = @booking.category
    @children = current_user.children
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    if @booking.save
      redirect_to dashboard_path(current_user)
    else
      redirect_to family_path(current_user), status: :unprocessable_entity, notice: "Impossible to update your request"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :category)
  end
end
