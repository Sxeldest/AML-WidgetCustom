; =========================================================
; Game Engine Function: sub_F4188
; Address            : 0xF4188 - 0xF41AA
; =========================================================

F4188:  PUSH            {R4,R6,R7,LR}
F418A:  ADD             R7, SP, #8
F418C:  LDR             R4, =(unk_240010 - 0xF4194)
F418E:  MOVS            R1, #0
F4190:  ADD             R4, PC; unk_240010
F4192:  MOV             R0, R4
F4194:  BL              sub_F3A5C
F4198:  LDR             R0, =(sub_F3A84+1 - 0xF41A2)
F419A:  MOV             R1, R4
F419C:  LDR             R2, =(off_22A540 - 0xF41A4)
F419E:  ADD             R0, PC; sub_F3A84
F41A0:  ADD             R2, PC; off_22A540
F41A2:  POP.W           {R4,R6,R7,LR}
F41A6:  B.W             sub_224250
