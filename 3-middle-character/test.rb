require '../kata-test-framework.rb'
require './index.rb'

Test.describe("Basic tests") do
    Test.assert_equals(get_middle("test"),"es")
    Test.assert_equals(get_middle("testing"),"t")
    Test.assert_equals(get_middle("middle"),"dd")
    Test.assert_equals(get_middle("A"),"A")
    Test.assert_equals(get_middle("of"),"of")
end