class GuidesController < ApplicationController

  def index
    @guides = Guide.paginate(page: params[:page])
  end

  def show
  end

  def user
  end
end
