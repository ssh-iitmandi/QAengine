require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "login with invalid information" do
    get login_path
    post login_path, params: { session: { username: "", password: "" } }
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
end
