#!/usr/bin/env bqn

u←	•Import"U"

P←{	x←⍉○⌽⍟(↕4)𝕩
	c←(0⊸∾∨∾⟜0)˘¨⥊"S."⊸⍷¨x
	e←∨´∘⥊¨c
	c↩⥊⊑e/c
	x↩⊑e/x
	'S'¨⌾(c/⥊)x}
i←	>•FLines⊑⎊"20.ex"•args

P•_while_(∧´∘¬"SE"⍷⥊)i
