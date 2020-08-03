{-# LANGUAGE TemplateHaskell #-}

module Main where

import Polysemy
import Polysemy.Reader

data MyEffect m a where
  Test :: m a -> MyEffect m a

--makeSem ''MyEffect

main :: IO ()
main = putStrLn "Hello, Haskell!"
