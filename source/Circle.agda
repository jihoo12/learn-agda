{-# OPTIONS --cubical #-}  -- 이 마법의 주문이 빠졌습니다!
module Circle where

open import Agda.Primitive.Cubical
open import Agda.Builtin.Cubical.Path

~_ : I → I
~_ = primINeg

data S¹ : Set where
  base : S¹                -- 1. 하나의 점(Base point)이 존재한다.
  loop : base ≡ base       -- 2. 그 점에서 출발해 다시 그 점으로 돌아오는 '선'이 존재한다.
-- 원의 절반 지점 (i = 0.5 같은 느낌)
halfWay : I → S¹
halfWay i = loop i

invLoop : base ≡ base
invLoop i = loop (~ i) -- 거꾸로 돌아간다