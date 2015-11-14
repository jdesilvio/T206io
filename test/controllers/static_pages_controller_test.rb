require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get landing" do
    get :landing
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contribute" do
    get :contribute
    assert_response :success
  end

end
