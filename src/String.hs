module String ( addEmoji, clean, returnMatch, splitWords ) where

import qualified Data.List.Split
import qualified Data.Char
import qualified Data.List

addEmoji :: String -> [String] -> [String]
addEmoji emoji [] = []
addEmoji emoji (x:y) = x : emoji : addEmoji emoji y

clean :: String -> [String]
clean = map (lowerCase . removePunc) . splitWords

returnMatch :: String -> String -> String
returnMatch word emoji = if containsString word emoji then ":" ++ emoji ++ ":" else "no match"

splitWords :: String -> [String]
splitWords = Data.List.Split.splitOn " "

--

specialChars :: String
specialChars = ",.?!-:;\"\'()=*&^%$#@`~[]{}\\/<>_+"

--

lowerCase :: String -> String
lowerCase = map Data.Char.toLower

containsString :: String -> String -> Bool
containsString = Data.List.isInfixOf

removePunc :: String -> String
removePunc word = [ clean | clean <- word, clean `notElem` specialChars ]