; =========================================================
; Game Engine Function: sub_126AE4
; Address            : 0x126AE4 - 0x126B06
; =========================================================

126AE4:  PUSH            {R4,R6,R7,LR}
126AE6:  ADD             R7, SP, #8
126AE8:  LDR             R4, =(unk_313A98 - 0x126AF0)
126AEA:  MOVS            R1, #0
126AEC:  ADD             R4, PC; unk_313A98
126AEE:  MOV             R0, R4
126AF0:  BL              sub_12696C
126AF4:  LDR             R0, =(sub_126994+1 - 0x126AFE)
126AF6:  MOV             R1, R4
126AF8:  LDR             R2, =(off_22A540 - 0x126B00)
126AFA:  ADD             R0, PC; sub_126994
126AFC:  ADD             R2, PC; off_22A540
126AFE:  POP.W           {R4,R6,R7,LR}
126B02:  B.W             sub_224250
