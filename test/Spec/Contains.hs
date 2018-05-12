module Spec.Contains (containsTest) where

import Contains
import Test.Tasty.HUnit
import Test.Tasty

-- all my tests are combined before i export it
containsTest = [containsStringTest, returnStringTest]

containsStringTest :: TestTree
containsStringTest = testCase "Testing containsString"
  (assertEqual "return true" True  (Contains.containsString "apple" "apple-sauce"))

returnStringTest :: TestTree
returnStringTest = testCase "Testing returnString"
  (assertEqual "return :apple-sauce:" ":apple-sauce:"  (Contains.returnString "apple" "apple-sauce"))
