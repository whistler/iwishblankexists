require 'test_helper'

class WishnamesControllerTest < ActionController::TestCase
  setup do
    @wishname = wishnames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wishnames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wishname" do
    assert_difference('Wishname.count') do
      post :create, wishname: { name: @wishname.name }
    end

    assert_redirected_to wishname_path(assigns(:wishname))
  end

  test "should show wishname" do
    get :show, id: @wishname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wishname
    assert_response :success
  end

  test "should update wishname" do
    put :update, id: @wishname, wishname: { name: @wishname.name }
    assert_redirected_to wishname_path(assigns(:wishname))
  end

  test "should destroy wishname" do
    assert_difference('Wishname.count', -1) do
      delete :destroy, id: @wishname
    end

    assert_redirected_to wishnames_path
  end
end
