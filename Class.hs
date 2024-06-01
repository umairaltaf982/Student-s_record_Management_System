module Class where

import Module

class Queue q where
    enqueue :: q -> StudentRecord -> q
    dequeue :: q -> (StudentRecord, q)
    peek :: q -> StudentRecord
    isEmpty :: q -> Bool
