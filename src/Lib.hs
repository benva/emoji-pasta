module Lib ( main ) where

import Parse

main :: IO ()
main = do
  putStrLn "Type a sentence that you want to emojify:"
  sentence <- getLine
  print $ parseSentence sentence