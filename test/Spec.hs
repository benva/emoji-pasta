module Main where

  import qualified Test.Tasty as Tasty
  import qualified Spec.String as String

  allTests = String.containsTest ++ []

  main :: IO ()
  main = Tasty.defaultMain (Tasty.testGroup "Our Library Tests" allTests )
