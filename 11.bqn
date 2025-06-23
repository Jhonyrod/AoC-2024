#!/usr/bin/env bqn

u←	•Import"U"

#S←	{𝕩𝕨.Set¨1+⊒𝕩}
#D←	⊢•HashMap⊒+1˙
F←	{0≡𝕩?1;
	0≡2|≠s←•Repr𝕩?
	u.Pin¨(≠÷2˙)⊸(↑⋈↓)s;
	2024×𝕩}

i←	' 'u.Stn⊑•FLines⊑•args
#c←	•HashMap˜""

#Naïve solution. Obviously incredibly sluggish.
•Show	≠(∾F¨)⍟25 i

#Barely faster, definitely not worth the effort
#•Show	{≠(∾(c.Has◶⟨(⊢⊣c.Set)⟜F,c.Get⟩)¨)⍟25𝕩}i

#Double HashMap version stub; needs refactoring
#I dislike the "global variables", but they are
#quite useful for repeats, especially since the
#final tally will be stored in the histogram h.
#h←	D i
#{r←D∾(c.Has◶⟨c.Get⊣c.Set⟜F,c.Get⟩)¨𝕩
#	h.Set⟜(h.Has◶⟨r.Get,h.Get×r.Get⟩)¨r.Keys@
#	}⍟25 h.Keys@
#In theory this operated only on unique values.
#Apparently this was a dead-end. Using •HashMap
#had negligible performance optimization as the
#time complexity stayed approximately at O(bⁿ).
