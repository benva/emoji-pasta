module Emojis ( emojiCollection, printEmojis ) where

emojiCollection :: [String]
emojiCollection = ["1","2", "3", "4"]

printEmojis :: [String] -> IO()
printEmojis = mapM_ print
