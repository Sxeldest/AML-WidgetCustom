; =========================================================
; Game Engine Function: sub_106B26
; Address            : 0x106B26 - 0x106B50
; =========================================================

106B26:  PUSH            {R7,LR}
106B28:  MOV             R7, SP
106B2A:  LDR             R0, [R0,#0x5C]
106B2C:  CBZ             R0, loc_106B4C
106B2E:  LDRB.W          R1, [R0,#0x485]
106B32:  LSLS            R1, R1, #0x1F
106B34:  BNE             loc_106B4C
106B36:  LDR.W           R0, [R0,#0x440]
106B3A:  CBZ             R0, loc_106B4C
106B3C:  LDR             R0, [R0,#4]
106B3E:  CBZ             R0, loc_106B4C
106B40:  BL              sub_10944E
106B44:  CMP             R0, #0xD0
106B46:  ITT EQ
106B48:  MOVEQ           R0, #1
106B4A:  POPEQ           {R7,PC}
106B4C:  MOVS            R0, #0
106B4E:  POP             {R7,PC}
