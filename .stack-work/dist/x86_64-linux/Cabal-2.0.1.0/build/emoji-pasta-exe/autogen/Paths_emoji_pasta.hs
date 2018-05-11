{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_emoji_pasta (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/swoo/Documents/emoji-pasta/.stack-work/install/x86_64-linux/lts-11.8/8.2.2/bin"
libdir     = "/home/swoo/Documents/emoji-pasta/.stack-work/install/x86_64-linux/lts-11.8/8.2.2/lib/x86_64-linux-ghc-8.2.2/emoji-pasta-0.1.0.0-DaRiXPLvDH01qxFCXq5bQj-emoji-pasta-exe"
dynlibdir  = "/home/swoo/Documents/emoji-pasta/.stack-work/install/x86_64-linux/lts-11.8/8.2.2/lib/x86_64-linux-ghc-8.2.2"
datadir    = "/home/swoo/Documents/emoji-pasta/.stack-work/install/x86_64-linux/lts-11.8/8.2.2/share/x86_64-linux-ghc-8.2.2/emoji-pasta-0.1.0.0"
libexecdir = "/home/swoo/Documents/emoji-pasta/.stack-work/install/x86_64-linux/lts-11.8/8.2.2/libexec/x86_64-linux-ghc-8.2.2/emoji-pasta-0.1.0.0"
sysconfdir = "/home/swoo/Documents/emoji-pasta/.stack-work/install/x86_64-linux/lts-11.8/8.2.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "emoji_pasta_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "emoji_pasta_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "emoji_pasta_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "emoji_pasta_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "emoji_pasta_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "emoji_pasta_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
