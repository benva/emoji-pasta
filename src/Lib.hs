module Lib ( parseSentence ) where

import Data.List.Split

parseSentence :: String -> [String]
parseSentence = splitWords

splitWords :: String -> [String]
splitWords = splitOn " "