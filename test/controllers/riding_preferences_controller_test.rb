require "test_helper"

class RidingPreferencesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get riding_preferences_index_url
    assert_response :success
  end
end
