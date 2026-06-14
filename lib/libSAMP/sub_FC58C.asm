; =========================================================
; Game Engine Function: sub_FC58C
; Address            : 0xFC58C - 0xFC5B4
; =========================================================

FC58C:  PUSH            {R4,R6,R7,LR}
FC58E:  ADD             R7, SP, #8
FC590:  MOV             R4, R0
FC592:  LDRD.W          R0, R3, [R1,#4]
FC596:  ADD.W           R2, R4, #0x18
FC59A:  CMP             R0, R3
FC59C:  BCS             loc_FC5A8
FC59E:  LDR             R2, [R2]
FC5A0:  STR.W           R2, [R0],#4
FC5A4:  STR             R0, [R1,#4]
FC5A6:  B               loc_FC5B0
FC5A8:  MOV             R0, R1
FC5AA:  MOV             R1, R2
FC5AC:  BL              sub_100BD0
FC5B0:  MOV             R0, R4
FC5B2:  POP             {R4,R6,R7,PC}
