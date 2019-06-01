require 'test_helper'

class BookshopsControllerTest < ActionDispatch::IntegrationTest

    test "should get index" do
        get bookshops_url
        assert_response :success
    end

    test "should get new" do
        get new_bookshop_path
        assert_response :success
    end

end
