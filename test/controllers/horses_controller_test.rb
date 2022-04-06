require "test_helper"

class HorsesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get horses_index_url
    assert_response :success
  end
end
