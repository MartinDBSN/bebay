class FamiliesController < ApplicationController

  def index
    @families = []
    @location = User.near("#{params[:location]} brussels", 20)
    @date = params[:date]
    @families_availibilities = AvailableDate.all.where(category: params[:activity])
    @family_bookings = Booking.all.where(category: params[:activity])
    @all_families = User.all
    # Define the 3 arrays of users id
    @location_families_id = []
    @available_families_id = []
    @booking_families_id = []
    @all_families_id = []

    # ?????
    @all_families.each do |family|
      @all_families_id << family.id
    end
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

    # Itinerate to all bookings of the family to avoid booking on the same date
    @family_bookings.each do |booking|
      @child1  = booking.child_id
      @family1 = Child.find(@child1)
      if booking.start_date == @date.to_date
        @booking_families_id << @family1.user_id
      end
    end
    @filtered_families = @all_families_id - @booking_families_id

    # Take the common families of the 3 arrays and add the user object to the families array
    @matching_families = @location_families_id & @available_families_id & @filtered_families
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
    @family_children = @family.children
  end

  def edit

  end
end
