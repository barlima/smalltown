module CreatorHelper
  def points_active
    return 'active in' if cookies[:active_tab] != 'paths'
  end

  def paths_active
    return 'active in' if cookies[:active_tab] == 'paths'
  end
end
