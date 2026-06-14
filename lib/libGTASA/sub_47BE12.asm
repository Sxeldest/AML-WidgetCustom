; =========================================================
; Game Engine Function: sub_47BE12
; Address            : 0x47BE12 - 0x47BEB0
; =========================================================

47BE12:  PUSH            {R4-R7,LR}
47BE14:  ADD             R7, SP, #0xC
47BE16:  PUSH.W          {R8-R11}
47BE1A:  SUB             SP, SP, #4
47BE1C:  MOV             R4, R1
47BE1E:  MOV             R5, R0
47BE20:  CMP             R4, #1
47BE22:  BLT             loc_47BEA8
47BE24:  LDR.W           R8, [R5,#0x18]
47BE28:  LDR.W           R9, [R8,#4]
47BE2C:  CMP             R9, R4
47BE2E:  BGE             loc_47BE9A
47BE30:  MOV.W           R10, #0xD9
47BE34:  MOV.W           R11, #0
47BE38:  MOV             R6, R8
47BE3A:  B               loc_47BE3E
47BE3C:  LDR             R6, [R5,#0x18]
47BE3E:  LDRD.W          R3, R0, [R6,#0x1C]; stream
47BE42:  MOVS            R1, #1; size
47BE44:  MOV.W           R2, #0x1000; n
47BE48:  BLX             fread
47BE4C:  SUB.W           R4, R4, R9
47BE50:  CMP             R0, #0
47BE52:  BNE             loc_47BE88
47BE54:  LDRB.W          R0, [R6,#0x24]
47BE58:  CBZ             R0, loc_47BE68
47BE5A:  LDR             R0, [R5]
47BE5C:  MOVS            R1, #0x2A ; '*'
47BE5E:  STR             R1, [R0,#0x14]
47BE60:  LDR             R0, [R5]
47BE62:  LDR             R1, [R0]
47BE64:  MOV             R0, R5
47BE66:  BLX             R1
47BE68:  LDR             R0, [R5]
47BE6A:  MOVS            R1, #0x78 ; 'x'
47BE6C:  STR             R1, [R0,#0x14]
47BE6E:  MOV.W           R1, #0xFFFFFFFF
47BE72:  LDR             R0, [R5]
47BE74:  LDR             R2, [R0,#4]
47BE76:  MOV             R0, R5
47BE78:  BLX             R2
47BE7A:  LDR             R0, [R6,#0x20]
47BE7C:  MOVS            R1, #0xFF
47BE7E:  STRB            R1, [R0]
47BE80:  LDR             R0, [R6,#0x20]
47BE82:  STRB.W          R10, [R0,#1]
47BE86:  MOVS            R0, #2
47BE88:  LDR             R1, [R6,#0x20]
47BE8A:  STRB.W          R11, [R6,#0x24]
47BE8E:  STRD.W          R1, R0, [R6]
47BE92:  LDR.W           R9, [R8,#4]
47BE96:  CMP             R4, R9
47BE98:  BGT             loc_47BE3C
47BE9A:  LDR.W           R0, [R8]
47BE9E:  SUB.W           R1, R9, R4
47BEA2:  ADD             R0, R4
47BEA4:  STRD.W          R0, R1, [R8]
47BEA8:  ADD             SP, SP, #4
47BEAA:  POP.W           {R8-R11}
47BEAE:  POP             {R4-R7,PC}
