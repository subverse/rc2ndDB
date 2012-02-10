require 'test_helper'

class User2sControllerTest < ActionController::TestCase
  setup do
    @user2 = user2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user2" do
    assert_difference('User2.count') do
      post :create, user2: @user2.attributes
    end

    assert_redirected_to user2_path(assigns(:user2))
  end

  test "should show user2" do
    get :show, id: @user2.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user2.to_param
    assert_response :success
  end

  test "should update user2" do
    put :update, id: @user2.to_param, user2: @user2.attributes
    assert_redirected_to user2_path(assigns(:user2))
  end

  test "should destroy user2" do
    assert_difference('User2.count', -1) do
      delete :destroy, id: @user2.to_param
    end

    assert_redirected_to user2s_path
  end
end
