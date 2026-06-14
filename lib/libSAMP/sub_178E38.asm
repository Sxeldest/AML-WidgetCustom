; =========================================================
; Game Engine Function: sub_178E38
; Address            : 0x178E38 - 0x178E84
; =========================================================

178E38:  PUSH            {R4,R5,R7,LR}
178E3A:  ADD             R7, SP, #8
178E3C:  ADD.W           R12, R0, R1
178E40:  LDRH.W          R0, [R12,#4]
178E44:  LSLS            R0, R0, #0x10
178E46:  REV             R0, R0
178E48:  CBZ             R0, loc_178E7A
178E4A:  LDRB            R3, [R2]
178E4C:  MOV.W           LR, R0,LSL#4
178E50:  MOVS            R0, #0
178E52:  ADD.W           R1, R12, R0
178E56:  LDRB            R4, [R1,#0xC]
178E58:  CMP             R4, R3
178E5A:  BNE             loc_178E74
178E5C:  LDRB            R4, [R2,#1]
178E5E:  LDRB            R5, [R1,#0xD]
178E60:  CMP             R5, R4
178E62:  BNE             loc_178E74
178E64:  LDRB            R4, [R2,#2]
178E66:  LDRB            R5, [R1,#0xE]
178E68:  CMP             R5, R4
178E6A:  BNE             loc_178E74
178E6C:  LDRB            R4, [R2,#3]
178E6E:  LDRB            R5, [R1,#0xF]
178E70:  CMP             R5, R4
178E72:  BEQ             loc_178E7E
178E74:  ADDS            R0, #0x10
178E76:  CMP             LR, R0
178E78:  BNE             loc_178E52
178E7A:  MOVS            R0, #0
178E7C:  POP             {R4,R5,R7,PC}
178E7E:  LDR             R0, [R1,#0x14]
178E80:  REV             R0, R0
178E82:  POP             {R4,R5,R7,PC}
