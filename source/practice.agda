module practice where

data Bool : Set where
  true  : Bool
  false : Bool

and : Bool -> Bool -> Bool
and true true = true
and _ _ = false