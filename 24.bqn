#!/usr/bin/env bqn

u←	•Import"U"

#List of pairs to HashMap, might add to Utils
H←	•HashMap˝·⍉>

# Instruction parser
F←{	w‿y‿x:	s←"AND"‿"OR"‿"XOR"
			m←"Invalid operator: "
			#Select operator based on the string
			#Throw error on unknown instruction.
			I←(s⊸⊐⌾<y)◶∧‿∨‿≠‿(!m∾•Repr⟜y)
#Recursive stub	#L←•Type◶(z.Has◶⊢‿z.Get)‿⊢
			#NOP on non binary w and x
			w(∧´⋈∊↕∘2)◶⟨𝕩,I⟩x;
	𝕩:		!"Invalid length: 3≢≠𝕩"}

i‿c←u.Snl•FLines⊑•args

#Initial values dictionary
d←	H i((⊑"1"∊⊢)⌾(¯1⊸⊑)':'⊸u.Spl)¨↩
#Interconnections intermediate parser
c	(' '⊸u.Spl⌾⊑" -> "u.Sow⊢)¨↩
z←	""
{𝕊r:
	#Replace "wire" names with their values.
	#Concurrently try to operate on results.
	c(F d.Has◶⊢‿d.Get¨)⌾⊑¨↩
	#Group by depth.
	c‿r↩2↑(⌽≡¨⊔⊢)c
	#Replace the HM with the resolved values
	#Concurrently, if a zxx node is found to
	#be completely resolved, append it to z.
	z∾↩(('z'=⊑∘∾¨)/⊢)r⌽¨↩
	d↩H⎊@r
	r
}•_while_(0<≠)i
#Lexicographically sort keys according to LSB
#and convert the list of binary digits to num
#I had to bodge c in as it ended containing a
#single resolved zxx node. This might make it
#a specialized solution for my puzzle inputs.
•Show u.B2n⊢´¨∨z∾⌽¨c
