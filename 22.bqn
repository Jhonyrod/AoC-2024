#!/usr/bin/env bqn

u←	•Import"U"

H←	×∘⊣◶⟨0¨⊢,«∘⊢⍟⊣≠⊢,»∘⊢⍟(-⊣)≠⊢⟩
i←	2 u.D2B⟜u.Pin¨•FLines⊑•args
•Show+´((u.B2N{11 H ¯5 H 6 H𝕩}⍟2000)¯24↑⊢)¨i
