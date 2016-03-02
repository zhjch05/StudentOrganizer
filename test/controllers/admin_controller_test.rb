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
      dave = 
      get :index
      unless session[:user_id]
          assert_redirected_to login_url
      end
      assert_response :success
  end

end
