module Lib ( parseSentence ) where

import Data.List.Split
import Data.Char

parseSentence :: String -> [String]
parseSentence = map (lowerCase . removePunc) . splitWords

specialChars = ",.?!-:;\"\'()=*&^%$#@`~[]{}\\/<>_+"

removePunc :: String -> String
removePunc word = [ clean | clean <- word, clean `notElem` specialChars ]

lowerCase :: String -> String
lowerCase = map toLower

splitWords :: String -> [String]
splitWords = splitOn " "