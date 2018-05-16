module Spec.Random (allRandomTest) where

  import Random
  import Test.Tasty.HUnit
  import Test.Tasty

  allRandomTest = [randomTest]

  randomTest :: TestTree
  randomTest = testCase "Testing stupidRandom"
    (assertEqual "return 3" 3 (Random.stupidNumber "abc"))


