module Lib ( main ) where

import qualified String
import qualified Emoji

main :: IO ()
main = do
  putStrLn "Type a sentence that you want to emojify:"
  sentence <- getLine
  -- let keywords = String.clean sentence
  -- print $ map (`elem` Emoji.table) keywords
  let emojified = String.addEmoji "^" (String.splitWords sentence)
  print $ unwords emojified