module Main where

  import qualified Test.Tasty as Tasty
  import qualified Spec.Contains as Contains

  allTests = Contains.containsTest ++ []

  main :: IO ()
  main = do
    Tasty.defaultMain (Tasty.testGroup "Our Library Tests" allTests )
