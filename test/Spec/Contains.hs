module Spec.Contains (containsStringTest) where

import Contains
import Test.Tasty.HUnit
import Test.Tasty

containsStringTest :: TestTree
containsStringTest = testCase "see if string apple is in apple-sauce"
  (assertEqual "Should return true" True  (Contains.containsString "apple" "apple-sauce"))

