module Lib ( main ) where

import Parse

main :: IO ()
main = do
  putStrLn "Type a sentence that you want to emojify:"
  sentence <- getLine
  let keywords = parseSentence sentence
  let emojified = addEmoji "^" (splitWords sentence)
  print $ unwords emojified