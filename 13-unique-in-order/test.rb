require '../kata-test-framework.rb'
require './index.rb'


Test.assert_equals(unique_in_order('AAAABBBCCDAABBB'), ['A','B','C','D','A','B'])
Test.assert_equals(unique_in_order('ABBCcAD'), ['A', 'B', 'C', 'c', 'A', 'D'])
Test.assert_equals(unique_in_order([1,2,2,3,3]), [1,2,3])