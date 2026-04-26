{-# OPTIONS --cubical #-}  -- 이 마법의 주문이 빠졌습니다!
module Circle where

open import Agda.Primitive.Cubical
open import Agda.Builtin.Cubical.Path

refl : {A : Set} {x : A} → x ≡ x
refl {x = x} i = x -- 어떤값 x를 주면,구간 i가 무엇이든 항상 x를 반환하는 경로

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

-- 1. 이름을 invInvLoop로 수정하고, loop를 적용해 줍니다.
-- primINeg (primINeg i)만 쓰면 타입이 'I'가 되어서 base ≡ base와 맞지 않습니다.
invInvLoop : base ≡ base
invInvLoop i = loop (~ (~ i))

-- 2. 이제 두 경로가 같음을 증명합니다.
doubleNegId : loop ≡ invInvLoop
doubleNegId = refl  -- i를 생략해도 Agda가 내부적으로 계산해서 맞춰줍니다.