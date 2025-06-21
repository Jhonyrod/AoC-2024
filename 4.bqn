#!/usr/bin/env bqn

u←	•Import"U"

_M←	{((+´(R𝕨)∊⋈)𝕗¨⌾((𝕗=𝕨)/○⥊⊢))⎉2𝕨≢⊸↕𝕩}
D←	(+⌜´↕¨∘≢)⊸⊔
R←	⍉○⌽⍟(↕4)

i←	>•FLines⊑•args
x←[	"M M"
	" A "
	"S S"]

•Show	+´∾"XMAS"{𝕨⊸⍷¨∾(D∾<˘)¨R𝕩}i
•Show	+´⥊x' '_M i
