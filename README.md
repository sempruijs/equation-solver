# equation solver

I use ghci (an interactive version of the Haskell compiler) as my calculator, but I noticed that I typed too much when I wanted to solve a equation.
With the Solver module, you can use ```solveEquation``` to solve your equation

Currently, only linear functions are supported

editing an haskell script:

```Shell
vim calculations.hs
```

```Haskell
import Solver

f x = 2 * x + 4
g x = (-3) * x
```

Going into ghci:

```Shell
ghci> :l calculations.hs
[1 of 2] Compiling Solver           ( Solver.hs, interpreted )
[2 of 2] Compiling Main             ( test.hs, interpreted )
Ok, two modules loaded.
ghci> 5 + 4
9
ghci> solveEquation f g
(-4,-4)
ghci>
```

