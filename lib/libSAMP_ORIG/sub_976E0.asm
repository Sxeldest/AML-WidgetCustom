; =========================================================
; Game Engine Function: sub_976E0
; Address            : 0x976E0 - 0x9772E
; =========================================================

976E0:  PUSH            {R4,R6,R7,LR}
976E2:  ADD             R7, SP, #8
976E4:  LDR             R3, =(dword_1ACF68 - 0x976F4)
976E6:  MOVW            R12, #0x1A10
976EA:  MOV.W           R4, #0x1A20
976EE:  CMP             R1, #0
976F0:  ADD             R3, PC; dword_1ACF68
976F2:  LDR.W           LR, [R3]
976F6:  LDR.W           R3, [LR,R12]
976FA:  ORR.W           R3, R3, #1
976FE:  STR.W           R3, [LR,R12]
97702:  LDRD.W          R3, R0, [R0]
97706:  STR.W           R3, [LR,R4]
9770A:  ADD.W           R3, LR, #0x1A20
9770E:  STR             R0, [R3,#4]
97710:  MOVW            R3, #0x1A28
97714:  LDRD.W          R0, R2, [R2]
97718:  STR.W           R0, [LR,R3]
9771C:  ADD.W           R0, LR, R3
97720:  STR             R2, [R0,#4]
97722:  ADD.W           R0, LR, R12
97726:  IT EQ
97728:  MOVEQ           R1, #1
9772A:  STR             R1, [R0,#4]
9772C:  POP             {R4,R6,R7,PC}
