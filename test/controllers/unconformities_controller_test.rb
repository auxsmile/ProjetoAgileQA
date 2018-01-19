require 'test_helper'

class UnconformitiesControllerTest < ActionController::TestCase
  setup do
    @unconformity = unconformities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unconformities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unconformity" do
    assert_difference('Unconformity.count') do
      post :create, unconformity: { audit_id: @unconformity.audit_id, description: @unconformity.description, name: @unconformity.name }
    end

    assert_redirected_to unconformity_path(assigns(:unconformity))
  end

  test "should show unconformity" do
    get :show, id: @unconformity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unconformity
    assert_response :success
  end

  test "should update unconformity" do
    patch :update, id: @unconformity, unconformity: { audit_id: @unconformity.audit_id, description: @unconformity.description, name: @unconformity.name }
    assert_redirected_to unconformity_path(assigns(:unconformity))
  end

  test "should destroy unconformity" do
    assert_difference('Unconformity.count', -1) do
      delete :destroy, id: @unconformity
    end

    assert_redirected_to unconformities_path
  end
end
