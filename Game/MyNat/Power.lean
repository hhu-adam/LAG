import Game.MyNat.Multiplication

namespace MyNat
open MyNat

def pow : ℕ → ℕ → ℕ
| _, zero => one
| m, (succ n) => pow m n * m

instance : Pow ℕ ℕ where
  pow := pow

-- notation a ^ b := pow a b

-- Important note: This here is the real `rfl`, not the weaker game version

example : (1 : ℕ) ^ 1 = 1 := by rfl

theorem pow_zero (m : ℕ) : m ^ 0 = 1 := by rfl

theorem pow_succ (m n : ℕ) : m ^ (succ n) = m ^ n * m := by rfl

end MyNat
