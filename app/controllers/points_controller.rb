class PointsController < ApplicationController

  def destroy
    @point = Point.find(params[:id])
    @point.destroy
    flash[:success] = 'Point deleted successfully'
    redirect_to create_points_path
  end

  def create
    @user = current_user
    @point = @user.points.new(point_params)
    if @point.save
      flash[:success] = 'Point created successfully!'
    else
      flash[:danger] = 'Cannot save the point'
    end
    redirect_to create_points_path
  end

  private

  def point_params
    params.require(:point).permit(:name, :longitude, :latitude, :category,
                                  :avg_time_min, :avg_time_max, :description, :user_id)
  end

end
