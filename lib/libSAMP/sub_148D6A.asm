; =========================================================
; Game Engine Function: sub_148D6A
; Address            : 0x148D6A - 0x148DAE
; =========================================================

148D6A:  PUSH            {R4-R7,LR}
148D6C:  ADD             R7, SP, #0xC
148D6E:  PUSH.W          {R8}
148D72:  MOVW            R4, #0xF050
148D76:  ADDW            R5, R0, #0xFB4
148D7A:  MOV             R8, R0
148D7C:  MOVS            R6, #0
148D7E:  MOVT            R4, #0xFFFF
148D82:  LDRB            R0, [R5,R6]
148D84:  CBZ             R0, loc_148D92
148D86:  ADD.W           R0, R5, R6,LSL#2
148D8A:  LDR             R0, [R0,R4]
148D8C:  LDR             R0, [R0]
148D8E:  BL              sub_14933C
148D92:  ADDS            R6, #1
148D94:  CMP.W           R6, #0x3EC
148D98:  BNE             loc_148D82
148D9A:  MOVW            R0, #0x13BC
148D9E:  LDR.W           R0, [R8,R0]
148DA2:  CBZ             R0, loc_148DA8
148DA4:  BL              sub_13E9BC
148DA8:  POP.W           {R8}
148DAC:  POP             {R4-R7,PC}
