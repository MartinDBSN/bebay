class FamiliesController < ApplicationController
  def index
    @families = User.all
  end
end
