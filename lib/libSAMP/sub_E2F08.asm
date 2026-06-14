; =========================================================
; Game Engine Function: sub_E2F08
; Address            : 0xE2F08 - 0xE2FA4
; =========================================================

E2F08:  PUSH            {R4-R7,LR}
E2F0A:  ADD             R7, SP, #0xC
E2F0C:  PUSH.W          {R8-R10}
E2F10:  SUB             SP, SP, #0x20
E2F12:  MOV             R4, R0
E2F14:  LDR             R0, [R0,#8]
E2F16:  MOV             R6, R2
E2F18:  LDR             R2, [R4,#0xC]
E2F1A:  MOV             R5, R1
E2F1C:  ADDS            R1, R0, #1
E2F1E:  CMP             R2, R1
E2F20:  BCS             loc_E2F2E
E2F22:  LDR             R0, [R4]
E2F24:  LDR             R2, [R0]
E2F26:  MOV             R0, R4
E2F28:  BLX             R2
E2F2A:  LDR             R0, [R4,#8]
E2F2C:  ADDS            R1, R0, #1
E2F2E:  LDR             R2, [R4,#4]
E2F30:  ADD             R6, R5
E2F32:  ADD.W           R8, SP, #0x38+var_28
E2F36:  STR             R1, [R4,#8]
E2F38:  MOVS            R1, #0x22 ; '"'
E2F3A:  MOV.W           R10, #0
E2F3E:  MOV             R9, SP
E2F40:  STRB            R1, [R2,R0]
E2F42:  SUBS            R1, R6, R5
E2F44:  MOV             R0, R5
E2F46:  MOV             R2, R8
E2F48:  STR.W           R10, [SP,#0x38+var_20]
E2F4C:  STRD.W          R6, R10, [SP,#0x38+var_28]
E2F50:  BL              sub_E29FC
E2F54:  VLDR            D16, [SP,#0x38+var_28]
E2F58:  MOV             R1, R5
E2F5A:  LDR             R0, [SP,#0x38+var_20]
E2F5C:  STR             R0, [SP,#0x38+var_30]
E2F5E:  MOV             R0, R4
E2F60:  VSTR            D16, [SP,#0x38+var_38]
E2F64:  LDR             R2, [SP,#0x38+var_38]
E2F66:  BL              sub_DCF30
E2F6A:  LDR             R5, [SP,#0x38+var_38+4]
E2F6C:  CBZ             R5, loc_E2F7C
E2F6E:  MOV             R0, R4; int
E2F70:  MOV             R1, R9
E2F72:  BL              sub_DE078
E2F76:  MOV             R4, R0
E2F78:  CMP             R5, R6
E2F7A:  BNE             loc_E2F42
E2F7C:  LDRD.W          R0, R2, [R4,#8]
E2F80:  ADDS            R1, R0, #1
E2F82:  CMP             R2, R1
E2F84:  BCS             loc_E2F92
E2F86:  LDR             R0, [R4]
E2F88:  LDR             R2, [R0]
E2F8A:  MOV             R0, R4
E2F8C:  BLX             R2
E2F8E:  LDR             R0, [R4,#8]
E2F90:  ADDS            R1, R0, #1
E2F92:  LDR             R2, [R4,#4]
E2F94:  STR             R1, [R4,#8]
E2F96:  MOVS            R1, #0x22 ; '"'
E2F98:  STRB            R1, [R2,R0]
E2F9A:  MOV             R0, R4
E2F9C:  ADD             SP, SP, #0x20 ; ' '
E2F9E:  POP.W           {R8-R10}
E2FA2:  POP             {R4-R7,PC}
