module Random (stupidNumber, chooseRandomEmoji) where

import Data.List
import Data.Maybe
import qualified Emoji

alphabet :: String
alphabet = ['a'..'z']

alphabetWhere :: Char -> Int
alphabetWhere a = fromJust $ a `elemIndex` alphabet

stupidList :: String -> [Int]
stupidList [] = []
stupidList (x:xs) = alphabetWhere x : stupidList xs

stupidNumber :: String -> Int
stupidNumber string = sum $ stupidList string

chooseRandomEmoji :: String -> String
chooseRandomEmoji string =
    Emoji.table !! mod (length Emoji.table) (stupidNumber string)
