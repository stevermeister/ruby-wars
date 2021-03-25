require '../kata-test-framework.rb'
require './index.rb'

Test.describe "Basic tests" do
    Test.it "fib 0" do Test.assert_equals fib(0), 0 end
    Test.it "fib 1" do Test.assert_equals fib(1), 1 end
    Test.it "fib 2" do Test.assert_equals fib(2), 1 end
    Test.it "fib 3" do Test.assert_equals fib(3), 2 end
    Test.it "fib 4" do Test.assert_equals fib(4), 3 end
    Test.it "fib 5" do Test.assert_equals fib(5), 5 end

    Test.it "fib -6" do Test.assert_equals fib(-6), -8 end
    Test.it "fib -96" do Test.assert_equals fib(-96), -51680708854858323072 end
    Test.it "fib -37" do Test.assert_equals fib(-37), 24157817 end
    Test.it "fib -22" do Test.assert_equals fib(-22), -17711 end
    Test.it "fib -59" do Test.assert_equals fib(-59), 956722026041 end
    Test.it "fib -97" do Test.assert_equals fib(-97), 83621143489848422977 end
end