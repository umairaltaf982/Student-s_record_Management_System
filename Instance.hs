module Instance where

import Module
import Class

data PriorityQueue = PriorityQueue [StudentRecord] deriving (Show)

instance Queue PriorityQueue where
    enqueue (PriorityQueue records) record = PriorityQueue (records ++ [record])
    dequeue (PriorityQueue []) = error "Queue is already Empty"
    dequeue (PriorityQueue (x:xs)) = (x, PriorityQueue xs)
    peek (PriorityQueue []) = error "Queue is already Empty"
    peek (PriorityQueue (x:_)) = x
    isEmpty (PriorityQueue records) = null records

data CircularQueue = CircularQueue Int [StudentRecord] deriving (Show)

instance Queue CircularQueue where
    enqueue (CircularQueue maxSize records) record
        | length records < maxSize = CircularQueue maxSize (records ++ [record])
        | otherwise = CircularQueue maxSize (tail records ++ [record])
    dequeue (CircularQueue _ []) = error "Queue is already Empty!!!"
    dequeue (CircularQueue maxSize (x:xs)) = (x, CircularQueue maxSize xs)
    peek (CircularQueue _ []) = error "Queue is already Empty!!!"
    peek (CircularQueue _ (x:_)) = x
    isEmpty (CircularQueue _ records) = null records
