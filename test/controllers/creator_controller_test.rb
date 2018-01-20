require 'test_helper'

class CreatorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get creator_index_url
    assert_response :success
  end

  # ToDo: create a point and test its accessability
  # test "should get edit" do
  #   get edit_creator_url
  #   assert_response :success
  # end

end
