#!/usr/bin/env bqn

u←	•Import"U"

#○lap≡+˜'#'-@. Very dirty trick
o←	70

#Locks‿Keys
l‿k←@-˜'.'((=⟜⊑¨)⊔⊢)>¨u.Snl•FLines⊑•args

•Show	+´⥊¬∨´∘⥊¨o⍷¨l+⌜k
