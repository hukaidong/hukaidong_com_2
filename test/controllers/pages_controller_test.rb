require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get navigations" do
    get pages_navigations_url
    assert_response :success
  end

  test "should get accounting-widget" do
    get pages_accounting-widget_url
    assert_response :success
  end
end
