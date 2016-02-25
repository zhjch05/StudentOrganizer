require 'test_helper'

class UserHomeworksControllerTest < ActionController::TestCase
  setup do
    @user_homework = user_homeworks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_homeworks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_homework" do
    assert_difference('UserHomework.count') do
      post :create, user_homework: { comment: @user_homework.comment, grade: @user_homework.grade, homework_id: @user_homework.homework_id, status: @user_homework.status, user_id: @user_homework.user_id }
    end

    assert_redirected_to user_homework_path(assigns(:user_homework))
  end

  test "should show user_homework" do
    get :show, id: @user_homework
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_homework
    assert_response :success
  end

  test "should update user_homework" do
    patch :update, id: @user_homework, user_homework: { comment: @user_homework.comment, grade: @user_homework.grade, homework_id: @user_homework.homework_id, status: @user_homework.status, user_id: @user_homework.user_id }
    assert_redirected_to user_homework_path(assigns(:user_homework))
  end

  test "should destroy user_homework" do
    assert_difference('UserHomework.count', -1) do
      delete :destroy, id: @user_homework
    end

    assert_redirected_to user_homeworks_path
  end
end
