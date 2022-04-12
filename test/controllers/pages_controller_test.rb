require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get quisommesnous" do
    get pages_quisommesnous_url
    assert_response :success
  end
end
