module String ( clean, split ) where

import qualified Data.List.Split
import qualified Data.Char

clean :: String -> [String]
clean = map (lowerCase . removePunc) . split

split :: String -> [String]
split = Data.List.Split.splitOn " "

--

lowerCase :: String -> String
lowerCase = map Data.Char.toLower

removePunc :: String -> String
removePunc word = [ clean | clean <- word, clean `notElem` specialChars ]

--

specialChars :: String
specialChars = ",.?!-:;\"\'()=*&^%$#@`~[]{}\\/<>_+"