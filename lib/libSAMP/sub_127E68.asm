; =========================================================
; Game Engine Function: sub_127E68
; Address            : 0x127E68 - 0x127EB0
; =========================================================

127E68:  PUSH            {R4,R5,R7,LR}
127E6A:  ADD             R7, SP, #8
127E6C:  MOV             R4, R0
127E6E:  LDR             R0, [R0,#0x10]
127E70:  MOV             R5, R1
127E72:  MOVS            R1, #0
127E74:  CMP             R4, R0
127E76:  STR             R1, [R4,#0x10]
127E78:  BEQ             loc_127E80
127E7A:  CBZ             R0, loc_127E8A
127E7C:  MOVS            R1, #5
127E7E:  B               loc_127E82
127E80:  MOVS            R1, #4
127E82:  LDR             R2, [R0]
127E84:  LDR.W           R1, [R2,R1,LSL#2]
127E88:  BLX             R1
127E8A:  LDR             R0, [R5,#0x10]
127E8C:  CBZ             R0, loc_127E9A
127E8E:  CMP             R5, R0
127E90:  BEQ             loc_127EA0
127E92:  STR             R0, [R4,#0x10]
127E94:  MOVS            R0, #0
127E96:  STR             R0, [R5,#0x10]
127E98:  B               loc_127EAC
127E9A:  MOVS            R0, #0
127E9C:  STR             R0, [R4,#0x10]
127E9E:  B               loc_127EAC
127EA0:  STR             R4, [R4,#0x10]
127EA2:  LDR             R0, [R5,#0x10]
127EA4:  LDR             R1, [R0]
127EA6:  LDR             R2, [R1,#0xC]
127EA8:  MOV             R1, R4
127EAA:  BLX             R2
127EAC:  MOV             R0, R4
127EAE:  POP             {R4,R5,R7,PC}
