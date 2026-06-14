; =========================================================
; Game Engine Function: sub_F5AA0
; Address            : 0xF5AA0 - 0xF5AC2
; =========================================================

F5AA0:  PUSH            {R4,R6,R7,LR}
F5AA2:  ADD             R7, SP, #8
F5AA4:  LDR             R4, =(unk_240094 - 0xF5AAC)
F5AA6:  MOVS            R1, #0
F5AA8:  ADD             R4, PC; unk_240094
F5AAA:  MOV             R0, R4
F5AAC:  BL              sub_F5574
F5AB0:  LDR             R0, =(sub_F559C+1 - 0xF5ABA)
F5AB2:  MOV             R1, R4
F5AB4:  LDR             R2, =(off_22A540 - 0xF5ABC)
F5AB6:  ADD             R0, PC; sub_F559C
F5AB8:  ADD             R2, PC; off_22A540
F5ABA:  POP.W           {R4,R6,R7,LR}
F5ABE:  B.W             sub_224250
