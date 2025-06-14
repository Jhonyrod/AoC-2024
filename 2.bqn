#!/usr/bin/env bqn

u←•Import"U"
i←' 'u.Stn¨•FLines⊑•args
S←(∧´4⊸>∧>⟜0)∘(-´˘2↕⊢)˘⊢≍-
•Show+´∾S¨i
•Show+´∾(∨˝>)¨(S¨(↕∘≠⌽⌜<∘(»≠⥊1˙))/⌜<)¨i
