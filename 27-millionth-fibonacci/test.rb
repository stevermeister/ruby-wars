require '../kata-test-framework.rb'
require './index.rb'

Test.describe "Basic tests" do
    Test.it "fib 0" do Test.assert_equals fib(0), 0 end
    Test.it "fib 1" do Test.assert_equals fib(1), 1 end
    Test.it "fib 2" do Test.assert_equals fib(2), 1 end
    Test.it "fib 3" do Test.assert_equals fib(3), 2 end
    Test.it "fib 4" do Test.assert_equals fib(4), 3 end
    Test.it "fib 5" do Test.assert_equals fib(5), 5 end
  end