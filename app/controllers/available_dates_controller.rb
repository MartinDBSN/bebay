class AvailableDatesController < ApplicationController
  def index
    @available_dates = AvailableDate.all
  end

  def create
    # METHOD TO ADAPT WHEN WE HAVE A BETTER IDEA OF HOW AVAILABLE DATES WILL BE CREATED
    @available_date = AvailableDate.new(available_date_params)
    @available_date.user = current_user
  end

  private

  def available_date_params
    params.require(:available_date).permit(:start_date, :end_date, :category)
  end
end
