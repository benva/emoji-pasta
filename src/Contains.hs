module Contains ( containsString ) where

import qualified Data.List


-- isInfixOf 'hello' 'hello world' smaller word first, emoji names are longer
-- containsString word emoji = isInfixOf word emoji <-- is identical
-- containsString = isInfixOf  <-- is identical but hard to read

containsString :: String -> String -> Bool

containsString word emoji =  word `Data.List.isInfixOf` emoji

