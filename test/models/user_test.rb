require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "#full_name returns capitalized name" do
    jessica = User.new(first_name: "jessica", last_name: "pearson")
    assert_equal "Jessica Pearson", jessica.full_name
  end

  test "should not crash if user name is nil" do
    jessica = User.new(last_name: "pearson")
    assert_equal "Pearson", jessica.full_name
  end

  test "#greet returns 'Hi first_name'" do
    jessica = User.new(first_name: "jessica")
    assert_equal "Hi Jessica", jessica.greet
  end
end
