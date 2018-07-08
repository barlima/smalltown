module GuidesHelper
  def list_active
    return 'active in' if cookies[:active_tab] != 'map'
  end

  def map_active
    return 'active in' if cookies[:active_tab] == 'map'
  end
end
