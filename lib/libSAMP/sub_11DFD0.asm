; =========================================================
; Game Engine Function: sub_11DFD0
; Address            : 0x11DFD0 - 0x11DFF2
; =========================================================

11DFD0:  PUSH            {R4,R6,R7,LR}
11DFD2:  ADD             R7, SP, #8
11DFD4:  LDR             R4, =(unk_2637D4 - 0x11DFDC)
11DFD6:  MOVS            R1, #0
11DFD8:  ADD             R4, PC; unk_2637D4
11DFDA:  MOV             R0, R4
11DFDC:  BL              sub_11DA78
11DFE0:  LDR             R0, =(sub_11DAA0+1 - 0x11DFEA)
11DFE2:  MOV             R1, R4
11DFE4:  LDR             R2, =(off_22A540 - 0x11DFEC)
11DFE6:  ADD             R0, PC; sub_11DAA0
11DFE8:  ADD             R2, PC; off_22A540
11DFEA:  POP.W           {R4,R6,R7,LR}
11DFEE:  B.W             sub_224250
