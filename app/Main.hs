module Main where

import Lib

main :: IO ()
main = do
  sentence <- getLine
  print (parseSentence sentence)