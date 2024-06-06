class ChildrenController < ApplicationController
  def new
    @child = Child.new
  end

  def create
    @child = Child.new(child_params)
    @child.user = current_user
    if params[:commit] == 'Save and register another child'
      if @child.save
        flash[:notice] = "Child successfully registrated!"
        redirect_to new_child_path
      else
        render :new, status: :unprocessable_entity, notice: "Sorry, we couldn't register your child. Please try again!"
      end
    elsif params[:commit] == 'Save and checkout'
      if @child.save
        redirect_to dashboard_path
      else
        render :new, status: :unprocessable_entity, notice: "Sorry, we couldn't register your child. Please try again!"
      end
    end
  end

  private

  def child_params
    params.require(:child).permit(:name, :gender, :birthday, :child_comment)
  end
end
