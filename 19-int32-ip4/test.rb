require '../kata-test-framework.rb'
require './index.rb'

Test.assert_equals(int32_to_ip(2154959208), "128.114.17.104") 
Test.assert_equals(int32_to_ip(0), "0.0.0.0")
Test.assert_equals(int32_to_ip(2149583361), "128.32.10.1")