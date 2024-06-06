class ChildrenController < ApplicationController
  def new
    @child = Child.new
  end

  def create
    @child = Child.new(child_params)
    @child.user = current_user
    if @child.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity, notice: "Sorry, we couldn't register your child. Make sure you filled the form correctly!"
    end
  end

  private

  def child_params
    params.require(:child).permit(:name, :gender, :birthday, :child_comment)
  end
end
