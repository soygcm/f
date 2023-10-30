module Main where
import TodoList
import Test.HUnit
import TodoList (showTasks)


pack :: Eq a => [a] -> [[a]]
pack lst = packAux lst []
  where
    packAux [] acc = reverse acc
    packAux (start:rest) [] = packAux rest [[start]]
    packAux (start:rest) (superHead:superTail) =
      if start == head superHead
        then packAux rest ((start : superHead) : superTail)
        else packAux rest ([start] : superHead : superTail)


test_all :: IO Counts
test_all = runTestTT $ TestList
  [ 
    "Test 1" ~: pack ["a", "a", "a", "a", "b", "c", "c", "a", "a"]
    ~?= [["a", "a", "a", "a"], ["b"], ["c", "c"], ["a", "a"]]
  ]

main :: IO ()
main = showTasks ["Hola", "Adios"]