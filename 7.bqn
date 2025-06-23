#!/usr/bin/env bqn

u←	•Import"U"

r‿i←<˘⍉>(' '⊸u.Stn¨':'⊸u.Spl)¨•FLines"7.ex"
r∾↩
