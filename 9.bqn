#!/usr/bin/env bqn

u←	•Import"U"

A←	≠↑((⥊≍˘⟜0)1+↕∘≠)
P←{	d←/⟜A𝕩
	c←⌽0⊸≠⊸/d
	(≠c)↑(≠↑c˙)⌾((2|/𝕩)⊸/)d}

i←	'0'-˜∾•Flines⊑•args

•Show	(+´⊢×↕∘≠)¯1+P i
