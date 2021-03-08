require '../kata-test-framework.rb'
require './index.rb'

Test.assert_equals(rgb(0, 0, 0), '000000')
Test.assert_equals(rgb(0, 0, -20), '000000')
Test.assert_equals(rgb(300,255,255), 'FFFFFF')
Test.assert_equals(rgb(173,255,47), 'ADFF2F')