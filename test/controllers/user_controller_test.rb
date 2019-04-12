require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get following" do
    get user_following_url
    assert_response :success
  end

  test "should get followers" do
    get user_followers_url
    assert_response :success
  end

end
