module Main where

  import qualified Test.Tasty as Tasty
  -- import qualified Spec.String as String
  import qualified Spec.ListMaker
  import qualified Spec.Random

  allTests = Spec.Random.allRandomTest ++ Spec.ListMaker.listMakerTest ++ []

  main :: IO ()
  main = Tasty.defaultMain (Tasty.testGroup "Our Library Tests" allTests)
