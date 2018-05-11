module Parse ( addEmoji, clean, splitWords ) where

import Data.List.Split
import Data.Char

addEmoji :: String -> [String] -> [String]
addEmoji emoji [] = []
addEmoji emoji (x:y) = x : emoji : addEmoji emoji y

clean :: String -> [String]
clean = map (lowerCase . removePunc) . splitWords

splitWords :: String -> [String]
splitWords = splitOn " "

specialChars :: String
specialChars = ",.?!-:;\"\'()=*&^%$#@`~[]{}\\/<>_+"

removePunc :: String -> String
removePunc word = [ clean | clean <- word, clean `notElem` specialChars ]

lowerCase :: String -> String
lowerCase = map toLower