require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get omniauth_callbacks" do
    get :omniauth_callbacks
    assert_response :success
  end

end
