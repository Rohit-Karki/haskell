quicksort [] = [] 
quicksort (x:xs) = 
    let smallerSorted = quicksort [a | a <- xs,a<=x]
        biggerSorted = quicksort [a | a <- xs,a>x]
    in smallerSorted ++ [x] ++ biggerSorted  

-- [5,1,9,4,6,7,3]
-- So To understand the concept of quicksort is this example 
-- We first divide the list into two halves one which is less than the first element 5 and the second halves which is greater than the first element in the list.
-- so when the smallerSorted is done calculating then we again recursively call the quicksort which is then again doing the same process
-- and again the same process is repeated in the biggerSorted list and then they are returned by combining all together

-- [a | a <- xs,a<=x]
-- This is the process of making filter on the list by calling a predicate a<=x and getting the element from the list by doing pattern matching.