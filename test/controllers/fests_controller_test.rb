require 'test_helper'

class FestsControllerTest < ActionController::TestCase
  setup do
    @fest = fests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fest" do
    assert_difference('Fest.count') do
      post :create, fest: { description: @fest.description, end_date: @fest.end_date, name: @fest.name, start_date: @fest.start_date }
    end

    assert_redirected_to fest_path(assigns(:fest))
  end

  test "should show fest" do
    get :show, id: @fest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fest
    assert_response :success
  end

  test "should update fest" do
    patch :update, id: @fest, fest: { description: @fest.description, end_date: @fest.end_date, name: @fest.name, start_date: @fest.start_date }
    assert_redirected_to fest_path(assigns(:fest))
  end

  test "should destroy fest" do
    assert_difference('Fest.count', -1) do
      delete :destroy, id: @fest
    end

    assert_redirected_to fests_path
  end
end
