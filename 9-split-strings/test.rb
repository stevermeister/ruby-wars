require '../kata-test-framework.rb'
require './index.rb'

Test.assert_equals(solution("abcdef"), ["ab", "cd", "ef"])
Test.assert_equals(solution("abcdefg"), ["ab", "cd", "ef", "g_"])
Test.assert_equals(solution(""), [])