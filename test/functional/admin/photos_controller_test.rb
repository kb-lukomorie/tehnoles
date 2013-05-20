require 'test_helper'

class Admin::PhotosControllerTest < ActionController::TestCase
  setup do
    @admin_photo = admin_pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_photo" do
    assert_difference('Admin::Photo.count') do
      post :create, admin_photo: { title: @admin_photo.title }
    end

    assert_redirected_to admin_picture_path(assigns(:admin_photo))
  end

  test "should show admin_photo" do
    get :show, id: @admin_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_photo
    assert_response :success
  end

  test "should update admin_photo" do
    put :update, id: @admin_photo, admin_photo: { title: @admin_photo.title }
    assert_redirected_to admin_picture_path(assigns(:admin_photo))
  end

  test "should destroy admin_photo" do
    assert_difference('Admin::Photo.count', -1) do
      delete :destroy, id: @admin_photo
    end

    assert_redirected_to admin_pictures_path
  end
end
