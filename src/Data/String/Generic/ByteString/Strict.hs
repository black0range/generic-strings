{-|
Module       : Data.String.Generic.ByteString.Strict
Description :  Generic string functions
License       : MIT
Maintainer  : tomas.o.more@gmail.com
Stability      : experimental

-}

module Data.String.Generic.ByteString.Strict where

import qualified Data.ByteString.Char8 as B

import Data.Char as Char


import Data.String.Generic.Class

instance GenericString B.ByteString where
  empty = B.empty
  singleton = B.singleton
  pack   = B.pack
  unpack = B.unpack

  cons   = B.cons
  snoc   = B.snoc
  append = B.append
  head   = B.head
  uncons = B.uncons
  last   = B.last
  tail   = B.tail
  init   = B.init
  null   = B.null
  length = B.length

  map = B.map
  reverse = B.reverse
  intersperse = B.intersperse
  intercalacte = B.intercalate
  transpose = B.transpose

  concat = B.concat
  concatMap = B.concatMap
  any = B.any
  all = B.all
  maximum = B.maximum
  minimum = B.minimum

  take = B.take
  drop = B.drop
  splitAt = B.splitAt
  takeWhile = B.takeWhile
  dropWhile = B.dropWhile
  span = B.span
  -- skipping spanEnd

  break = B.break

  split = B.split
  splitwith = B.splitWith

  lines = B.lines
  words = B.words
  unlines = B.unlines
  unwords = B.unwords


  elem = B.elem
  notElem = B.notElem

  find = B.find
  filter = B.filter

  index =  B.index

  findIndex = B.elemIndex


  toLower = B.map Char.toLower
  toUpper = B.map Char.toUpper


              

