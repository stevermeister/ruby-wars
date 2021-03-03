require '../kata-test-framework.rb'
require './index.rb'

Test.describe "Simple tests" do
    Test.it "should pass simple tests" do
      Test.assert_equals(find_outlier([0, 1, 2]), 1)
      Test.assert_equals(find_outlier([1, 2, 3]), 2)
    end
  end