require '../kata-test-framework.rb'
require './index.rb'


Test.expect(!alphanumeric?(""))
Test.expect(!alphanumeric?("hello world_"))
Test.expect(alphanumeric?("HELLOworld123"))