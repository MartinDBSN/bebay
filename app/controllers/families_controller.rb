class FamiliesController < ApplicationController
  def index
    @families = User.all
#index method to adapt when doing the dates query part.
    # if params[:query].present?
    #   sql_subquery = <<~SQL
    #     available_dates.category ILIKE :query
    #     OR users.home_address ILIKE :query
    #     OR available_dates.start_date ILIKE :query
    #     OR available_dates.end_date ILIKE :query
    #   SQL
    #   @users = @users.joins(:available_dates).where(sql_subquery, query: "%#{params[:query]}%")
    # end
  end
end
