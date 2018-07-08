class CreatorsController < ApplicationController

  def index
    @user = current_user
    @points = @user.points
    @new_point = @user.points.new
    @new_path = @user.paths.new
  end

  def edit
  end

end
