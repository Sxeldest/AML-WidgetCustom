; =========================================================
; Game Engine Function: sub_DD992
; Address            : 0xDD992 - 0xDD9D2
; =========================================================

DD992:  PUSH            {R4-R7,LR}
DD994:  ADD             R7, SP, #0xC
DD996:  PUSH.W          {R8}
DD99A:  MOV             R8, R0
DD99C:  LDRB            R0, [R2,#4]
DD99E:  MOV             R4, R2
DD9A0:  MOV             R5, R1
DD9A2:  CMP             R0, #1
DD9A4:  BNE             loc_DD9B8
DD9A6:  MOV             R0, R8
DD9A8:  MOV             R1, R5
DD9AA:  MOV             R2, R4
DD9AC:  POP.W           {R8}
DD9B0:  POP.W           {R4-R7,LR}
DD9B4:  B.W             sub_DD9D2
DD9B8:  CBZ             R5, loc_DD9CA
DD9BA:  ADDS            R6, R4, R0
DD9BC:  MOV             R0, R8
DD9BE:  MOV             R1, R4
DD9C0:  MOV             R2, R6
DD9C2:  BL              sub_DCF30
DD9C6:  SUBS            R5, #1
DD9C8:  BNE             loc_DD9BC
DD9CA:  MOV             R0, R8
DD9CC:  POP.W           {R8}
DD9D0:  POP             {R4-R7,PC}
