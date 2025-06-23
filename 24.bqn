#!/usr/bin/env bqn

u←	•Import"U"

i‿r←u.Snl•FLines"24.ex"
m←	•HashMap˝⍉>((⊑"1"⊸∊)⌾(¯1⊸⊑)':'⊸u.Spl)¨i
