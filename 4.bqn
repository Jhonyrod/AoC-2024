#!/usr/bin/env bqn

u←•Import"U"
i←>•FLines"4.in"
D←(+⌜´↕¨∘≢)⊸⊔
•Show+´∾"XMAS"{𝕨⊸⍷¨∾(D∾<˘)¨⍉○⌽⍟(↕4)𝕩}i
