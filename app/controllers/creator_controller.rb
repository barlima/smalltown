class CreatorController < ApplicationController

  def index
    @user = current_user
    @points = @user.points
    @new_point = @user.points.new
  end

  def edit
  end

  def create
    @user = current_user
    @point = @user.points.new(points_params)
    if @point.save
      flash[:success] = 'Point created successfully!'
    else
      flash[:danger] = 'Cannot save the point'
    end
    redirect_to creator_index_path
  end

  private

  def points_params
    params.require(:point).permit(:name, :longitude, :latitude, :category,
                                  :avg_time_min, :avg_time_max, :description, :user_id)
  end
end
