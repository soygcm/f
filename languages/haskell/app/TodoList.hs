module TodoList (showTasks) where

import Data.List (intercalate)

tasks :: [String]
tasks = ["Task 1", "Task 2", "Task 3"]

showTasks :: [String] -> IO ()
showTasks taskList = do
    putStrLn "To-Do List:"
    showTasks' 1 taskList

showTasks' :: Int -> [String] -> IO ()
showTasks' _ [] = return ()
showTasks' index (task:rest) = do
    putStrLn $ show index ++ ". " ++ task
    showTasks' (index + 1) rest