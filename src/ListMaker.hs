module ListMaker where

import qualified Emoji
import qualified Data.List

kindaRandomEmoji :: String -> Int
kindaRandomEmoji str = length Emoji.table `mod` length str + 7

createEmojiList :: String -> [String] ->  [String]
createEmojiList str [] = [Emoji.table !! kindaRandomEmoji str]
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