#!/usr/bin/env bqn

u	←•Import"U"
i	←>•FLines⊑•args
_M	←{((+´(R𝕨)∊⋈)𝕗¨⌾((𝕗=𝕨)/○⥊⊢))⎉2𝕨≢⊸↕𝕩}
D	←(+⌜´↕¨∘≢)⊸⊔
R	←⍉○⌽⍟(↕4)
x←[	"M M"
	" A "
	"S S"]

•Show	+´∾"XMAS"{𝕨⊸⍷¨∾(D∾<˘)¨R𝕩}i
•Show	+´⥊x' '_M i
