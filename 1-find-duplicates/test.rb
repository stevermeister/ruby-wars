require '../kata-test-framework.rb'
require './index.rb'

Test.describe "Fixed tests" do
    Test.it "should pass fixed tests" do
      Test.assert_equals(duplicate_count(""), 0)
      Test.assert_equals(duplicate_count("abcde"), 0)
      Test.assert_equals(duplicate_count("abcdeaa"), 1)
      Test.assert_equals(duplicate_count("abcdeaB"), 2)
      Test.assert_equals(duplicate_count("Indivisibilities"), 2)
    end
  end