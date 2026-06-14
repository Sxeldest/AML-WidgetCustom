; =========================================================
; Game Engine Function: sub_EFB1C
; Address            : 0xEFB1C - 0xEFB5A
; =========================================================

EFB1C:  PUSH            {R4,R5,R7,LR}
EFB1E:  ADD             R7, SP, #8
EFB20:  MOV             R4, R0
EFB22:  LDR             R0, [R0,#0xC]
EFB24:  LDR             R1, [R0,#8]
EFB26:  MOV             R0, R4
EFB28:  BL              sub_EFC70
EFB2C:  LDR             R5, [R4,#8]
EFB2E:  LDRD.W          R0, R2, [R5,#8]
EFB32:  ADDS            R1, R0, #1
EFB34:  CMP             R2, R1
EFB36:  BCS             loc_EFB44
EFB38:  LDR             R0, [R5]
EFB3A:  LDR             R2, [R0]
EFB3C:  MOV             R0, R5
EFB3E:  BLX             R2
EFB40:  LDR             R0, [R5,#8]
EFB42:  ADDS            R1, R0, #1
EFB44:  LDR             R2, [R5,#4]
EFB46:  STR             R1, [R5,#8]
EFB48:  MOVS            R1, #0x3A ; ':'
EFB4A:  STRB            R1, [R2,R0]
EFB4C:  LDR             R0, [R4,#0xC]
EFB4E:  LDR             R1, [R0,#4]
EFB50:  MOV             R0, R4
EFB52:  POP.W           {R4,R5,R7,LR}
EFB56:  B.W             sub_EFC70
