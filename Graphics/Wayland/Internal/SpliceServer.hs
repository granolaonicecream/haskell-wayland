{-# LANGUAGE TemplateHaskell, ForeignFunctionInterface #-}

module Graphics.Wayland.Internal.SpliceServer where

import Data.Functor
import Language.Haskell.TH
import Foreign.C.Types

import Graphics.Wayland.Scanner.Protocol
import Graphics.Wayland.Scanner
import Graphics.Wayland.Internal.SpliceServerInternal
import Graphics.Wayland.Internal.SpliceServerTypes


$(runIO readProtocol >>= generateServerExternalMethods)
$(runIO readProtocol >>= generateServerExternalListeners)
