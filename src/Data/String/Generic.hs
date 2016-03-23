{-|
Module      : Data.String.generic
Description :  Generic string functions
License     : MIT
Maintainer  : tomas.o.more@gmail.com
Stability   : experimental

This package  bring generalisation to haskell string functions. Most all functions maps directly to the native implementations for these functions in their
respective package.

Note that this package does not include anything that is specific to any string format.

-}

module Data.String.Generic (
  module C
  , module BS
  , module BL
  , module TS
  , module TL

  ) where

import Data.String.Generic.Class as C

import Data.String.Generic.ByteString.Strict as BS
import Data.String.Generic.ByteString.Lazy as BL

import Data.String.Generic.Text.Strict as TS
import Data.String.Generic.Text.Lazy as TL
