module Lib ( parseSentence ) where

import Data.List.Split

specialChars = ",.?!-:;\"\'()=*&^%$#@`~[]{}\\/<>_+"

parseSentence :: String -> [String]
parseSentence = map removePunc . splitWords

removePunc :: String -> String
removePunc word = [ clean | clean <- word, clean `notElem` specialChars ]

splitWords :: String -> [String]
splitWords = splitOn " "