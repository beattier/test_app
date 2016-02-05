require 'test_helper'

class MealtypesControllerTest < ActionController::TestCase
  setup do
    @mealtype = mealtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mealtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mealtype" do
    assert_difference('Mealtype.count') do
      post :create, mealtype: { description: @mealtype.description, name: @mealtype.name }
    end

    assert_redirected_to mealtype_path(assigns(:mealtype))
  end

  test "should show mealtype" do
    get :show, id: @mealtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mealtype
    assert_response :success
  end

  test "should update mealtype" do
    patch :update, id: @mealtype, mealtype: { description: @mealtype.description, name: @mealtype.name }
    assert_redirected_to mealtype_path(assigns(:mealtype))
  end

  test "should destroy mealtype" do
    assert_difference('Mealtype.count', -1) do
      delete :destroy, id: @mealtype
    end

    assert_redirected_to mealtypes_path
  end
end
