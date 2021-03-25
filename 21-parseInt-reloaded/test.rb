require '../kata-test-framework.rb'
require './index.rb'

Test.assert_equals(parse_int('one'), 1)
Test.assert_equals(parse_int('twenty'), 20)
Test.assert_equals(parse_int('two hundred forty-six'), 246)