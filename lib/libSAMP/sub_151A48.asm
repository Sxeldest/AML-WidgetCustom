; =========================================================
; Game Engine Function: sub_151A48
; Address            : 0x151A48 - 0x151AA6
; =========================================================

151A48:  PUSH            {R4,R6,R7,LR}
151A4A:  ADD             R7, SP, #8
151A4C:  MOV             R4, R0
151A4E:  LDRB            R1, [R0,#0x12]
151A50:  LDR             R0, [R0,#4]
151A52:  CBZ             R0, loc_151A60
151A54:  CBZ             R1, loc_151A66
151A56:  BL              sub_15DF00
151A5A:  CBZ             R0, loc_151A74
151A5C:  MOVS            R0, #0
151A5E:  POP             {R4,R6,R7,PC}
151A60:  EOR.W           R0, R1, #1
151A64:  POP             {R4,R6,R7,PC}
151A66:  MOV             R0, R4
151A68:  BL              sub_151AA8
151A6C:  CMP             R0, #0
151A6E:  IT NE
151A70:  MOVNE           R0, #4
151A72:  POP             {R4,R6,R7,PC}
151A74:  LDRB            R0, [R4,#0x15]
151A76:  CBZ             R0, loc_151AA2
151A78:  LDRB            R0, [R4,#0x13]
151A7A:  CBZ             R0, loc_151A88
151A7C:  LDR             R0, [R4,#4]
151A7E:  BL              sub_15DF86
151A82:  CMP             R0, #0
151A84:  BEQ             loc_151A5C
151A86:  B               loc_151AA2
151A88:  LDRB            R0, [R4,#0x16]
151A8A:  CBNZ            R0, loc_151AA2
151A8C:  LDR             R0, [R4,#4]
151A8E:  BL              sub_15DF86
151A92:  CBNZ            R0, loc_151AA2
151A94:  LDR             R0, [R4,#4]
151A96:  BL              sub_15DF9A
151A9A:  CMP             R0, #0
151A9C:  BEQ             loc_151A5C
151A9E:  MOVS            R0, #1
151AA0:  STRB            R0, [R4,#0x16]
151AA2:  MOVS            R0, #4
151AA4:  POP             {R4,R6,R7,PC}
