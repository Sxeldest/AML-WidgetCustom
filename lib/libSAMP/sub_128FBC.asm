; =========================================================
; Game Engine Function: sub_128FBC
; Address            : 0x128FBC - 0x128FDE
; =========================================================

128FBC:  PUSH            {R4,R6,R7,LR}
128FBE:  ADD             R7, SP, #8
128FC0:  LDR             R4, =(unk_314110 - 0x128FC8)
128FC2:  MOVS            R1, #0
128FC4:  ADD             R4, PC; unk_314110
128FC6:  MOV             R0, R4
128FC8:  BL              sub_128438
128FCC:  LDR             R0, =(sub_128460+1 - 0x128FD6)
128FCE:  MOV             R1, R4
128FD0:  LDR             R2, =(off_22A540 - 0x128FD8)
128FD2:  ADD             R0, PC; sub_128460
128FD4:  ADD             R2, PC; off_22A540
128FD6:  POP.W           {R4,R6,R7,LR}
128FDA:  B.W             sub_224250
