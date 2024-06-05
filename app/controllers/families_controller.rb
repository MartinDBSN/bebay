class FamiliesController < ApplicationController
  def index
    @families = User.all
    @location = User.near("#{params[:location]} brussels", 20)
    @activity = params[:activity]
    @date = params[:date]
  end

  def show
    @family = User.find(params[:id])
    @booking = Booking.new
  end

  def edit
  end

  def update
    if @family.update(family_params)
      redirect_to dashboard_path, notice: 'Family was successfully updated.'
    else
      render :edit
    end
  end

  private

  def family_params
    params.require(:user).permit(:name, :email, :location, :activity, :date)
  end
end
