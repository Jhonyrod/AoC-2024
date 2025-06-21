#!/usr/bin/env bqn

u←	•Import"U"

#○lap:	70≡2×@-˜"#"
o←	70

#Locks‿Keys
l‿k←	@-˜'.'((=⟜⊑¨)⊔⊢)>¨u.Snl•FLines(⊑⎊"25.ex")•args

•Show	+´⥊¬(∨´⥊)¨o⍷¨l+⌜k
