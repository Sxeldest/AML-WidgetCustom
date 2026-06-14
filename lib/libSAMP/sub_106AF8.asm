; =========================================================
; Game Engine Function: sub_106AF8
; Address            : 0x106AF8 - 0x106B26
; =========================================================

106AF8:  PUSH            {R4,R6,R7,LR}
106AFA:  ADD             R7, SP, #8
106AFC:  MOV             R4, R0
106AFE:  LDR             R0, [R0,#8]
106B00:  BL              sub_1082F4
106B04:  CBZ             R0, loc_106B22
106B06:  LDR             R0, [R4,#0x5C]
106B08:  CBZ             R0, loc_106B22
106B0A:  LDR.W           R0, [R0,#0x440]
106B0E:  CBZ             R0, loc_106B22
106B10:  LDR             R0, [R0,#0x10]
106B12:  CBZ             R0, loc_106B22
106B14:  BL              sub_10944E
106B18:  CMP.W           R0, #0x2C0
106B1C:  BNE             loc_106B22
106B1E:  MOVS            R0, #1
106B20:  POP             {R4,R6,R7,PC}
106B22:  MOVS            R0, #0
106B24:  POP             {R4,R6,R7,PC}
