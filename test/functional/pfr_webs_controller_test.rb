require 'test_helper'

class PfrWebsControllerTest < ActionController::TestCase
  setup do
    @pfr_web = pfr_webs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pfr_webs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pfr_web" do
    assert_difference('PfrWeb.count') do
      post :create, pfr_web: {  }
    end

    assert_redirected_to pfr_web_path(assigns(:pfr_web))
  end

  test "should show pfr_web" do
    get :show, id: @pfr_web
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pfr_web
    assert_response :success
  end

  test "should update pfr_web" do
    put :update, id: @pfr_web, pfr_web: {  }
    assert_redirected_to pfr_web_path(assigns(:pfr_web))
  end

  test "should destroy pfr_web" do
    assert_difference('PfrWeb.count', -1) do
      delete :destroy, id: @pfr_web
    end

    assert_redirected_to pfr_webs_path
  end
end
