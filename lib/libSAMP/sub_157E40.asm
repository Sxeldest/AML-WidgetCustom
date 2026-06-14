; =========================================================
; Game Engine Function: sub_157E40
; Address            : 0x157E40 - 0x157E92
; =========================================================

157E40:  PUSH            {R4,R6,R7,LR}
157E42:  ADD             R7, SP, #8
157E44:  MOV             R4, R0
157E46:  LDR             R0, [R0]
157E48:  CBZ             R0, loc_157E52
157E4A:  LDRB            R1, [R4,#0x10]
157E4C:  CBZ             R1, loc_157E56
157E4E:  LDR             R1, [R4,#8]
157E50:  B               loc_157E78
157E52:  MOVS            R0, #0
157E54:  POP             {R4,R6,R7,PC}
157E56:  LDR             R1, [R0]
157E58:  LDR             R1, [R1,#0x10]
157E5A:  BLX             R1
157E5C:  CBZ             R0, loc_157E62
157E5E:  MOVS            R0, #1
157E60:  B               loc_157E6A
157E62:  LDR             R0, [R4]
157E64:  LDR             R1, [R0]
157E66:  LDR             R1, [R1,#8]
157E68:  BLX             R1
157E6A:  LDR             R1, [R4]
157E6C:  STRB            R0, [R4,#0x10]
157E6E:  LDR             R1, [R1,#0x1C]
157E70:  DMB.W           ISH
157E74:  LDR             R0, [R4]
157E76:  STR             R1, [R4,#8]
157E78:  LDR             R2, [R0,#0x1C]
157E7A:  DMB.W           ISH
157E7E:  LDR             R3, [R0,#0x18]
157E80:  LDRB            R0, [R4,#0x10]
157E82:  SUBS            R1, R2, R1
157E84:  IT CC
157E86:  ADDCC           R1, R3
157E88:  STR             R1, [R4,#0xC]
157E8A:  CMP             R0, #0
157E8C:  IT NE
157E8E:  MOVNE           R0, #1
157E90:  POP             {R4,R6,R7,PC}
