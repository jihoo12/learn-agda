{-# OPTIONS --cubical #-}
module Face where

open import Agda.Primitive.Cubical
open import Agda.Builtin.Cubical.Path -- ≡ 정의를 위해 필요합니다.

data Torus : Set where
    point  : Torus
    line1  : point ≡ point
    line2  : point ≡ point
    -- 이미 존재하는 PathP를 그대로 사용합니다.
    square : PathP (λ i → line1 i ≡ line1 i) line2 line2