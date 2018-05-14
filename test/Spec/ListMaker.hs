module Spec.ListMaker (listMakerTest) where

  import qualified ListMaker
  import qualified Emoji
  import Test.Tasty.HUnit
  import Test.Tasty

  -- all my tests are combined before i export it
  listMakerTest = [createEmojiListTest]

  createEmojiListTest :: TestTree
  createEmojiListTest = testCase "Testing createEmojiList"
    (assertEqual "returns all matches" ["smiley","smile","sweat_smile","smiley_cat","smile_cat"] (ListMaker.createEmojiList "smile" Emoji.table))

