module Lib ( main ) where

import qualified Parse
import qualified Emoji

main :: IO ()
main = do
  putStrLn "Type a sentence that you want to emojify:"
  sentence <- getLine
  let keywords = Parse.clean sentence
  let emojified = Parse.addEmoji "^" (Parse.splitWords sentence)
  print $ map (`elem` Emoji.table) keywords
  -- print $ unwords emojified