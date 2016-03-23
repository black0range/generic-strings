{-|
Module      : Data.String.Generic.ByteString.Lazy
Description :  Generic string functions
License     : MIT
Maintainer  : tomas.o.more@gmail.com
Stability   : experimental

-}

module Data.String.Generic.ByteString.Lazy where

import qualified Data.ByteString.Lazy.Char8 as BL

import Data.Char as Char



import Data.String.Generic.Class

              

instance GenericString BL.ByteString where
  empty = BL.empty
  singleton = BL.singleton
  pack   = BL.pack
  unpack = BL.unpack

  cons   = BL.cons
  snoc   = BL.snoc
  append = BL.append
  head   = BL.head
  uncons = BL.uncons
  last   = BL.last
  tail   = BL.tail
  init   = BL.init
  null   = BL.null
  length = fromIntegral . BL.length

  map = BL.map
  reverse = BL.reverse
  intersperse = BL.intersperse
  intercalacte = BL.intercalate
  transpose = BL.transpose

  concat = BL.concat
  concatMap = BL.concatMap
  any = BL.any
  all = BL.all
  maximum = BL.maximum
  minimum = BL.minimum

  take = BL.take . fromIntegral
  drop = BL.drop . fromIntegral
  splitAt = BL.splitAt . fromIntegral
  takeWhile = BL.takeWhile
  dropWhile = BL.dropWhile
  span = BL.span
  -- skipping spanEnd

  break = BL.break

  split = BL.split
  splitwith = BL.splitWith

  lines = BL.lines
  words = BL.words
  unlines = BL.unlines
  unwords = BL.unwords

  elem = BL.elem
  notElem = BL.notElem

  find = BL.find
  filter = BL.filter

  index s = BL.index s . fromIntegral

  findIndex c s = fromIntegral <$> BL.elemIndex c s

  toLower = BL.map Char.toLower
  toUpper = BL.map Char.toUpper
