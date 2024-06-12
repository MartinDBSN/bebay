class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    @child = Child.new
    @family = current_user
    @children = @family.children
    @availabilities = current_user.available_dates
    @available_date = AvailableDate.new
    @my_bookings = current_user.bookings + Booking.where(welcome_family_id: current_user.id)
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
    @welcome_family = User.find(@booking.welcome_family_id)
    @family = User.find(@booking.user_id)
    @family_children = @booking.children
  end


  def create
    booking = Booking.new(booking_params)
    booking.user = current_user
    if booking.save
      redirect_to dashboard_path, notice: "Request sent"
    else
      redirect_to family_path(current_user), status: :unprocessable_entity, notice: "Impossible to book this family"
    end
    # @booking = Booking.new(
    #   start_date: params[:booking][:date],
    #   category: params[:booking][:activity],
    #   description: params[:booking][:description],
    #   welcome_family_id: params[:booking][:welcome_family_id])
    # @booking.user = current_user
    # # @booking.children_pool = ChildrenPool.find(params[:user_id])
    # if @booking.save
    #   redirect_to edit_booking_path(@booking)
    # else
    #   # @children_pool = @booking.children_pool
    #   redirect_to family_path(current_user), status: :unprocessable_entity, notice: "Impossible to book this family"
    # end
  end

  def edit
    @booking = Booking.find(params[:id])
    @family = User.find(@booking.welcome_family_id)
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

  def change_status_to_accepted
    @booking = Booking.find(params[:booking_id])
    @booking.update(status: 'Confirmed')
    if @booking.save
      @booking_family = User.find(@booking.user_id)
      @booking_family.point_count -= 10
      @booking_family.save
      current_user.point_count += 10
      current_user.save
      redirect_to dashboard_path, notice: 'Booking was successfully confirmed'
    else
      redirect_to dashboard_path, notice: "Impossible to finalise this booking"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @children_pool = ChildrenPool.find_by(booking: @booking)
    @children_pool.delete
    @booking.delete
    redirect_to dashboard_path, notice: 'Booking was successfully deleted'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :category, :welcome_family_id, :description, child_ids: [])
  end
end
