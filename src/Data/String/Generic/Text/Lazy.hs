{-|
Module      : Data.String.Generic.Text.Lazy
Description :  Generic string functions
License     : MIT
Maintainer  : tomas.o.more@gmail.com
Stability   : experimental

Instance declaration for Lazy Text
-}

module Data.String.Generic.Text.Lazy  where

import qualified Data.Text as T
import qualified Data.Text.Lazy as TL


import Data.String.Generic.Class

instance GenericString TL.Text where
  empty = TL.empty
  singleton = TL.singleton
  pack   = TL.pack
  unpack = TL.unpack

  cons   = TL.cons
  snoc   = TL.snoc
  append = TL.append
  head   = TL.head
  uncons = TL.uncons
  last   = TL.last
  tail   = TL.tail
  init   = TL.init
  null   = TL.null
  length = fromIntegral . TL.length

  map = TL.map
  reverse = TL.reverse
  intersperse = TL.intersperse
  intercalacte = TL.intercalate
  transpose = TL.transpose

  concat = TL.concat
  concatMap = TL.concatMap
  any = TL.any
  all = TL.all
  maximum = TL.maximum
  minimum = TL.minimum

  take = TL.take . fromIntegral
  drop = TL.drop . fromIntegral
  splitAt = TL.splitAt . fromIntegral
  takeWhile = TL.takeWhile
  dropWhile = TL.dropWhile
  span = TL.span
  -- skipping spanEnd

  break = TL.break

  split = TL.split . (==)
  splitwith = TL.split

  lines = TL.lines
  words = TL.words
  unlines = TL.unlines
  unwords = TL.unwords

  find = TL.find
  filter = TL.filter

  index s =  TL.index s . fromIntegral

  findIndex  chr s = find (TL.toChunks s) 0
    where
      find [] _ = Nothing
      find (str:rest) prev = let found = T.findIndex (==chr) str
                        in case found of
                          Nothing -> find rest (prev + T.length str)
                          Just i  -> Just (i + prev)
