require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "protected admin page" do
      get :index
      unless session[:user_id]
          assert_redirected_to login_url
      end
      assert_response :success
  end

  test "protected admin page success" do
      login_as(:one)
      get :index
      assert_response :success
  end

  test "protected admin page failure" do
      session[:user_id] = nil
      get :index
      assert_redirected_to login_url
  end
end
