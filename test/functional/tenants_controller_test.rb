require 'test_helper'

class TenantsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tenants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tenant" do
    assert_difference('Tenant.count') do
      post :create, :tenant => { }
    end

    assert_redirected_to tenant_path(assigns(:tenant))
  end

  test "should show tenant" do
    get :show, :id => tenants(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tenants(:one).to_param
    assert_response :success
  end

  test "should update tenant" do
    put :update, :id => tenants(:one).to_param, :tenant => { }
    assert_redirected_to tenant_path(assigns(:tenant))
  end

  test "should destroy tenant" do
    assert_difference('Tenant.count', -1) do
      delete :destroy, :id => tenants(:one).to_param
    end

    assert_redirected_to tenants_path
  end
end
