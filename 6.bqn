#!/usr/bin/env bqn

u←	•Import"U"

#	Could make S a dyadic F-block 🤷‍.
S←	-∘≠↑·∧`1∾¯1⊑2 u.Spl '#'⊸≠+=⟜'^'
R←	{𝕨¨⌾((' '=⥊𝕩)/⥊)𝕩}
B←	⊢↑˝·≍⟜¬2+≢

g←	'⊘'R⟜B'#'R⟜B⌽⌾⥊>•FLines"6.ex"

•Show	1+´⥊' '=({(-∘≠↑⊏)⌾((S⥊𝕩)/⥊)𝕩}⌽∘⍉)•_while_(¬⟜+´"^#⊘"⍷⥊)g
