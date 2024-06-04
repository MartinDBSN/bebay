class UsersController < ApplicationController
#index method to adapt when doing the dates query part.
  def index
    @users = User.all
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
