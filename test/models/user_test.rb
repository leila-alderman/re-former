require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = User.new(username: "Example User", email: "user@example.com", password: "mycat")
  end

  test "example should be valid" do
    assert @user.valid?
  end

  test "username should exist" do
    @user.username = " " * 10
    assert_not @user.valid?
  end

  test "email should exist" do
    @user.email = " " * 15
    assert_not @user.valid?
  end

  test "password should exist" do
    @user.password = " " * 10
    assert_not @user.valid?
  end
end
