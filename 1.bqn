#!/usr/bin/env bqn

u←•Import"U"
•Show+´|-˝∧˘i←⍉>u.Stn¨•FLines⊑•args
•Show(+´(+´˘=⌜˝)×⊏)i
