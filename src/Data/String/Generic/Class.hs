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
 Since all instances of the GenericString is treaded as "human readable" strings all of them words on Chars and nothing else.
 Allso a compromzie that needed to be made is the data type for indexing and I choose Int before Int64. since Int is more common.
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
  uncons :: s -> Maybe (Char, s)
  head   :: s -> Char
  last   :: s -> Char
  tail   :: s -> s
  init   :: s -> s
  null   :: s -> Bool
  length :: s -> Int    -- Compromize 

  map :: (Char-> Char) -> s -> s
  intersperse ::  Char-> s -> s
  intercalacte :: s -> [s] -> s
  transpose :: [s] -> [s]
  reverse :: s -> s
  replace :: s -> s -> s -> s 

  toLower :: s -> s
  toUpper :: s -> s

  foldl  :: (a -> Char -> a) -> a -> s -> a
  foldl1 ::  (a -> Char -> a) -> a -> s -> a
  foldr ::  (a -> Char -> a) -> a -> s -> a
  foldr1 ::  (a -> Char -> a) -> a -> s -> a


  concat :: [s] -> s
  concatMap :: (Char -> s) -> s -> s
  any :: (Char-> Bool) -> s -> Bool
  all :: (Char-> Bool) -> s-> Bool
  maximum :: s -> Char
  minimum :: s -> Char

  scanl :: (Char -> Char -> Char) -> s -> s
  scanl1 :: (Char -> Char -> Char) -> s -> s
  scanr   ::  (Char -> Char -> Char) -> s -> s
  scanr1 ::  (Char -> Char -> Char) -> s -> s

  mapAccumL :: (acc -> Char -> (acc,Char)) -> acc -> s -> (acc, s)
  mapAccumR :: (acc -> Char -> (acc,  Char)) -> acc -> s -> (acc, s)

  replicate :: Int -> Char -> s

  unfoldr :: ( a -> Maybe (Char, a)) -> a -> s
  unfoldl :: ( a -> Maybe (Char, a)) -> a -> s
  
  take :: Int -> s -> s
  drop :: Int -> s -> s
  takeWhile :: (Char-> Bool) -> s -> s
  dropWhile :: (Char-> Bool) -> s -> s
  dropWhileEnd :: (Char -> Bool) -> s -> s
  dropAround :: (Char -> Bool) -> s -> s
  strip :: s -> s
  stripStart :: s -> s
  stripEnd :: s -> s
  
  span :: (Char-> Bool) -> s -> (s, s)
  spanEnd :: (Char -> Bool) -> s -> (s, s)

  break  :: (Char-> Bool) -> s -> (s,s)
  breakEnd :: (Char -> Bool) -> s -> (s, s)
  breakOn :: s -> s -> (s, s)
  breakOnEnd :: s -> s -> (s, s)

  split :: Char-> s -> [s]
  splitAt :: Int -> s -> (s,s)
  splitwith :: (Char -> Bool) -> s -> [s]

  lines :: s -> [s]
  words :: s -> [s]
  unlines :: [s] -> s
  unwords :: [s] -> s

  isPrefixOf :: s -> s -> Bool
  isSuffixOf :: s -> s -> Bool
  isInfixOf :: s -> s -> Bool
  
  elem :: Char-> s -> Bool
  notElem :: Char-> s -> Bool

  find :: (Char-> Bool) -> s -> Maybe Char
  filter :: (Char-> Bool) -> s -> s

  index :: s -> Int -> Char

  findIndex :: Char-> s -> Maybe Int

  count :: s -> s -> Int

  zip ::  s -> s -> [(Char, Char)]
  zipWith :: (Char -> Char -> Char) -> s -> s -> s 

