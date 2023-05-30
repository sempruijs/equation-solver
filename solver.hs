module Solver (solveEquation) where

  -- transforms function to tuple
  -- in the expresion y = ax + b
  -- (a, b)
  funcToLinear :: (Num a) => (a -> a) -> (a, a)
  funcToLinear f = 
    let b = f 0
        a = (f 1) - b
    in (a, b)

  funcsToTuples :: (Num a) => (a -> a) -> (a -> a) -> ((a,a),(a,a))
  funcsToTuples f g = ((ftl f), (ftl g))
    where ftl = funcToLinear 

  xIs :: (Num a) => ((a,a),(a,a)) -> a
  xIs t = getX (cleanAB t)
    where
      cleanAB ((a0, b0), (a1, b1)) = (((a0 - a1), 0), (0, (b1 - b0))) 
      getX ((_,_), (_,b)) = b

  solveEquation :: (Num a) => (a -> a) -> (a -> a) -> (a,a)
  solveEquation f g = (x,y)
    where 
      x = xIs (funcsToTuples f g)
      y = f x
