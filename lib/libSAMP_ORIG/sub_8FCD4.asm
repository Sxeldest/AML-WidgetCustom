; =========================================================
; Game Engine Function: sub_8FCD4
; Address            : 0x8FCD4 - 0x8FD0E
; =========================================================

8FCD4:  PUSH            {R7,LR}
8FCD6:  MOV             R7, SP
8FCD8:  LDR             R2, =(dword_1ACF68 - 0x8FCE8)
8FCDA:  MOVW            R12, #0x1A10
8FCDE:  MOVW            LR, #0x1A30
8FCE2:  CMP             R1, #0
8FCE4:  ADD             R2, PC; dword_1ACF68
8FCE6:  LDR             R2, [R2]
8FCE8:  LDR.W           R3, [R2,R12]
8FCEC:  ORR.W           R3, R3, #2
8FCF0:  STR.W           R3, [R2,R12]
8FCF4:  LDRD.W          R3, R0, [R0]
8FCF8:  STR.W           R3, [R2,LR]
8FCFC:  ADD.W           R3, R2, LR
8FD00:  STR             R0, [R3,#4]
8FD02:  ADD.W           R0, R2, R12
8FD06:  IT EQ
8FD08:  MOVEQ           R1, #1
8FD0A:  STR             R1, [R0,#8]
8FD0C:  POP             {R7,PC}
