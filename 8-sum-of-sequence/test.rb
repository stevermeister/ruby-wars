require '../kata-test-framework.rb'
require './index.rb'

describe "Example Tests" do
    Test.assert_equals(get_sum(0,1),1)
    Test.assert_equals(get_sum(0,-1),-1)
    Test.assert_equals(get_sum(1,2),3)
    Test.assert_equals(get_sum(5,-1),14)
  end
  