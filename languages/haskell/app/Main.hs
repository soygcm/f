module Main where

import Test.HUnit

pack :: Eq a => [[a]] -> [a] -> [[a]]
pack [] superList = superList
pack (x:xs) [] = pack xs [x]
pack (x:xs) (y:ys) =
  if head x == y
    then pack xs ((x ++ y) : ys)
    else pack xs (x : (y:ys))

test_all = runTestTT $ TestList
  [ "Test 1" ~: pack [] [] ~?= ([] :: [[Int]])
  , "Test 2" ~: pack [["a"]] [] ~?= [["a"]]
  , "Test 3" ~: pack [["a"]] [["a"]] ~?= [["a", "a"]]
  , "Test 4" ~: pack [["a"]] [["b"]] ~?= [["a"], ["b"]]
  , "Test 5" ~: pack [["b"], ["a"]] [] ~?= [["a"], ["b"]]
  , "Test 6" ~: pack [["a", "b"]] [["a"]] ~?= [["b"], ["a", "a"]]
  , "Test 7" ~: reverse (
    pack [["a", "a", "a", "a", "b", "c", "c", "a", "a"]] []
    ) ~?= [["a", "a", "a", "a"], ["b"], ["c", "c"], ["a", "a"]]
  ]

main = do
  counts <- test_all
  putStrLn "Tests Passed"