require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

    test "should get new" do
      get new_user_registration_path
      assert_response :success
    end

    test "should get login" do
        get new_user_session_path
        assert_response :success
    end

end
