{-|
Module       : Data.String.Generic.Text.Strict
Description : GenericString instance for strict Text
License     : MIT
Maintainer  : tomas.o.more@gmail.com
Stability   : experimental

-}

module Data.String.Generic.Text.Strict where

import qualified Data.Text as T

import Data.Char as Char




import Data.String.Generic.Class


instance GenericString T.Text where
  empty = T.empty
  singleton = T.singleton
  pack   = T.pack
  unpack = T.unpack

  cons   = T.cons
  snoc   = T.snoc
  append = T.append
  head   = T.head
  uncons = T.uncons
  last   = T.last
  tail   = T.tail
  init   = T.init
  null   = T.null
  length = T.length

  map = T.map
  reverse = T.reverse
  intersperse = T.intersperse
  intercalacte = T.intercalate
  transpose = T.transpose

  concat = T.concat
  concatMap = T.concatMap
  any = T.any
  all = T.all
  maximum = T.maximum
  minimum = T.minimum

  take = T.take
  drop = T.drop
  splitAt = T.splitAt
  takeWhile = T.takeWhile
  dropWhile = T.dropWhile
  span = T.span
  -- skipping spanEnd

  break = T.break

  split = T.split . (==)
  splitwith = T.split

  lines = T.lines
  words = T.words
  unlines =T.unlines
  unwords = T.unwords


  find = T.find
  filter = T.filter

  index =  T.index

  findIndex =  T.findIndex . (==)

  toLower = T.map Char.toLower
  toUpper = T.map Char.toUpper
