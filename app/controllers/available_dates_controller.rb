class AvailableDatesController < ApplicationController
  def index
    @available_dates = AvailableDate.all
  end

  def create
    # METHOD TO ADAPT WHEN WE HAVE A BETTER IDEA OF HOW AVAILABLE DATES WILL BE CREATED
    @available_date = AvailableDate.new(available_date_params)
    @available_date.user = current_user
    if @available_date.save
      redirect_to dashboard_path
    else
      # @children_pool = @booking.children_pool
      redirect_to family_path(current_user), status: :unprocessable_entity, notice: "Sorry, we couldn't register your availabilities. Please try again!"
    end
  end

  private

  def available_date_params
    params.require(:available_date).permit(:start_date, :end_date, :category)
  end
end
