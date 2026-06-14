; =========================================================
; Game Engine Function: sub_119D9C
; Address            : 0x119D9C - 0x119DB8
; =========================================================

119D9C:  PUSH            {R4,R5,R7,LR}
119D9E:  ADD             R7, SP, #8
119DA0:  MOV             R4, R1
119DA2:  MOV             R5, R0
119DA4:  BL              sub_11B2F8
119DA8:  LDR             R0, =(unk_263630 - 0x119DB2)
119DAA:  MOV             R1, R5
119DAC:  MOV             R2, R4
119DAE:  ADD             R0, PC; unk_263630
119DB0:  POP.W           {R4,R5,R7,LR}
119DB4:  B.W             sub_11B432
