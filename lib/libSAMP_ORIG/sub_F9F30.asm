; =========================================================
; Game Engine Function: sub_F9F30
; Address            : 0xF9F30 - 0xF9F80
; =========================================================

F9F30:  PUSH            {R4-R7,LR}
F9F32:  ADD             R7, SP, #0xC
F9F34:  PUSH.W          {R11}
F9F38:  CMP             R3, R1
F9F3A:  BCS             loc_F9F66
F9F3C:  LDR             R4, [R7,#arg_0]
F9F3E:  CBZ             R4, loc_F9F66
F9F40:  ADD.W           LR, R0, R1,LSL#2
F9F44:  ADD.W           R3, R0, R3,LSL#2
F9F48:  MOV.W           R12, R4,LSL#2
F9F4C:  CMP             R3, LR
F9F4E:  BEQ             loc_F9F6C
F9F50:  MOV             R5, R12
F9F52:  MOV             R6, R2
F9F54:  CBZ             R5, loc_F9F62
F9F56:  LDM             R6!, {R4}
F9F58:  SUBS            R5, #4
F9F5A:  LDR             R1, [R3]
F9F5C:  CMP             R1, R4
F9F5E:  BNE             loc_F9F54
F9F60:  B               loc_F9F6E
F9F62:  ADDS            R3, #4
F9F64:  B               loc_F9F4C
F9F66:  MOV.W           R0, #0xFFFFFFFF
F9F6A:  B               loc_F9F7A
F9F6C:  MOV             R3, LR
F9F6E:  SUBS            R0, R3, R0
F9F70:  ASRS            R0, R0, #2
F9F72:  CMP             R3, LR
F9F74:  IT EQ
F9F76:  MOVEQ.W         R0, #0xFFFFFFFF
F9F7A:  POP.W           {R11}
F9F7E:  POP             {R4-R7,PC}
