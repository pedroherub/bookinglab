require File.dirname(__FILE__) + '/../test_helper'

class TimeunitsControllerTest < ActionController::TestCase
  setup do
    @timeunit = timeunits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timeunits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timeunit" do
    assert_difference('Timeunit.count') do
      post :create, :timeunit => @timeunit.attributes
    end

    assert_redirected_to timeunit_path(assigns(:timeunit))
  end

  test "should show timeunit" do
    get :show, :id => @timeunit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @timeunit.to_param
    assert_response :success
  end

  test "should update timeunit" do
    put :update, :id => @timeunit.to_param, :timeunit => @timeunit.attributes
    assert_redirected_to timeunit_path(assigns(:timeunit))
  end

  test "should destroy timeunit" do
    assert_difference('Timeunit.count', -1) do
      delete :destroy, :id => @timeunit.to_param
    end

    assert_redirected_to timeunits_path
  end
end
