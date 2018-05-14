module ListMaker where

import qualified Data.List

createEmojiList :: String -> [String] ->  [String]
createEmojiList str [] = []
createEmojiList str (x:xs)
 | str `Data.List.isInfixOf` x = x : createEmojiList str xs
 | otherwise = createEmojiList str xs