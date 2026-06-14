; =========================================================
; Game Engine Function: sub_162F34
; Address            : 0x162F34 - 0x162F56
; =========================================================

162F34:  PUSH            {R4,R6,R7,LR}
162F36:  ADD             R7, SP, #8
162F38:  LDR             R4, =(unk_381A78 - 0x162F40)
162F3A:  MOVS            R1, #0
162F3C:  ADD             R4, PC; unk_381A78
162F3E:  MOV             R0, R4
162F40:  BL              sub_162918
162F44:  LDR             R0, =(sub_162940+1 - 0x162F4E)
162F46:  MOV             R1, R4
162F48:  LDR             R2, =(off_22A540 - 0x162F50)
162F4A:  ADD             R0, PC; sub_162940
162F4C:  ADD             R2, PC; off_22A540
162F4E:  POP.W           {R4,R6,R7,LR}
162F52:  B.W             sub_224250
