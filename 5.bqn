#!/usr/bin/env bqn

u←	•Import"U"

#	First attempt.
#T	←{∾(1-˜>⌜˜↕∘≠𝕩)⊔⋈⌜˜𝕩}
#	Second attempt.
#T	←{(⥊>⌜˜↕∘≠𝕩)/⥊⋈⌜˜𝕩}
#	Suggested tweak by Dzaima.
T←	{(⥊>⌜˜↕∘≠𝕩)/∾˝≍˘⎉0‿∞˜𝕩}
M←	(⌊2÷˜¯1+≠)⊑⊢
S←	{𝕩⊔˜+`⟨⟩⊸≡¨𝕩}

o‿c←S•FLines"5.in"
c↩	1↓','u.Stn¨c
o↩	>'|'u.Stn¨o	#Added >; breaks first 2 attempts.

•Show	+´(∨´o∊T)◶M‿0¨c
