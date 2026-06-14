; =========================================================
; Game Engine Function: sub_106B50
; Address            : 0x106B50 - 0x106B82
; =========================================================

106B50:  PUSH            {R4,R6,R7,LR}
106B52:  ADD             R7, SP, #8
106B54:  MOV             R4, R0
106B56:  LDR             R0, [R0,#0x5C]
106B58:  CBZ             R0, loc_106B7E
106B5A:  LDR             R0, [R4,#8]
106B5C:  BL              sub_1082F4
106B60:  CBZ             R0, loc_106B7E
106B62:  LDR             R0, [R4,#0x5C]
106B64:  LDR.W           R0, [R0,#0x440]
106B68:  CBZ             R0, loc_106B7E
106B6A:  LDR             R0, [R0,#0x10]
106B6C:  CBZ             R0, loc_106B7E
106B6E:  BL              sub_10944E
106B72:  MOVW            R1, #0x3FE
106B76:  CMP             R0, R1
106B78:  BNE             loc_106B7E
106B7A:  MOVS            R0, #1
106B7C:  POP             {R4,R6,R7,PC}
106B7E:  MOVS            R0, #0
106B80:  POP             {R4,R6,R7,PC}
