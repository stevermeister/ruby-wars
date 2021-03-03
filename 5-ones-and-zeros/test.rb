require '../kata-test-framework.rb'
require './index.rb'


Test.describe("Example tests") do 
    Test.assert_equals(binary_array_to_number([0,0,0,1]), 1)
    Test.assert_equals(binary_array_to_number([0,0,1,0]), 2)
    Test.assert_equals(binary_array_to_number([1,1,1,1]), 15)
    Test.assert_equals(binary_array_to_number([0,1,1,0]), 6)
end