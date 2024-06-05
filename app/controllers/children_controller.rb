class ChildrenController < ApplicationController
  def new
    @child = Child.new
  end

  def create
    # @child = Child.create
  end
end
