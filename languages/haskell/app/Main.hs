module Main where

import Test.HUnit

packDiff rest start superList = pack rest ((start : []) : superList)

pack :: Eq a => [a] -> [[a]] -> [[a]]
pack [] superList = superList
pack (start:rest) [] = packDiff rest start []
pack (start:rest) (superHead: superTail) = 
    if start == head superHead then
        pack rest ((start : superHead) : superTail)
    else packDiff rest start (superHead: superTail)
            
    

test_all = runTestTT $ TestList
  [ 
     "Test 1" ~: pack [] [] ~?= ([] :: [[Char]])
    ,"Test 2" ~: pack ["a"] [] ~?= [["a"]]
    ,"Test 3" ~: pack ["a"] [["a"]] ~?= [["a", "a"]]
    ,"Test 4" ~: pack ["a"] [["b"]] ~?= [["a"], ["b"]]
  , "Test 7" ~: reverse (
    pack ["a", "a", "a", "a", "b", "c", "c", "a", "a"] []
    ) ~?= [["a", "a", "a", "a"], ["b"], ["c", "c"], ["a", "a"]]
  ]

main = do
  counts <- test_all
  putStrLn "Tests Passed"