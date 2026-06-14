; =========================================================
; Game Engine Function: sub_A3EFC
; Address            : 0xA3EFC - 0xA400A
; =========================================================

A3EFC:  PUSH            {R4-R7,LR}
A3EFE:  ADD             R7, SP, #0xC
A3F00:  PUSH.W          {R8-R11}
A3F04:  SUB             SP, SP, #0x14
A3F06:  MOV             R6, R0
A3F08:  LDR             R0, =(__stack_chk_guard_ptr - 0xA3F12)
A3F0A:  MOV             R8, R3
A3F0C:  MOV             R9, R2
A3F0E:  ADD             R0, PC; __stack_chk_guard_ptr
A3F10:  MOV             R10, R1
A3F12:  LDR             R0, [R0]; __stack_chk_guard
A3F14:  LDR             R0, [R0]
A3F16:  STR             R0, [SP,#0x30+var_20]
A3F18:  LDR             R0, [R6,#8]
A3F1A:  AND.W           R3, R0, R0,ASR#31
A3F1E:  MOV             R1, R0
A3F20:  STR             R3, [R6,#4]
A3F22:  B               loc_A3F2E
A3F24:  MOVS            R5, #0
A3F26:  MOV             R1, R0
A3F28:  MOV             R3, R2
A3F2A:  CMP             R5, R10
A3F2C:  BEQ             loc_A3FAC
A3F2E:  CMP             R3, R1
A3F30:  BGE             loc_A3FF0
A3F32:  MOV             R11, R3
A3F34:  MOV             R2, R3
A3F36:  B               loc_A3F48
A3F38:  MOV             R0, R6
A3F3A:  BL              sub_A40F8
A3F3E:  LDRD.W          R2, R0, [R6,#4]
A3F42:  CMP             R2, R0
A3F44:  MOV             R1, R0
A3F46:  BGE             loc_A3F24
A3F48:  LDR             R4, [R6]
A3F4A:  LDRB            R3, [R4,R2]
A3F4C:  CMP             R3, #0x1C
A3F4E:  BCC             loc_A3F88
A3F50:  CMP             R3, #0x1E
A3F52:  BNE             loc_A3F38
A3F54:  CMP.W           R2, #0xFFFFFFFF
A3F58:  MOV             R3, R1
A3F5A:  IT GE
A3F5C:  ADDGE           R3, R2, #1
A3F5E:  STR             R3, [R6,#4]
A3F60:  CMP             R3, R1
A3F62:  IT GT
A3F64:  MOVGT           R1, R3
A3F66:  CMP             R1, R3
A3F68:  BEQ             loc_A3F84
A3F6A:  ADDS            R2, R3, #1
A3F6C:  STR             R2, [R6,#4]
A3F6E:  LDRB            R3, [R4,R3]
A3F70:  AND.W           R5, R3, #0xF
A3F74:  CMP             R5, #0xF
A3F76:  BEQ             loc_A3F42
A3F78:  AND.W           R3, R3, #0xF0
A3F7C:  CMP             R3, #0xF0
A3F7E:  MOV             R3, R2
A3F80:  BNE             loc_A3F66
A3F82:  B               loc_A3F42
A3F84:  MOV             R2, R1
A3F86:  B               loc_A3F42
A3F88:  ADDS            R3, R2, #1
A3F8A:  STR             R3, [R6,#4]
A3F8C:  LDRB            R5, [R4,R2]
A3F8E:  CMP             R5, #0xC
A3F90:  BNE             loc_A3F2A
A3F92:  CMP             R3, R1
A3F94:  BGE             loc_A3FA4
A3F96:  ADD.W           R12, R2, #2
A3F9A:  STR.W           R12, [R6,#4]
A3F9E:  LDRB            R5, [R4,R3]
A3FA0:  MOV             R3, R12
A3FA2:  B               loc_A3FA6
A3FA4:  MOVS            R5, #0
A3FA6:  ADD.W           R5, R5, #0x100
A3FAA:  B               loc_A3F2A
A3FAC:  MOVS            R0, #0
A3FAE:  STR             R0, [SP,#0x30+var_28]
A3FB0:  SUB.W           R0, R2, R11
A3FB4:  ORRS.W          R3, R0, R11
A3FB8:  BMI             loc_A3FF0
A3FBA:  CMP             R1, R11
A3FBC:  IT GE
A3FBE:  CMPGE           R1, R2
A3FC0:  BLT             loc_A3FF0
A3FC2:  LDR             R1, [R6]
A3FC4:  CMP.W           R9, #1
A3FC8:  STR             R0, [SP,#0x30+var_24]
A3FCA:  ADD             R1, R11
A3FCC:  STR             R1, [SP,#0x30+var_2C]
A3FCE:  IT GE
A3FD0:  CMPGE           R0, #1
A3FD2:  BLT             loc_A3FF0
A3FD4:  ADD             R4, SP, #0x30+var_2C
A3FD6:  MOVS            R5, #0
A3FD8:  MOV             R0, R4
A3FDA:  BL              sub_A40F8
A3FDE:  STR.W           R0, [R8,R5,LSL#2]
A3FE2:  ADDS            R5, #1
A3FE4:  CMP             R5, R9
A3FE6:  ITT LT
A3FE8:  LDRDLT.W        R0, R1, [SP,#0x30+var_28]
A3FEC:  CMPLT           R0, R1
A3FEE:  BLT             loc_A3FD8
A3FF0:  LDR             R0, [SP,#0x30+var_20]
A3FF2:  LDR             R1, =(__stack_chk_guard_ptr - 0xA3FF8)
A3FF4:  ADD             R1, PC; __stack_chk_guard_ptr
A3FF6:  LDR             R1, [R1]; __stack_chk_guard
A3FF8:  LDR             R1, [R1]
A3FFA:  CMP             R1, R0
A3FFC:  ITTT EQ
A3FFE:  ADDEQ           SP, SP, #0x14
A4000:  POPEQ.W         {R8-R11}
A4004:  POPEQ           {R4-R7,PC}
A4006:  BLX             __stack_chk_fail
