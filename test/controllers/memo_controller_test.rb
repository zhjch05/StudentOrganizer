require 'test_helper'

class MemoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
