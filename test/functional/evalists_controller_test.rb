require 'test_helper'

class EvalistsControllerTest < ActionController::TestCase
  setup do
    @evalist = evalists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evalists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evalist" do
    assert_difference('Evalist.count') do
      post :create, evalist: { evaluator_id: @evalist.evaluator_id, user_id: @evalist.user_id }
    end

    assert_redirected_to evalist_path(assigns(:evalist))
  end

  test "should show evalist" do
    get :show, id: @evalist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evalist
    assert_response :success
  end

  test "should update evalist" do
    put :update, id: @evalist, evalist: { evaluator_id: @evalist.evaluator_id, user_id: @evalist.user_id }
    assert_redirected_to evalist_path(assigns(:evalist))
  end

  test "should destroy evalist" do
    assert_difference('Evalist.count', -1) do
      delete :destroy, id: @evalist
    end

    assert_redirected_to evalists_path
  end
end
