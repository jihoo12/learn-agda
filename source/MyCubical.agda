{-# OPTIONS --cubical #-}

module MyCubical where

-- Cubical Agda의 기초 프리미티브를 불러옵니다.
-- (표준 라이브러리가 없다면 에러가 날 수 있지만, 
-- 일단 내장된 기본 기능을 써봅시다.)
open import Agda.Primitive.Cubical
open import Agda.Builtin.Cubical.Path

-- 함수 외연성 증명
funExt : {A B : Set} {f g : A → B}
       → ((x : A) → f x ≡ g x)  -- 모든 x에서 두 함수 결과가 같다면
       → f ≡ g                  -- 두 함수는 같다
funExt p i x = p x i