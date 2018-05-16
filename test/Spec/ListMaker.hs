module Spec.ListMaker (listMakerTest) where

  import qualified ListMaker
  import qualified Emoji
  import Test.Tasty.HUnit
  import Test.Tasty

  -- all my tests are combined before i export it
  listMakerTest = [chooseEmojiFromListTest]

  chooseEmojiFromListTest :: TestTree
  chooseEmojiFromListTest = testCase "Testing chooseEmojiFromList"
    (assertEqual "returns a matching Emoji" ":star_struck:" (ListMaker.chooseEmojiFromList "what"))

