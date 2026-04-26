{-# OPTIONS --cubical #-}
module Torus where

open import Agda.Primitive.Cubical
open import Agda.Builtin.Cubical.Path -- ≡ 정의를 위해 필요합니다.

data Torus : Set where
    point  : Torus
    line1  : point ≡ point
    line2  : point ≡ point
    square : PathP (λ i → line1 i ≡ line1 i) line2 line2
