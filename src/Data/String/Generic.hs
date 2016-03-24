{-|
Module      : Data.String.generic
Description :  Generic string functions
License     : MIT
Maintainer  : tomas.o.more@gmail.com
Stability   : experimental

This package  bring generalisation to haskell string functions. Most all functions maps directly to the native implementations for these functions in their
respective package.

Note that this package does not include anything that is specific to any string format.

Most functions here use the same functions as can be found in the modules of the respecive string. With exceptions where the modules does not implement such functions.

The main reason to use this package is to create simple functions that should be able  to work on all kinds of text.

WARNING:
If you create generic functions using this library, be aware that the  bytestring variants  of these ONLY works on ASCII data. Meaning that any non ascii input  will be errant.
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
