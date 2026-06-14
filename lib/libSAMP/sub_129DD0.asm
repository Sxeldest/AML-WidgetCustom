; =========================================================
; Game Engine Function: sub_129DD0
; Address            : 0x129DD0 - 0x129DF2
; =========================================================

129DD0:  PUSH            {R4,R6,R7,LR}
129DD2:  ADD             R7, SP, #8
129DD4:  LDR             R4, =(unk_314184 - 0x129DDC)
129DD6:  MOVS            R1, #0
129DD8:  ADD             R4, PC; unk_314184
129DDA:  MOV             R0, R4
129DDC:  BL              sub_129B20
129DE0:  LDR             R0, =(sub_129B48+1 - 0x129DEA)
129DE2:  MOV             R1, R4
129DE4:  LDR             R2, =(off_22A540 - 0x129DEC)
129DE6:  ADD             R0, PC; sub_129B48
129DE8:  ADD             R2, PC; off_22A540
129DEA:  POP.W           {R4,R6,R7,LR}
129DEE:  B.W             sub_224250
