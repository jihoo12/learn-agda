-- 평등성(Equality) 정의
data _≡_ {A : Set} (x : A) : A -> Set where
  refl : x ≡ x

-- 덧셈의 우측 항등원 증명 (n + 0 = n)
+-identity : (n : Nat) -> n + zero ≡ n
+-identity zero    = refl
+-identity (suc n) = 
  let step = +-identity n 
  in  cong suc step -- cong는 양변에 같은 함수(suc)를 적용해도 같음을 의미