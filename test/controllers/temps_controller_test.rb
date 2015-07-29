require 'test_helper'

class TempsControllerTest < ActionController::TestCase
  setup do
    @temp = temps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temp" do
    assert_difference('Temp.count') do
      post :create, temp: { article_id: @temp.article_id, body: @temp.body, user_id: @temp.user_id }
    end

    assert_redirected_to temp_path(assigns(:temp))
  end

  test "should show temp" do
    get :show, id: @temp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temp
    assert_response :success
  end

  test "should update temp" do
    patch :update, id: @temp, temp: { article_id: @temp.article_id, body: @temp.body, user_id: @temp.user_id }
    assert_redirected_to temp_path(assigns(:temp))
  end

  test "should destroy temp" do
    assert_difference('Temp.count', -1) do
      delete :destroy, id: @temp
    end

    assert_redirected_to temps_path
  end
end