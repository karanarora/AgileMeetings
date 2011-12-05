require 'test_helper'

class MinutesOfMeetingsControllerTest < ActionController::TestCase
  setup do
    @minutes_of_meeting = minutes_of_meetings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:minutes_of_meetings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create minutes_of_meeting" do
    assert_difference('MinutesOfMeeting.count') do
      post :create, :minutes_of_meeting => @minutes_of_meeting.attributes
    end

    assert_redirected_to minutes_of_meeting_path(assigns(:minutes_of_meeting))
  end

  test "should show minutes_of_meeting" do
    get :show, :id => @minutes_of_meeting.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @minutes_of_meeting.to_param
    assert_response :success
  end

  test "should update minutes_of_meeting" do
    put :update, :id => @minutes_of_meeting.to_param, :minutes_of_meeting => @minutes_of_meeting.attributes
    assert_redirected_to minutes_of_meeting_path(assigns(:minutes_of_meeting))
  end

  test "should destroy minutes_of_meeting" do
    assert_difference('MinutesOfMeeting.count', -1) do
      delete :destroy, :id => @minutes_of_meeting.to_param
    end

    assert_redirected_to minutes_of_meetings_path
  end
end
