{-# OPTIONS --cubical #-}
module square where

open import Agda.Primitive.Cubical
open import Agda.Builtin.Cubical.Path

refl : {A : Set} {x : A} → x ≡ x
refl {x = x} = λ i → x

refl-square : {A : Set} {x : A} → refl {x = x} ≡ refl {x = x}
refl-square {x = x} = λ i j → x

-- 이것은 그냥 위상적으로 x랑 같다