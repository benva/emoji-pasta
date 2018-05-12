module String ( addEmoji, clean, contains, findMatches, splitWords ) where

import qualified Data.List.Split
import qualified Data.Char
import qualified Data.List
import qualified Emoji

addEmoji :: String -> [String] -> [String]
addEmoji emoji [] = []
addEmoji emoji (x:y) = x : emoji : addEmoji emoji y

clean :: String -> [String]
clean = map (lowerCase . removePunc) . splitWords

contains :: String -> String -> Bool
contains = Data.List.isInfixOf

-- findEmoji :: String -> String -> String
-- findEmoji word emoji = if word `contains` emoji then ":" ++ emoji ++ ":" else ""

findMatches :: [String] -> [String]
findMatches keywords = Data.List.intersectBy Data.List.isInfixOf keywords Emoji.table

splitWords :: String -> [String]
splitWords = Data.List.Split.splitOn " "

--

lowerCase :: String -> String
lowerCase = map Data.Char.toLower

removePunc :: String -> String
removePunc word = [ clean | clean <- word, clean `notElem` specialChars ]

--

specialChars :: String
specialChars = ",.?!-:;\"\'()=*&^%$#@`~[]{}\\/<>_+"