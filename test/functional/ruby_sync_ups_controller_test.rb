require 'test_helper'

class RubySyncUpsControllerTest < ActionController::TestCase
  setup do
    @ruby_sync_up = ruby_sync_ups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ruby_sync_ups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ruby_sync_up" do
    assert_difference('RubySyncUp.count') do
      post :create, :ruby_sync_up => @ruby_sync_up.attributes
    end

    assert_redirected_to ruby_sync_up_path(assigns(:ruby_sync_up))
  end

  test "should show ruby_sync_up" do
    get :show, :id => @ruby_sync_up.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ruby_sync_up.to_param
    assert_response :success
  end

  test "should update ruby_sync_up" do
    put :update, :id => @ruby_sync_up.to_param, :ruby_sync_up => @ruby_sync_up.attributes
    assert_redirected_to ruby_sync_up_path(assigns(:ruby_sync_up))
  end

  test "should destroy ruby_sync_up" do
    assert_difference('RubySyncUp.count', -1) do
      delete :destroy, :id => @ruby_sync_up.to_param
    end

    assert_redirected_to ruby_sync_ups_path
  end
end
