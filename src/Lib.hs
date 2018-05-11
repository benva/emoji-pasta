module Lib ( main ) where

import qualified Parse

main :: IO ()
main = do
  putStrLn "Type a sentence that you want to emojify:"
  sentence <- getLine
  let keywords = Parse.clean sentence
  let emojified = Parse.addEmoji "^" (Parse.splitWords sentence)
  print $ unwords emojified