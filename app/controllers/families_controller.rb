class FamiliesController < ApplicationController

  def index
    @families = []
    @location = User.near("#{params[:location]} brussels", 20)
    @date = params[:date]
    @families_availibilities = AvailableDate.all.where(category: params[:activity])

    # Define the two arrays of users id
    @location_families_id = []
    @available_families_id = []

    # Itinerate to all families that are matching the geographical condition
    @location.each do |city|
      @location_families_id << city.id
    end

    # Itinerate to all availabilities that are matching the condition
    @families_availibilities.each do |availability|
      if availability.start_date < @date && @date < availability.end_date
        @available_families_id << availability.user_id
      end
    end

    # Take the common families of the 2 arrays and add the user object to the families array
    @matching_families = @location_families_id & @available_families_id
    @matching_families.each do |id|
      @families << User.find(id)
    end
  end


  def show
    @family = User.find(params[:id])
    @booking = Booking.new
    @date = params[:date]
    @activity = params[:activity]
    @children = current_user.children
  end
end
