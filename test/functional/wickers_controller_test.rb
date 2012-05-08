require 'test_helper'

class WickersControllerTest < ActionController::TestCase
  setup do
    @wicker = wickers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wickers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wicker" do
    assert_difference('Wicker.count') do
      post :create, wicker: { location: @wicker.location, name: @wicker.name }
    end

    assert_redirected_to wicker_path(assigns(:wicker))
  end

  test "should show wicker" do
    get :show, id: @wicker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wicker
    assert_response :success
  end

  test "should update wicker" do
    put :update, id: @wicker, wicker: { location: @wicker.location, name: @wicker.name }
    assert_redirected_to wicker_path(assigns(:wicker))
  end

  test "should destroy wicker" do
    assert_difference('Wicker.count', -1) do
      delete :destroy, id: @wicker
    end

    assert_redirected_to wickers_path
  end
end
