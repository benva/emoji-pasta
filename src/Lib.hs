module Lib ( main ) where

import qualified String
import qualified ListMaker
import qualified Emoji

main :: IO ()
main = do
  putStrLn "Type a sentence that you want to emojify:"
  sentence <- getLine
  print sentence
  let emojis = map ListMaker.chooseEmojiFromList $ String.clean sentence
  let splitSentence = String.split sentence
  let emojified = ListMaker.addEmoji splitSentence emojis
  print $ unwords emojified