require './spec/test_helper'

class TestAssertion < Test::Unit::TestCase
  def test_it_should_pass_if_two_numbers_are_the_same
    1.should == 1
  end

  def test_that_it_can_fail_if_two_numbers_are_different
    assert_raise(AssertionError) do
      1.should == 2
    end
  end

  def test_greater_than_is_correct
    5.should > 3
  end

  def test_greater_than_fails_if_incorrect
    assert_raise(AssertionError) do
      5.should > 9
    end
  end

  def test_less_than_pass_if_correct
    1.should < 3
  end

  def test_less_than_fails_if_incorrect
    assert_raise(AssertionError) do
      5.should < 3
    end
  end

  def test_greater_than_or_equal_is_correct_if_equal
    5.should >= 5
  end

  def test_greater_than_or_equal_is_correct_if_greater_than
    5.should >= 2
  end

  def test_greater_than_or_equal_fails_if_incorrect
    assert_raise(AssertionError) do
      5.should >= 9
    end
  end

  def test_less_than_or_equal_is_correct_if_equal
    5.should <= 5
  end

  def test_less_than_or_equal_is_correct_if_less_than
    5.should <= 9
  end

  def test_less_than_or_equal_fails_if_incorrect
    assert_raise(AssertionError) do
      5.should <= 3
    end
  end
end
