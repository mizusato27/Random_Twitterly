require "test_helper"

class ThemesControllerTest < ActionDispatch::IntegrationTest
  test "should get random and redirect" do
    get themes_random_path
    assert_response :redirect
  end
end
