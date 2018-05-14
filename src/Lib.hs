module Lib ( main ) where

import qualified String
import qualified ListMaker
import qualified Emoji

main :: IO ()
main = do
  putStrLn "Type a sentence that you want to emojify:"
  sentence <- getLine
  let keywords = String.clean sentence
  let matches = map (`ListMaker.createEmojiList` Emoji.table) keywords
  let emojis = ListMaker.chooseEmoji matches
  let splitSentence = String.split sentence
  let emojified = ListMaker.addEmoji splitSentence emojis
  print $ unwords emojified