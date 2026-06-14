; =========================================================
; Game Engine Function: ec_encode_bin
; Address            : 0xB6EA8 - 0xB6F84
; =========================================================

B6EA8:  PUSH            {R4-R7,LR}
B6EAA:  ADD             R7, SP, #0xC
B6EAC:  PUSH.W          {R8}
B6EB0:  LDR             R5, [R0,#0x1C]
B6EB2:  MOVS            R4, #1
B6EB4:  MOVW            R12, #1
B6EB8:  LSLS            R4, R3
B6EBA:  MOVT            R12, #0x80
B6EBE:  CMP             R1, #0
B6EC0:  LSR.W           R3, R5, R3
B6EC4:  BEQ             loc_B6ED8
B6EC6:  SUBS            R4, R4, R1
B6EC8:  SUBS            R1, R2, R1
B6ECA:  LDR             R2, [R0,#0x20]
B6ECC:  MLS.W           R5, R3, R4, R5
B6ED0:  MULS            R1, R3
B6ED2:  ADD             R2, R5
B6ED4:  STR             R2, [R0,#0x20]
B6ED6:  B               loc_B6EDE
B6ED8:  SUBS            R1, R4, R2
B6EDA:  MLS.W           R1, R3, R1, R5
B6EDE:  CMP             R1, R12
B6EE0:  STR             R1, [R0,#0x1C]
B6EE2:  BCS             loc_B6F7E
B6EE4:  LDR             R3, [R0,#0x20]
B6EE6:  MOVW            R8, #0xFF00
B6EEA:  MOV.W           LR, #0xFF
B6EEE:  MOVT            R8, #0x7FFF
B6EF2:  CMP.W           LR, R3,LSR#23
B6EF6:  BNE             loc_B6F00
B6EF8:  LDR             R2, [R0,#0x24]
B6EFA:  ADDS            R2, #1
B6EFC:  STR             R2, [R0,#0x24]
B6EFE:  B               loc_B6F68
B6F00:  LDR             R4, [R0,#0x28]
B6F02:  LSRS            R1, R3, #0x1F
B6F04:  CMP             R4, #0
B6F06:  BLT             loc_B6F2C
B6F08:  LDRD.W          R6, R2, [R0,#4]
B6F0C:  LDR             R5, [R0,#0x18]
B6F0E:  ADD             R2, R5
B6F10:  CMP             R2, R6
B6F12:  BCS             loc_B6F22
B6F14:  LDR             R2, [R0]
B6F16:  ADD             R4, R1
B6F18:  ADDS            R6, R5, #1
B6F1A:  STR             R6, [R0,#0x18]
B6F1C:  STRB            R4, [R2,R5]
B6F1E:  MOVS            R4, #0
B6F20:  B               loc_B6F26
B6F22:  MOV.W           R4, #0xFFFFFFFF
B6F26:  LDR             R2, [R0,#0x2C]
B6F28:  ORRS            R2, R4
B6F2A:  STR             R2, [R0,#0x2C]
B6F2C:  LSRS            R4, R3, #0x17
B6F2E:  LDR             R3, [R0,#0x24]
B6F30:  CBZ             R3, loc_B6F60
B6F32:  ADDS            R1, #0xFF
B6F34:  LDRD.W          R2, R6, [R0,#4]
B6F38:  LDR             R5, [R0,#0x18]
B6F3A:  ADD             R6, R5
B6F3C:  CMP             R6, R2
B6F3E:  BCS             loc_B6F4E
B6F40:  LDR             R2, [R0]
B6F42:  ADDS            R3, R5, #1
B6F44:  STR             R3, [R0,#0x18]
B6F46:  STRB            R1, [R2,R5]
B6F48:  MOVS            R5, #0
B6F4A:  LDR             R3, [R0,#0x24]
B6F4C:  B               loc_B6F52
B6F4E:  MOV.W           R5, #0xFFFFFFFF
B6F52:  LDR             R2, [R0,#0x2C]
B6F54:  SUBS            R3, #1
B6F56:  STR             R3, [R0,#0x24]
B6F58:  ORR.W           R2, R2, R5
B6F5C:  STR             R2, [R0,#0x2C]
B6F5E:  BNE             loc_B6F34
B6F60:  UXTB            R2, R4
B6F62:  LDRD.W          R1, R3, [R0,#0x1C]
B6F66:  STR             R2, [R0,#0x28]
B6F68:  LDR             R2, [R0,#0x14]
B6F6A:  AND.W           R3, R8, R3,LSL#8
B6F6E:  LSLS            R1, R1, #8
B6F70:  CMP             R1, R12
B6F72:  STRD.W          R1, R3, [R0,#0x1C]
B6F76:  ADD.W           R2, R2, #8
B6F7A:  STR             R2, [R0,#0x14]
B6F7C:  BCC             loc_B6EF2
B6F7E:  POP.W           {R8}
B6F82:  POP             {R4-R7,PC}
