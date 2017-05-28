module Main where

import Network.FTP.Client

main :: IO ()
main = do
  h <- easyConnectFTP "ftp.example.org"
  loginAnon h
  print =<< mlsd h Nothing
  quit h
  return ()
