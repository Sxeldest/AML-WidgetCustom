; =========================================================
; Game Engine Function: sub_134E26
; Address            : 0x134E26 - 0x134E70
; =========================================================

134E26:  PUSH            {R4-R7,LR}
134E28:  ADD             R7, SP, #0xC
134E2A:  PUSH.W          {R8}
134E2E:  LDR             R6, [R0,#0x64]
134E30:  MOV             R4, R0
134E32:  LDRB.W          R0, [R6,#0x50]
134E36:  CMP             R0, #1
134E38:  BEQ             loc_134E44
134E3A:  LDR             R0, [R6]
134E3C:  MOVS            R1, #1
134E3E:  LDR             R2, [R0,#0x24]
134E40:  MOV             R0, R6
134E42:  BLX             R2
134E44:  LDR             R5, [R4,#0x60]
134E46:  MOV.W           R8, #1
134E4A:  STRB.W          R8, [R6,#0x50]
134E4E:  LDRB.W          R0, [R5,#0x50]
134E52:  CMP             R0, #1
134E54:  BEQ             loc_134E60
134E56:  LDR             R0, [R5]
134E58:  MOVS            R1, #1
134E5A:  LDR             R2, [R0,#0x24]
134E5C:  MOV             R0, R5
134E5E:  BLX             R2
134E60:  MOVS            R0, #0
134E62:  STRB.W          R8, [R5,#0x50]
134E66:  STRB.W          R0, [R4,#0x58]
134E6A:  POP.W           {R8}
134E6E:  POP             {R4-R7,PC}
