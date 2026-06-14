; =========================================================
; Game Engine Function: sub_106A90
; Address            : 0x106A90 - 0x106AB0
; =========================================================

106A90:  PUSH            {R4,R6,R7,LR}
106A92:  ADD             R7, SP, #8
106A94:  MOV             R4, R0
106A96:  LDR             R0, [R0,#8]
106A98:  BL              sub_1082F4
106A9C:  CBZ             R0, loc_106AAC
106A9E:  LDR             R0, [R4,#0x5C]
106AA0:  CBZ             R0, loc_106AAC
106AA2:  LDRB.W          R0, [R0,#0x487]
106AA6:  UBFX.W          R0, R0, #2, #1
106AAA:  POP             {R4,R6,R7,PC}
106AAC:  MOVS            R0, #0
106AAE:  POP             {R4,R6,R7,PC}
