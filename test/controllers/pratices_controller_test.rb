require 'test_helper'

class PraticesControllerTest < ActionController::TestCase
  setup do
    @pratice = pratices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pratices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pratice" do
    assert_difference('Pratice.count') do
      post :create, pratice: { description: @pratice.description, name: @pratice.name }
    end

    assert_redirected_to pratice_path(assigns(:pratice))
  end

  test "should show pratice" do
    get :show, id: @pratice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pratice
    assert_response :success
  end

  test "should update pratice" do
    patch :update, id: @pratice, pratice: { description: @pratice.description, name: @pratice.name }
    assert_redirected_to pratice_path(assigns(:pratice))
  end

  test "should destroy pratice" do
    assert_difference('Pratice.count', -1) do
      delete :destroy, id: @pratice
    end

    assert_redirected_to pratices_path
  end
end
