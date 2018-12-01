adds1 :: Int -> Int
adds1 number =
  if number < 5 then number+1
  else number-1

adds :: Int -> Int
adds number
  | number < 5 = number+1
  | otherwise = number-1

factorial :: Int -> Int
factorial 0 = 1
factorial 1 = 1
factorial n = n * factorial(n-1)

data Tree a = Null | Node a (Tree a) (Tree a)

sumTree Null = 0
sumTree (Node x left right) = x + (sumTree left) + (sumTree right)

data Stack s = Empty | Stack [s] deriving (Show, Eq)

clearStack :: Stack s -> Stack s
clearStack _ = Empty

addToStack :: s -> Stack s -> Stack s
addToStack number Empty = Stack [number]
addToStack number (Stack []) = Stack [number]
addToStack number (Stack list) = Stack (number:list)

pop :: Stack s -> Stack s
pop Empty = Empty
pop (Stack []) = Empty
pop (Stack (h:t)) = Stack t

takeFront :: Stack s -> s
takeFront Empty = error "Empty stack"
takeFront (Stack []) = error "Empty stack"
takeFront (Stack (h:t)) = h

turnListIntoStack :: [s] -> Stack s
turnListIntoStack list = Stack list

data Set s = Set [s] deriving (Show, Eq)

emptySet :: Set t
emptySet = Set []

setEmpty :: Set t -> Bool
setEmpty Set [] = True
setEmpty _ = False

inSet :: (Eq t) => t -> Set t -> Bool
inSet _ (Set []) = False
inSet x (Set (h:ts)) | x == h = True
                    | otherwise = inSet x (Set ts)

addSet :: (Eq t) => t -> Set t -> Set t
addSet x (Set xs) = Set (x:xs)
