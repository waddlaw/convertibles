{-# LANGUAGE OverloadedStrings #-}
module ConversionEx where

import Conversion (convert)
import Conversion.Text ()

-- bytestring
import qualified Data.ByteString as B (ByteString)
import qualified Data.ByteString.Builder as BB (Builder)
import qualified Data.ByteString.Lazy as BL (ByteString)
import qualified Data.ByteString.Lazy.Builder as BLB (Builder)

-- text
import qualified Data.Text as T (Text)
import qualified Data.Text.Lazy as TL (Text)
import qualified Data.Text.Lazy.Builder as TLB (Builder)

-- utils
import System.IO (stdout)
import qualified Data.ByteString.Char8 as BC (putStrLn)
import qualified Data.ByteString.Builder as BB (hPutBuilder)
import qualified Data.ByteString.Lazy.Char8 as BLC (putStrLn)
import qualified Data.ByteString.Lazy.Builder as BLB (hPutBuilder)
import qualified Data.Text.IO as TIO (putStrLn)
import qualified Data.Text.Lazy.IO as TLIO (putStrLn)

main :: IO ()
main = do
  putStrLn "========  ByteString ========"
  -- putStrLn $ convert ("ByteString to String" :: B.ByteString)

  BC.putStrLn $ convert ("ByteString to ByteString" :: B.ByteString)
  BLC.putStrLn $ convert ("ByteString to ByteString.Lazy" :: B.ByteString)

  -- TIO.putStrLn $ convert ("ByteString to Text" :: B.ByteString)
  -- TLIO.putStrLn $ convert ("ByteString to Text.Lazy" :: B.ByteString)

  BB.hPutBuilder stdout $ convert ("ByteString to ByteString.Builder\n" :: B.ByteString)
  BLB.hPutBuilder stdout $ convert ("ByteString to ByteString.Lazy.Builder\n" :: B.ByteString)
  -- print $ (convert ("ByteString to Text.Lazy.Builder" :: B.ByteString) :: TLB.Builder)
  putStrLn ""

  putStrLn "========  ByteString.Lazy ========"
  -- putStrLn $ convert ("ByteString.Lazy to String" :: BL.ByteString)

  BC.putStrLn $ convert ("ByteString.Lazy to ByteString" :: BL.ByteString)
  BLC.putStrLn $ convert ("ByteString.Lazy to ByteString.Lazy" :: BL.ByteString)

  -- TIO.putStrLn $ convert ("ByteString.Lazy to Text" :: BL.ByteString)
  -- TLIO.putStrLn $ convert ("ByteString.Lazy to Text.Lazy" :: BL.ByteString)

  BB.hPutBuilder stdout $ convert ("ByteString.Lazy to ByteString.Builder\n" :: BL.ByteString)
  BLB.hPutBuilder stdout $ convert ("ByteString.Lazy to ByteString.Lazy.Builder\n" :: BL.ByteString)
  -- print $ (convert ("ByteString.Lazy to Text.Lazy.Builder" :: BL.ByteString) :: TLB.Builder)
  putStrLn ""

  putStrLn "========  Text ========"
  putStrLn $ convert ("Text to String" :: T.Text)

  BC.putStrLn $ convert ("Text to ByteString" :: T.Text)
  BLC.putStrLn $ convert ("Text to ByteString.Lazy" :: T.Text)

  TIO.putStrLn $ convert ("Text to Text" :: T.Text)
  TLIO.putStrLn $ convert ("Text to Text.Lazy" :: T.Text)

  BB.hPutBuilder stdout $ convert ("Text to ByteString.Builder\n" :: T.Text)
  BLB.hPutBuilder stdout $ convert ("Text to ByteString.Lazy.Builder\n" :: T.Text)
  print $ (convert ("Text to Text.Lazy.Builder" :: T.Text) :: TLB.Builder)
  putStrLn ""

  putStrLn "========  Text.Lazy ========"
  putStrLn $ convert ("Text.Lazy to String" :: TL.Text)

  BC.putStrLn $ convert ("Text.Lazy to ByteString" :: TL.Text)
  BLC.putStrLn $ convert ("Text.Lazy to ByteString.Lazy" :: TL.Text)

  TIO.putStrLn $ convert ("Text.Lazy to Text" :: TL.Text)
  TLIO.putStrLn $ convert ("Text.Lazy to Text.Lazy" :: TL.Text)

  BB.hPutBuilder stdout $ convert ("Text.Lazy to ByteString.Builder\n" :: TL.Text)
  BLB.hPutBuilder stdout $ convert ("Text.Lazy to ByteString.Lazy.Builder\n" :: TL.Text)
  print $ (convert ("Text.Lazy to Text.Lazy.Builder" :: TL.Text) :: TLB.Builder)
  putStrLn ""
