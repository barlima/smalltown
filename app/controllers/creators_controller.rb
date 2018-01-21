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
    # @points = @user.points
    @new_path = @user.paths.new
    @active = 'paths'
    @points_id = 'inactive'
    @paths_id = 'active'
    render 'index'
  end

  def edit
  end

  def create_point
    @user = current_user
    @point = @user.points.new(point_params)
    if @point.save
      flash[:success] = 'Point created successfully!'
    else
      flash[:danger] = 'Cannot save the point'
    end
    redirect_to create_points_path
  end

  def create_path
    @user = current_user
    @path = @user.paths.new(path_params)
    if @path.save
      flash[:success] = 'Path created successfully!'
    else
      flash[:danger] = 'Connot save this path'
    end
    redirect_to create_paths_path
  end



  private

  def point_params
    params.require(:point).permit(:name, :longitude, :latitude, :category,
                                  :avg_time_min, :avg_time_max, :description, :user_id)
  end

  def path_params
    params.require(:path).permit(:name, :user_id)
  end

end
