require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get new_order" do
    get :new_order
    assert_response :success
  end

  test "should get new_list" do
    get :new_list
    assert_response :success
  end

  test "should get view_list" do
    get :view_list
    assert_response :success
  end

  test "should get view_order" do
    get :view_order
    assert_response :success
  end

end
