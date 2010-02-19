require 'test_helper'

class SpecialsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special" do
    assert_difference('Special.count') do
      post :create, :special => { }
    end

    assert_redirected_to special_path(assigns(:special))
  end

  test "should show special" do
    get :show, :id => specials(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => specials(:one).to_param
    assert_response :success
  end

  test "should update special" do
    put :update, :id => specials(:one).to_param, :special => { }
    assert_redirected_to special_path(assigns(:special))
  end

  test "should destroy special" do
    assert_difference('Special.count', -1) do
      delete :destroy, :id => specials(:one).to_param
    end

    assert_redirected_to specials_path
  end
end
