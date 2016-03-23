{-|
Module       : Data.String.Generic.Class
Description :  GenericClass
License       : MIT
Maintainer  : tomas.o.more@gmail.com
Stability      : experimental

Defenition for the generic class
-}

module Data.String.Generic.Class where


import Data.String

import Data.Hashable


{- 
 The Class defines all generic procedures that can be appplied uppon a string.
 Since all instances of the GenericString is treaded as true strings all of them words on Chars and nothing else.
 Allso a compromzie that needed to be made is the data type for indexing and i choose Int before Int64. since Int is more common.
 If someone has a compelling argument for the reverse please tell me. 
-}
class (IsString s, Monoid s, Eq s, Show s, Hashable s, Prelude.Ord s) => GenericString s where
  empty :: s
  singleton :: Char-> s
  pack   :: [Char] -> s
  unpack :: s -> [Char]

  cons   :: Char-> s -> s
  snoc   :: s -> Char-> s
  append :: s -> s -> s
  head   :: s -> Char
  uncons :: s -> Maybe (Char, s)
  last   :: s -> Char
  tail   :: s -> s
  init   :: s -> s
  null   :: s -> Bool
  length :: s -> Int    -- Compromize 

  map :: (Char-> Char) -> s -> s
  reverse :: s -> s
  intersperse ::  Char-> s -> s
  intercalacte :: s -> [s] -> s
  transpose :: [s] -> [s]

  concat :: [s] -> s
  concatMap :: (Char -> s) -> s -> s
  any :: (Char-> Bool) -> s -> Bool
  all :: (Char-> Bool) -> s-> Bool
  maximum :: s -> Char
  minimum :: s -> Char

  take :: Int -> s -> s
  drop :: Int -> s -> s
  splitAt :: Int -> s -> (s,s)
  takeWhile :: (Char-> Bool) -> s -> s
  dropWhile :: (Char-> Bool) -> s -> s
  span :: (Char-> Bool) -> s -> (s, s)
  -- skipping spanEnd

  break  :: (Char-> Bool) -> s -> (s,s)

  split :: Char-> s -> [s]
  splitwith :: (Char-> Bool) -> s -> [s]

  lines :: s -> [s]
  words :: s -> [s]
  unlines :: [s] -> s
  unwords :: [s] -> s

  elem :: Char-> s -> Bool
  notElem :: Char-> s -> Bool

  find :: (Char-> Bool) -> s -> Maybe Char
  filter :: (Char-> Bool) -> s -> s

  index :: s -> Int -> Char

  findIndex :: Char-> s -> Maybe Int

  toLower :: s -> s
  toUpper :: s -> s


