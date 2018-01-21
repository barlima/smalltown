class PathsController < ApplicationController

  def destroy
    @path = Path.find(params[:id])
    @path.destroy
    flash[:success] = 'Path deleted successfully'
    redirect_to create_paths_path
  end

  def create
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

  def path_params
    params.require(:path).permit(:name, :user_id)
  end

end
