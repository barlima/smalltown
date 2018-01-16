require 'test_helper'

class TripsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  test "should get new" do
    log_in_as(@user)
    get trips_new_path
    assert_response :success
  end

  # test "should get edit" do
  #   log_in_as(@user)
  #   get trips_edit_path
  #   assert_response :success
  # end

end
