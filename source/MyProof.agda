module MyProof where

-- 1. 자연수 정의
data ℕ : Set where
  zero : ℕ
  suc  : ℕ → ℕ

-- 2. 덧셈 정의
_+_ : ℕ → ℕ → ℕ
zero  + n = n
(suc m) + n = suc (m + n)

-- 3. 평등성(Equality) 정의
data _≡_ {A : Set} (x : A) : A → Set where
  refl : x ≡ x

-- 4. cong 함수 정의 (이게 없어서 에러가 났을 거예요!)
-- "x와 y가 같다면, f x와 f y도 같다"는 것을 증명함
cong : {A B : Set} (f : A → B) {x y : A} → x ≡ y → f x ≡ f y
cong f refl = refl

-- 5. 덧셈의 우측 항등원 증명
+-identity : (n : ℕ) → (n + zero) ≡ n
+-identity zero    = refl
+-identity (suc n) = cong suc (+-identity n)