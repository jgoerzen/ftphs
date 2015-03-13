import Network.FTP.Client

main :: IO()
main = do
  -- connect to SEC's FTP server
  (ftp_handle, _) <- connectFTP "ftp.sec.gov" 21
  -- Login as anonymous
  login ftp_handle "anonymous" (Just "your.email@someserver.org") Nothing
  -- Set transfer mode to binary
  sendcmd ftp_handle "TYPE I"
  -- Change to the directory where the file is located
  cwd ftp_handle "/edgar/data/1251417/"
  -- Download the file
  downloadlargebinary ftp_handle "0001047469-14-010110.txt"
  -- If we tried using downloadbinary then we might see that the program takes up
  -- lot of memory and is eventually killed by the haskell runtime
  -- downloadbinary ftp_handle "0001047469-14-010110.txt"
  return ()
