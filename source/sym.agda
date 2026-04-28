{-# OPTIONS --cubical #-}
module sym where

open import Agda.Primitive.Cubical
open import Agda.Builtin.Cubical.Path
open import primINeg

sym : {A : Set} {x y : A} → x ≡ y → y ≡ x
sym p = λ i → p (~ i)

double-sym : {A : Set} {x y : A} (p : x ≡ y) → sym (sym p) ≡ p
double-sym p = λ i → p