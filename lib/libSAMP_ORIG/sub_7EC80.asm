; =========================================================
; Game Engine Function: sub_7EC80
; Address            : 0x7EC80 - 0x7ED52
; =========================================================

7EC80:  PUSH            {R4-R7,LR}
7EC82:  ADD             R7, SP, #0xC
7EC84:  PUSH.W          {R11}
7EC88:  MOV             R2, R0
7EC8A:  LDR             R0, =(byte_1A45F3 - 0x7EC90)
7EC8C:  ADD             R0, PC; byte_1A45F3
7EC8E:  LDRB            R0, [R0]
7EC90:  CBZ             R0, loc_7ECDC
7EC92:  LDR             R6, =(dword_1A49A4 - 0x7EC98)
7EC94:  ADD             R6, PC; dword_1A49A4
7EC96:  LDRD.W          R1, R4, [R6]
7EC9A:  SUBS            R0, R4, R1
7EC9C:  BEQ             loc_7ECC6
7EC9E:  MOVW            R3, #0xAAAB
7ECA2:  ADDS            R1, #0x10
7ECA4:  MOVT            R3, #0x2AAA
7ECA8:  MOVS            R5, #0
7ECAA:  SMMUL.W         R0, R0, R3
7ECAE:  ASRS            R3, R0, #2
7ECB0:  ADD.W           R0, R3, R0,LSR#31
7ECB4:  CMP             R0, #1
7ECB6:  IT LS
7ECB8:  MOVLS           R0, #1
7ECBA:  LDR             R3, [R1]
7ECBC:  CBZ             R3, loc_7ECF2
7ECBE:  ADDS            R5, #1
7ECC0:  ADDS            R1, #0x18
7ECC2:  CMP             R0, R5
7ECC4:  BNE             loc_7ECBA
7ECC6:  LDR             R0, [R6,#(dword_1A49AC - 0x1A49A4)]
7ECC8:  CMP             R4, R0
7ECCA:  BCS             loc_7ECE2
7ECCC:  MOV             R0, R2
7ECCE:  LDR.W           R1, [R0,#0x10]!
7ECD2:  CBZ             R1, loc_7ED0E
7ECD4:  CMP             R2, R1
7ECD6:  BEQ             loc_7ED18
7ECD8:  STR             R1, [R4,#0x10]
7ECDA:  B               loc_7ED12
7ECDC:  MOV.W           R5, #0xFFFFFFFF
7ECE0:  B               loc_7ED3C
7ECE2:  LDR             R4, =(dword_1A49A4 - 0x7ECE8)
7ECE4:  ADD             R4, PC; dword_1A49A4
7ECE6:  MOV             R0, R4
7ECE8:  MOV             R1, R2
7ECEA:  BL              sub_7FB88
7ECEE:  LDR             R0, [R4,#(dword_1A49A8 - 0x1A49A4)]
7ECF0:  B               loc_7ED2A
7ECF2:  MOVS            R0, #0
7ECF4:  MOV             R6, R1
7ECF6:  STR.W           R0, [R6],#-0x10
7ECFA:  MOV             R3, R2
7ECFC:  LDR.W           R4, [R3,#0x10]!
7ED00:  CBZ             R4, loc_7ED0A
7ED02:  CMP             R2, R4
7ED04:  BEQ             loc_7ED44
7ED06:  STR             R4, [R1]
7ED08:  MOV             R1, R3
7ED0A:  STR             R0, [R1]
7ED0C:  B               loc_7ED3C
7ED0E:  ADD.W           R0, R4, #0x10
7ED12:  MOVS            R1, #0
7ED14:  STR             R1, [R0]
7ED16:  B               loc_7ED24
7ED18:  STR             R4, [R4,#0x10]
7ED1A:  LDR             R0, [R0]
7ED1C:  LDR             R1, [R0]
7ED1E:  LDR             R2, [R1,#0xC]
7ED20:  MOV             R1, R4
7ED22:  BLX             R2
7ED24:  ADD.W           R0, R4, #0x18
7ED28:  STR             R0, [R6,#(dword_1A49A8 - 0x1A49A4)]
7ED2A:  LDR             R1, [R6]
7ED2C:  SUBS            R0, R0, R1
7ED2E:  MOV             R1, #0xAAAAAAAB
7ED36:  ASRS            R0, R0, #3
7ED38:  MULS            R0, R1
7ED3A:  SUBS            R5, R0, #1
7ED3C:  MOV             R0, R5
7ED3E:  POP.W           {R11}
7ED42:  POP             {R4-R7,PC}
7ED44:  STR.W           R6, [R1],#-0x10
7ED48:  LDR             R0, [R3]
7ED4A:  LDR             R2, [R0]
7ED4C:  LDR             R2, [R2,#0xC]
7ED4E:  BLX             R2
7ED50:  B               loc_7ED3C
