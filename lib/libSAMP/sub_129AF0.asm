; =========================================================
; Game Engine Function: sub_129AF0
; Address            : 0x129AF0 - 0x129B12
; =========================================================

129AF0:  PUSH            {R4,R6,R7,LR}
129AF2:  ADD             R7, SP, #8
129AF4:  LDR             R4, =(unk_31415C - 0x129AFC)
129AF6:  MOVS            R1, #0
129AF8:  ADD             R4, PC; unk_31415C
129AFA:  MOV             R0, R4
129AFC:  BL              sub_129610
129B00:  LDR             R0, =(sub_129638+1 - 0x129B0A)
129B02:  MOV             R1, R4
129B04:  LDR             R2, =(off_22A540 - 0x129B0C)
129B06:  ADD             R0, PC; sub_129638
129B08:  ADD             R2, PC; off_22A540
129B0A:  POP.W           {R4,R6,R7,LR}
129B0E:  B.W             sub_224250
