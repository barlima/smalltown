require 'test_helper'

class TripTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    # This code is not idiomatically correct.
    @trip = @user.trips.build(name: "My Trip", start_date: DateTime.now, end_date: DateTime.now + 2)
  end

  test "should be valid" do
    assert @trip.valid?
  end

  test "user id should be present" do
    @trip.user_id = nil
    assert_not @trip.valid?
  end

  test "name should be present" do
    @trip.name = "   "
    assert_not @trip.valid?
  end

  test "name should be at most 24 characters" do
    @trip.name = "a" * 25
    assert_not @trip.valid?
  end

  test "order should be most recent first" do
    assert_equal trips(:two), Trip.first
  end

end
