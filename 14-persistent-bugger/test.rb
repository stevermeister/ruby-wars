require '../kata-test-framework.rb'
require './index.rb'

Test.describe "Persistence" do
    Test.it "Basic tests" do
      Test.assert_equals(persistence(39),3)
      Test.assert_equals(persistence(4),0)
      Test.assert_equals(persistence(25),2)
      Test.assert_equals(persistence(999),4)
      Test.assert_equals(persistence(444),3)
    end
  end