require '../kata-test-framework.rb'
require './index.rb'

Test.describe('testing exp_sum') do
    Test.it('***** Very basic tests *****')do 
    Test.assert_equals(exp_sum(-1), 0)
    Test.assert_equals(exp_sum(0), 1)
    Test.assert_equals(exp_sum(1), 1)
    Test.assert_equals(exp_sum(2), 2)
    Test.assert_equals(exp_sum(3), 3)
    end
    puts '_____ So far so good _____'
    Test.it('***** Funcionality tests *****') do
    Test.assert_equals(exp_sum(4), 5)
    Test.assert_equals(exp_sum(5), 7)
    Test.assert_equals(exp_sum(10), 42)
    end
end