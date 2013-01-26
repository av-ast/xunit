require "test_helper"

class FirstTest < Xunit::TestCase
  test "assert_true" do
    assert true
  end

  test "assert_false" do
    assert false
  end

  test # test w/o name

  test "without block"

  test "empty_test" do
  end

end

