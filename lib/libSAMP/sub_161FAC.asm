; =========================================================
; Game Engine Function: sub_161FAC
; Address            : 0x161FAC - 0x161FCE
; =========================================================

161FAC:  PUSH            {R4,R6,R7,LR}
161FAE:  ADD             R7, SP, #8
161FB0:  LDR             R4, =(unk_381A60 - 0x161FB8)
161FB2:  MOVS            R1, #0
161FB4:  ADD             R4, PC; unk_381A60
161FB6:  MOV             R0, R4
161FB8:  BL              sub_161964
161FBC:  LDR             R0, =(sub_16198C+1 - 0x161FC6)
161FBE:  MOV             R1, R4
161FC0:  LDR             R2, =(off_22A540 - 0x161FC8)
161FC2:  ADD             R0, PC; sub_16198C
161FC4:  ADD             R2, PC; off_22A540
161FC6:  POP.W           {R4,R6,R7,LR}
161FCA:  B.W             sub_224250
