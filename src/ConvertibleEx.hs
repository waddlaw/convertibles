{-# LANGUAGE OverloadedStrings #-}
module ConversionEx where

import Data.String (fromString)

import Data.Convertible (convert)
import Data.Convertible.Instances.Text ()

import qualified Data.ByteString as BS (ByteString)
import qualified Data.ByteString.Lazy as BSL (ByteString)
import qualified Data.ByteString.Char8 as BSC (putStrLn)
import qualified Data.ByteString.Lazy.Char8 as BSLC (putStrLn)

import qualified Data.Text as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.IO as TIO (putStrLn)
import qualified Data.Text.Lazy.IO as TLIO (putStrLn)

-- import qualified Data.ByteString.UTF8 as BSU
-- import qualified Data.ByteString.Lazy.UTF8 as BSLU

main :: IO ()
main = do

  putStrLn "========  String ========"
  putStrLn $ fromString ("String to String" :: String)
  BSC.putStrLn $ fromString ("String to ByteString" :: String)
  BSLC.putStrLn $ fromString ("String to ByteString.Lazy" :: String)
  TIO.putStrLn $ fromString ("String to Text" :: String)
  TLIO.putStrLn $ fromString ("String to Text.Lazy" :: String)
  putStrLn ""

  putStrLn "========  ByteString ========"
  -- putStrLn $ convert ("ByteString to String" :: BS.ByteString)
  -- BSC.putStrLn $ convert ("ByteString to ByteString" :: BS.ByteString)
  BSLC.putStrLn $ convert ("ByteString to ByteString.Lazy" :: BS.ByteString)
  TIO.putStrLn $ convert ("ByteString to Text" :: BS.ByteString)
  TLIO.putStrLn $ convert ("ByteString to Text.Lazy" :: BS.ByteString)
  putStrLn ""

  putStrLn "========  ByteString.Lazy ========"
  -- putStrLn $ convert ("ByteString.Lazy to String" :: BSL.ByteString)
  BSC.putStrLn $ convert ("ByteString.Lazy to ByteString" :: BSL.ByteString)
  -- BSLC.putStrLn $ convert ("ByteString.Lazy to ByteString.Lazy" :: BSL.ByteString)
  TIO.putStrLn $ convert ("ByteString.Lazy to Text" :: BSL.ByteString)
  TLIO.putStrLn $ convert ("ByteString.Lazy to Text.Lazy" :: BSL.ByteString)
  putStrLn ""

  putStrLn "========  Text ========"
  putStrLn $ convert ("T.Text to String" :: T.Text)
  BSC.putStrLn $ convert ("T.Text to ByteString" :: T.Text)
  BSLC.putStrLn $ convert ("T.Text to ByteString.Lazy" :: T.Text)
  -- TIO.putStrLn $ convert ("T.Text to Text" :: T.Text)
  TLIO.putStrLn $ convert ("T.Text to Text.Lazy" :: T.Text)
  putStrLn ""

  putStrLn "========  Text.Lazy ========"
  putStrLn $ convert ("TL.Text to String" :: TL.Text)
  BSC.putStrLn $ convert ("TL.Text to ByteString" :: TL.Text)
  BSLC.putStrLn $ convert ("TL.Text to ByteString.Lazy" :: TL.Text)
  TIO.putStrLn $ convert ("TL.Text to Text" :: TL.Text)
  -- TLIO.putStrLn $ convert ("TL.Text to Text.Lazy" :: TL.Text)
  putStrLn ""
