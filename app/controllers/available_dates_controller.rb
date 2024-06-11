class AvailableDatesController < ApplicationController
  def index
    @available_dates = AvailableDate.all
  end

  def new
    @available_date = AvailableDate.new
  end

  def create
    @available_date = AvailableDate.new(available_date_params)
    @available_date.user = current_user
    if @available_date.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity, notice: "Impossible to add this availability"
    end
  end

  def destroy
    @available_date = AvailableDate.find(params[:id])
    @available_date.destroy
    redirect_to bookings_path, notice: "Availability erased"
  end

  private

  def available_date_params
    params.require(:available_date).permit(:start_date, :end_date, :category)
  end
end
