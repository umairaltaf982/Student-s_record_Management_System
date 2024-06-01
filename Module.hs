module Module where

data StudentRecord = StudentRecord {
    rollNo :: Int,
    name :: String,
    registeredCourses :: [String]
} deriving (Show)
