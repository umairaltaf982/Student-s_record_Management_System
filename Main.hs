module Main where

import Module
import Class
import Instance

main :: IO ()
main = do
    let stud1 = StudentRecord { rollNo = 3737, name = "Umair", registeredCourses = ["Math", "Physics"] }
        stud2 = StudentRecord { rollNo = 3711, name = "Zara", registeredCourses = ["PF", "Calculus"] }
        stud3 = StudentRecord { rollNo = 3769, name = "Jhonny", registeredCourses = ["PakStudies", "CPS"] }

        priorityQueue = enqueue (enqueue (enqueue (PriorityQueue []) stud1) stud2) stud3
        (nextStudent, remPriorityQueue) = dequeue priorityQueue

        circularQueue = enqueue (enqueue (enqueue (CircularQueue 3 []) stud1) stud2) stud3
        (nextCircularStudent, remCircularQueue) = dequeue circularQueue

    print "Priority Queue:"
    print $ "Next student: " ++ show nextStudent
    print $ "Remaining queue: " ++ show remPriorityQueue

    print "Circular Queue:"
    print $ "Next student: " ++ show nextCircularStudent
    print $ "Remaining queue: " ++ show remCircularQueue
