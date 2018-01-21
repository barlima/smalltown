class CreatorsController < ApplicationController

  def new_point
    @user = current_user
    @points = @user.points
    @new_point = @user.points.new

    @active = 'points'
    @points_id = 'active'
    @paths_id = 'inactive'

    render 'index'
  end

  def new_path
    @user = current_user
    @new_path = @user.paths.new

    @active = 'paths'
    @points_id = 'inactive'
    @paths_id = 'active'

    render 'index'
  end

  def edit
  end

end
