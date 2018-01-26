require 'test_helper'

class GuidesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guides_path
    assert_response :success
  end

  test "should get show" do
    @guide = guides(:one)
    get guide_url @guide
    assert_response :success
  end

end
