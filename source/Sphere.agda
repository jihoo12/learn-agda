{-# OPTIONS --cubical #-}
module Sphere where

open import Agda.Primitive.Cubical
open import Agda.Builtin.Cubical.Path

data S² : Set where
  base : S²
  -- 모든 변이 base인 '면'을 정의합니다.
  surf : PathP (λ i → base ≡ base) (λ j → base) (λ j → base)