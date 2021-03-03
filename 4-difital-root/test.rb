require '../kata-test-framework.rb'
require './index.rb'

Test.describe "Fixed tests" do
    Test.it "should pass fixed tests" do
      Test.assert_equals(digital_root(16), 7)
      Test.assert_equals(digital_root(942), 6)
      Test.assert_equals(digital_root(132189), 6)
      Test.assert_equals(digital_root(493193), 2)
    end
  end