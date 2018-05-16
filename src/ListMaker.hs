module ListMaker ( chooseEmojiFromList, addEmoji ) where

import qualified Emoji
import qualified Data.List
import qualified Random

createEmojiList :: String -> [String] ->  [String]
createEmojiList str [] = [Random.chooseRandomEmoji str]
createEmojiList str (x:xs)
    | str `Data.List.isInfixOf` x = x : createEmojiList str xs
    | otherwise = createEmojiList str xs

emojiTableOutcomes :: String -> [String]
emojiTableOutcomes str = createEmojiList str Emoji.table

chooseEmojiFromList :: String -> String
chooseEmojiFromList str =
    emojiTableOutcomes str
    !! mod (Random.stupidNumber str) (length $ emojiTableOutcomes str)

addEmoji :: [String] -> [String] -> [String]
addEmoji xs [] = xs
addEmoji [] ys = ys
addEmoji (x:xs) (y:ys) = x : y : addEmoji xs ys