require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest

    def setup
        @comment = comments(:orange)
      end

      test "should get new" do
        get new_user_session_url
        assert_response :success
      end

end
