class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    @family = current_user
    @children = @family.children
  end

  def create
    @booking = Booking.new(start_date: params[:booking][:date], child_id: params[:booking][:child_id])
    @booking.user = current_user
    # @booking.children_pool = ChildrenPool.find(params[:user_id])
    if @booking.save
      redirect_to dashboard_path
    else
      # @children_pool = @booking.children_pool
      redirect_to family_path(current_user), status: :unprocessable_entity, notice: "Impossible to book this family"
    end
  end

  # def create
  #   @family = User.find(params[:id])
  #   @booking = Booking.new(bookings_params)
  #   @game.user = current_user
  #   if @booking.save
  #     redirect_to family_path(@family)
  #   else
  #     render :new, status: :unprocessable_entity, notice: "hahaha"
  #   end
  # end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :category)
  end
end
