; =========================================================
; Game Engine Function: sub_150EA8
; Address            : 0x150EA8 - 0x150EC4
; =========================================================

150EA8:  PUSH            {R4,R6,R7,LR}
150EAA:  ADD             R7, SP, #8
150EAC:  LDR             R1, [R0,#8]; void *
150EAE:  MOV             R4, R0
150EB0:  BL              sub_150EC4
150EB4:  LDR             R0, [R4]; void *
150EB6:  MOVS            R1, #0
150EB8:  STR             R1, [R4]
150EBA:  CBZ             R0, loc_150EC0
150EBC:  BLX             j__ZdlPv; operator delete(void *)
150EC0:  MOV             R0, R4
150EC2:  POP             {R4,R6,R7,PC}
