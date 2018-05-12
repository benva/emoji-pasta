module Lib ( main ) where

import qualified String

main :: IO ()
main = do
  putStrLn "Type a sentence that you want to emojify:"
  sentence <- getLine
  let keywords = String.clean sentence
  let matches = String.findMatches keywords
  print matches
  -- let emojified = unwords $ String.addEmoji "^" (String.splitWords sentence)
  -- print emojified