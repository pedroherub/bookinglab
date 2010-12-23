require 'test_helper'

class StudentSessionsControllerTest < ActionController::TestCase
  setup do
    @student_session = student_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_session" do
    assert_difference('StudentSession.count') do
      post :create, :student_session => @student_session.attributes
    end

    assert_redirected_to student_session_path(assigns(:student_session))
  end

  test "should show student_session" do
    get :show, :id => @student_session.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student_session.to_param
    assert_response :success
  end

  test "should update student_session" do
    put :update, :id => @student_session.to_param, :student_session => @student_session.attributes
    assert_redirected_to student_session_path(assigns(:student_session))
  end

  test "should destroy student_session" do
    assert_difference('StudentSession.count', -1) do
      delete :destroy, :id => @student_session.to_param
    end

    assert_redirected_to student_sessions_path
  end
end
