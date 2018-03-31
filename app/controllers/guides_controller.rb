class GuidesController < ApplicationController

  def index
    @guides = Guide.paginate(page: params[:page])
    @active = params[:type] || 'list'

    case params[:type]
    when 'map'
      @list_id = 'inactive'
      @show_map_id = 'active'
    else
      @list_id = 'active'
      @show_map_id = 'inactive'
    end
  end

  def show
  end

  def user
  end
end
