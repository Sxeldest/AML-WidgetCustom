; =========================================================
; Game Engine Function: sub_216FC8
; Address            : 0x216FC8 - 0x216FFE
; =========================================================

216FC8:  PUSH            {R4,R5,R7,LR}
216FCA:  ADD             R7, SP, #8
216FCC:  MOV             R4, R1
216FCE:  LDR             R1, =(aConstructionVt - 0x216FD8); "construction vtable for " ...
216FD0:  MOV             R5, R0
216FD2:  MOV             R0, R4
216FD4:  ADD             R1, PC; "construction vtable for "
216FD6:  ADD.W           R2, R1, #0x18
216FDA:  BL              sub_216F98
216FDE:  LDR             R0, [R5,#8]
216FE0:  MOV             R1, R4
216FE2:  BL              sub_2154CC
216FE6:  LDR             R1, =(aIn - 0x216FEE); "-in-" ...
216FE8:  MOV             R0, R4
216FEA:  ADD             R1, PC; "-in-"
216FEC:  ADDS            R2, R1, #4
216FEE:  BL              sub_216F98
216FF2:  LDR             R0, [R5,#0xC]
216FF4:  MOV             R1, R4
216FF6:  POP.W           {R4,R5,R7,LR}
216FFA:  B.W             sub_2154CC
