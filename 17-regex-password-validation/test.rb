require '../kata-test-framework.rb'
require './index.rb'


Test.describe("Basic tests") do
    Test.assert_equals((regex=~'fjd3IR9')==0, true)
    Test.assert_equals((regex=~'ghdfj32')==0, false)
    Test.assert_equals((regex=~'DSJKHD23')==0, false)
    Test.assert_equals((regex=~'dsF43')==0, false)
    Test.assert_equals((regex=~'4fdg5Fj3')==0, true)
    Test.assert_equals((regex=~'DHSJdhjsU')==0, false)
    Test.assert_equals((regex=~'fjd3IR9.;')==0, false)
    Test.assert_equals((regex=~'fjd3  IR9')==0, false)
    Test.assert_equals((regex=~'djI38D55')==0, true)
    Test.assert_equals((regex=~'a2.d412')==0, false)
    Test.assert_equals((regex=~'JHD5FJ53')==0, false)
    Test.assert_equals((regex=~'!fdjn345')==0, false)
    Test.assert_equals((regex=~'jfkdfj3j')==0, false)
    Test.assert_equals((regex=~'123')==0, false)
    Test.assert_equals((regex=~'abc')==0, false)
    Test.assert_equals((regex=~'123abcABC')==0, true)
    Test.assert_equals((regex=~'ABC123abc')==0, true)
    Test.assert_equals((regex=~'Password123')==0, true)
end