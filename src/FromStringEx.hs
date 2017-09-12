module FromStringEx where

import Data.String (fromString)

-- text
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
  putStrLn "========  String ========"
  putStrLn $ fromString ("String to String" :: String)

  BC.putStrLn $ fromString ("String to ByteString" :: String)
  BLC.putStrLn $ fromString ("String to ByteString.Lazy" :: String)

  TIO.putStrLn $ fromString ("String to Text" :: String)
  TLIO.putStrLn $ fromString ("String to Text.Lazy" :: String)

  BB.hPutBuilder stdout $ fromString ("String to ByteString.Builder\n" :: String)
  BLB.hPutBuilder stdout $ fromString ("String to ByteSgring.Lazy.Builder\n" :: String)
  print $ (fromString ("String to Text.Lazy.Builder" :: String) :: TLB.Builder)
  putStrLn ""
