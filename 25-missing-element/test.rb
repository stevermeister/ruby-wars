require '../kata-test-framework.rb'
require './index.rb'


Test.describe "Fixed tests" do
    Test.it "should pass fixed tests" do
      Test.assert_equals(get_missing_element([0,5,1,3,2,9,7,6,4]), 8)
      Test.assert_equals(get_missing_element([9,2,4,5,7,0,8,6,1]), 3)
    end
  end