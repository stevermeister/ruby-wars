require '../kata-test-framework.rb'
require './index.rb'


describe "Longest Common Subsequence" do
    it "Example tests" do
      Test.assert_equals(lcs("", "" ), "" )
      Test.assert_equals(lcs("abc", "" ), "" )
      Test.assert_equals(lcs("", "abc" ), "" )
      Test.assert_equals(lcs("a", "b" ), "" )
      Test.assert_equals(lcs("a", "a" ), "a" )
      Test.assert_equals(lcs("abc", "ac" ), "ac" )
      Test.assert_equals(lcs("abcdef", "abc" ), "abc" )
      Test.assert_equals(lcs("abcdef", "acf" ), "acf" )
      Test.assert_equals(lcs("anothertest", "notatest" ), "nottest" )
      Test.assert_equals(lcs("132535365", "123456789" ), "12356" )
      Test.assert_equals(lcs("nothardlythefinaltest", "zzzfinallyzzz" ), "final" )
      Test.assert_equals(lcs("abcdefghijklmnopq", "apcdefghijklmnobq" ), "acdefghijklmnoq" )
    end
  end