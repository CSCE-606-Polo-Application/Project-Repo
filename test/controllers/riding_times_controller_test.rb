require "test_helper"

class RidingTimesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get riding_times_index_url
    assert_response :success
  end
end
