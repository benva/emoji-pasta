module ListMaker where

import qualified Data.List

createEmojiList :: String -> [String] ->  [String]
createEmojiList str [] = []
createEmojiList str (x:xs)
 | str `Data.List.isInfixOf` x = x : createEmojiList str xs
 | otherwise = createEmojiList str xs

addEmoji :: [String] -> [String] -> [String]
addEmoji xs [] = xs
addEmoji [] ys = ys
addEmoji (x:xs) (y:ys) = x : y : addEmoji xs ys

chooseEmoji :: [[String]] -> [String]
chooseEmoji = map first

first :: [[a]] -> [a]
first [] = []
first list = head list