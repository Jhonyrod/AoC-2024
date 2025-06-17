#!/usr/bin/env bqn

u	←•Import"U"
i	←⍉>' 'u.Stn¨•FLines⊑•args

•Show	+´|-˝∧˘i
•Show	(+´(+´˘=⌜˝)×⊏)i
