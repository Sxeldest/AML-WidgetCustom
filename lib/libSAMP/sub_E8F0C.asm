; =========================================================
; Game Engine Function: sub_E8F0C
; Address            : 0xE8F0C - 0xE9018
; =========================================================

E8F0C:  PUSH            {R4-R7,LR}
E8F0E:  ADD             R7, SP, #0xC
E8F10:  PUSH.W          {R8-R10}
E8F14:  SUB             SP, SP, #0x40
E8F16:  MOV             R4, R0
E8F18:  LDR             R0, [R0,#8]
E8F1A:  LDR.W           R3, [R0,#-4]
E8F1E:  CBZ             R3, loc_E8F68
E8F20:  LDR             R1, [R4,#4]
E8F22:  MOVS            R2, #1
E8F24:  SUBS            R0, R0, R1
E8F26:  MOV.W           R1, #0xFFFFFFFF
E8F2A:  ADD.W           R1, R1, R0,ASR#2
E8F2E:  ADD.W           R0, R4, #0x30 ; '0'
E8F32:  BL              sub_E9460
E8F36:  CBNZ            R0, loc_E8F68
E8F38:  ADD.W           R1, R4, #0x50 ; 'P'
E8F3C:  ADD             R0, SP, #0x58+var_28
E8F3E:  BL              sub_E4834
E8F42:  LDR             R1, [R4,#8]
E8F44:  LDRB.W          R2, [SP,#0x58+var_28]
E8F48:  LDR.W           R1, [R1,#-4]
E8F4C:  LDRD.W          R6, R12, [R1,#8]
E8F50:  LDRB            R3, [R1]
E8F52:  STRB            R2, [R1]
E8F54:  LDRD.W          R2, R5, [SP,#0x58+var_20]
E8F58:  STRD.W          R2, R5, [R1,#8]
E8F5C:  STRB.W          R3, [SP,#0x58+var_28]
E8F60:  STRD.W          R6, R12, [SP,#0x58+var_20]
E8F64:  BL              sub_E3F7A
E8F68:  LDR             R2, [R4,#0x14]
E8F6A:  LDRD.W          R1, R0, [R4,#4]
E8F6E:  SUBS            R3, R0, #4
E8F70:  SUBS            R2, #1
E8F72:  STR             R3, [R4,#8]
E8F74:  STR             R2, [R4,#0x14]
E8F76:  CMP             R1, R3
E8F78:  ITT NE
E8F7A:  LDRNE.W         R1, [R0,#-8]
E8F7E:  CMPNE           R1, #0
E8F80:  BNE             loc_E8F8C
E8F82:  MOVS            R0, #1
E8F84:  ADD             SP, SP, #0x40 ; '@'
E8F86:  POP.W           {R8-R10}
E8F8A:  POP             {R4-R7,PC}
E8F8C:  LDRB            R0, [R1]
E8F8E:  SUBS            R0, #1
E8F90:  CMP             R0, #1
E8F92:  BHI             loc_E8F82
E8F94:  ADD             R5, SP, #0x58+var_38
E8F96:  MOV             R0, R5
E8F98:  BL              sub_E9766
E8F9C:  ADD.W           R9, SP, #0x58+var_48
E8FA0:  MOV.W           R8, #0x80000000
E8FA4:  MOVS            R6, #0
E8FA6:  MOV.W           R10, #1
E8FAA:  LDR             R0, [R4,#8]
E8FAC:  LDR.W           R0, [R0,#-4]
E8FB0:  STR.W           R8, [SP,#0x58+var_3C]
E8FB4:  LDRB            R1, [R0]
E8FB6:  STR             R6, [SP,#0x58+var_40]
E8FB8:  CMP             R1, #2
E8FBA:  STRD.W          R0, R6, [SP,#0x58+var_48]
E8FBE:  BEQ             loc_E8FCC
E8FC0:  CMP             R1, #1
E8FC2:  BNE             loc_E8FD4
E8FC4:  LDR             R0, [R0,#8]
E8FC6:  ADDS            R0, #4
E8FC8:  STR             R0, [SP,#0x58+var_44]
E8FCA:  B               loc_E8FD8
E8FCC:  LDR             R0, [R0,#8]
E8FCE:  LDR             R0, [R0,#4]
E8FD0:  STR             R0, [SP,#0x58+var_40]
E8FD2:  B               loc_E8FD8
E8FD4:  STR.W           R10, [SP,#0x58+var_3C]
E8FD8:  MOV             R0, R5
E8FDA:  MOV             R1, R9
E8FDC:  BL              sub_E9AA0
E8FE0:  CMP             R0, #0
E8FE2:  BNE             loc_E8F82
E8FE4:  MOV             R0, R5
E8FE6:  BL              sub_E979C
E8FEA:  LDRB            R0, [R0]
E8FEC:  CMP             R0, #9
E8FEE:  BEQ             loc_E8FF8
E8FF0:  MOV             R0, R5
E8FF2:  BL              sub_E9A4C
E8FF6:  B               loc_E8FAA
E8FF8:  LDR             R0, [R4,#8]
E8FFA:  VLDR            D16, [SP,#0x58+var_34]
E8FFE:  LDR             R2, [SP,#0x58+var_38]
E9000:  LDR.W           R1, [R0,#-4]
E9004:  LDR             R0, [SP,#0x58+var_2C]
E9006:  STR             R0, [SP,#0x58+var_4C]
E9008:  ADD             R0, SP, #0x58+var_48
E900A:  STR             R2, [SP,#0x58+var_58]
E900C:  MOV             R2, SP
E900E:  VSTR            D16, [SP,#0x58+var_54]
E9012:  BL              sub_E9824
E9016:  B               loc_E8F82
