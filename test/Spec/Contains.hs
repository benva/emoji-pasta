module Spec.Contains (containsTest) where

import Contains
import Test.Tasty.HUnit
import Test.Tasty

-- all my tests are combined before i export it
containsTest = [containsStringTest, returnStringTest]

containsStringTest :: TestTree
containsStringTest = testCase "see if string apple is in apple-sauce"
  (assertEqual "Should return true" True  (Contains.containsString "apple" "apple-sauce"))

returnStringTest :: TestTree
returnStringTest = testCase "return an emoji"
  (assertEqual "Should return :apple:" ":apple-sauce:"  (Contains.returnString "apple" "apple-sauce"))
