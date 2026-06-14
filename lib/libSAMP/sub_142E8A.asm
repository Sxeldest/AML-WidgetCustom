; =========================================================
; Game Engine Function: sub_142E8A
; Address            : 0x142E8A - 0x142F90
; =========================================================

142E8A:  PUSH            {R4-R7,LR}
142E8C:  ADD             R7, SP, #0xC
142E8E:  PUSH.W          {R8-R11}
142E92:  SUB             SP, SP, #0x124
142E94:  MOV             R4, R0
142E96:  MOVS            R0, #0
142E98:  STRB.W          R0, [R7,#var_1D]
142E9C:  MOVS            R3, #0
142E9E:  STR             R0, [SP,#0x140+var_24]
142EA0:  LDR.W           R0, [R4,#0x3B0]
142EA4:  LDR             R2, [R1,#0xC]; size
142EA6:  LDR             R1, [R1,#0x14]; src
142EA8:  LDR             R6, [R0]
142EAA:  MOV             R0, SP; int
142EAC:  BL              sub_17D4F2
142EB0:  LDR.W           R0, [R4,#0x218]
142EB4:  CMP             R0, #5
142EB6:  BNE             loc_142F82
142EB8:  SUB.W           R1, R7, #-var_1D; int
142EBC:  MOV             R0, SP; int
142EBE:  MOVS            R2, #8
142EC0:  MOVS            R3, #1
142EC2:  BL              sub_17D786
142EC6:  ADD             R1, SP, #0x140+var_24; int
142EC8:  MOV             R0, SP; int
142ECA:  MOVS            R2, #0x20 ; ' '
142ECC:  MOVS            R3, #1
142ECE:  BL              sub_17D786
142ED2:  LDR             R0, [SP,#0x140+var_24]
142ED4:  CMP             R0, #0
142ED6:  BEQ             loc_142F82
142ED8:  CMP             R0, #1
142EDA:  BLT             loc_142F82
142EDC:  SUB.W           R11, R7, #-var_26
142EE0:  ADD.W           R10, SP, #0x140+var_2C
142EE4:  MOVS            R5, #0
142EE6:  MOV             R4, SP
142EE8:  MOV             R0, R4; int
142EEA:  MOV             R1, R11; int
142EEC:  MOVS            R2, #0x10
142EEE:  MOVS            R3, #1
142EF0:  BL              sub_17D786
142EF4:  LDR             R1, [SP,#0x140+var_140]
142EF6:  LDR             R0, [SP,#0x140+var_138]
142EF8:  CMP             R0, R1
142EFA:  BGE             loc_142F14
142EFC:  LDR             R1, [SP,#0x140+var_134]
142EFE:  ASRS            R2, R0, #3
142F00:  LDRB            R1, [R1,R2]
142F02:  ADDS            R2, R0, #1
142F04:  AND.W           R0, R0, #7
142F08:  STR             R2, [SP,#0x140+var_138]
142F0A:  LSL.W           R0, R1, R0
142F0E:  UXTB            R0, R0
142F10:  MOV.W           R8, R0,LSR#7
142F14:  MOVS.W          R9, R8,LSL#24
142F18:  BEQ             loc_142F40
142F1A:  ADD             R1, SP, #0x140+var_28; int
142F1C:  MOV             R0, R4; int
142F1E:  MOVS            R2, #0x10
142F20:  MOVS            R3, #1
142F22:  BL              sub_17D786
142F26:  SUB.W           R1, R7, #-var_2A; int
142F2A:  MOV             R0, R4; int
142F2C:  MOVS            R2, #0x10
142F2E:  MOVS            R3, #1
142F30:  BL              sub_17D786
142F34:  MOV             R0, R4; int
142F36:  MOV             R1, R10; int
142F38:  MOVS            R2, #0x10
142F3A:  MOVS            R3, #1
142F3C:  BL              sub_17D786
142F40:  LDRH.W          R0, [R7,#var_26]
142F44:  CMP.W           R0, #0x3EC
142F48:  BHI             loc_142F7A
142F4A:  ADDS            R1, R6, R0
142F4C:  LDRB.W          R1, [R1,#0xFB4]
142F50:  CBZ             R1, loc_142F7A
142F52:  ADD.W           R0, R6, R0,LSL#2
142F56:  LDR             R0, [R0,#4]
142F58:  CBZ             R0, loc_142F7A
142F5A:  LDR             R0, [R0]
142F5C:  CBZ             R0, loc_142F7A
142F5E:  CMP.W           R9, #0
142F62:  BEQ             loc_142F76
142F64:  LDRSH.W         R1, [SP,#0x140+var_28]
142F68:  LDRSH.W         R3, [SP,#0x140+var_2C]
142F6C:  LDRSH.W         R2, [R7,#var_2A]
142F70:  BL              sub_14B5E4
142F74:  B               loc_142F7A
142F76:  BL              sub_14B674
142F7A:  LDR             R0, [SP,#0x140+var_24]
142F7C:  ADDS            R5, #1
142F7E:  CMP             R5, R0
142F80:  BLT             loc_142EE8
142F82:  MOV             R0, SP
142F84:  BL              sub_17D542
142F88:  ADD             SP, SP, #0x124
142F8A:  POP.W           {R8-R11}
142F8E:  POP             {R4-R7,PC}
