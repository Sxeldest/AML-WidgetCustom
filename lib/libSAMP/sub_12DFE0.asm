; =========================================================
; Game Engine Function: sub_12DFE0
; Address            : 0x12DFE0 - 0x12E018
; =========================================================

12DFE0:  PUSH            {R4,R5,R7,LR}
12DFE2:  ADD             R7, SP, #8
12DFE4:  MOV             R4, R0
12DFE6:  LDR             R0, [R0]
12DFE8:  CBZ             R0, loc_12E014
12DFEA:  DMB.W           ISH
12DFEE:  LDREX.W         R1, [R0]
12DFF2:  SUBS            R2, R1, #1
12DFF4:  STREX.W         R3, R2, [R0]
12DFF8:  CMP             R3, #0
12DFFA:  BNE             loc_12DFEE
12DFFC:  CMP             R1, #1
12DFFE:  DMB.W           ISH
12E002:  BNE             loc_12E014
12E004:  LDR             R5, [R4]
12E006:  CBZ             R5, loc_12E014
12E008:  ADDS            R0, R5, #4
12E00A:  BL              sub_12E1C0
12E00E:  MOV             R0, R5; void *
12E010:  BLX             j__ZdlPv; operator delete(void *)
12E014:  MOV             R0, R4
12E016:  POP             {R4,R5,R7,PC}
