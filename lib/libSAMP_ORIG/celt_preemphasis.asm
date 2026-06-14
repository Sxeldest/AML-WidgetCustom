; =========================================================
; Game Engine Function: celt_preemphasis
; Address            : 0xD6F1C - 0xD6FDE
; =========================================================

D6F1C:  PUSH            {R4-R7,LR}
D6F1E:  ADD             R7, SP, #0xC
D6F20:  PUSH.W          {R8-R11}
D6F24:  SUB             SP, SP, #4
D6F26:  MOV             R6, R0
D6F28:  MOV             R5, R1
D6F2A:  LDRD.W          R10, R0, [R7,#arg_0]
D6F2E:  MOV             R9, R2
D6F30:  LDRD.W          R4, R1, [R7,#arg_8]
D6F34:  CMP             R1, #0
D6F36:  LDRSH.W         R8, [R0]
D6F3A:  LDR.W           R11, [R4]
D6F3E:  BNE             loc_D6F72
D6F40:  CMP.W           R10, #1
D6F44:  ITT EQ
D6F46:  LDRHEQ          R0, [R0,#2]
D6F48:  CMPEQ           R0, #0
D6F4A:  BNE             loc_D6F72
D6F4C:  CMP.W           R9, #1
D6F50:  BLT             loc_D6FD2
D6F52:  LSLS            R0, R3, #1
D6F54:  LDRSH.W         R1, [R6]
D6F58:  ADD             R6, R0
D6F5A:  SUBS.W          R9, R9, #1
D6F5E:  SMULBB.W        R2, R1, R8
D6F62:  RSB.W           R1, R11, R1,LSL#12
D6F66:  STR.W           R1, [R5],#4
D6F6A:  MOV.W           R11, R2,ASR#3
D6F6E:  BNE             loc_D6F54
D6F70:  B               loc_D6FD2
D6F72:  MOV             R0, R9
D6F74:  MOV             R1, R10
D6F76:  STR             R3, [SP,#0x20+var_20]
D6F78:  BLX             sub_108848
D6F7C:  MOV             R4, R0
D6F7E:  CMP.W           R10, #1
D6F82:  BEQ             loc_D6F8E
D6F84:  MOV.W           R1, R9,LSL#2; n
D6F88:  MOV             R0, R5; int
D6F8A:  BLX             sub_10967C
D6F8E:  CMP             R4, #1
D6F90:  BLT             loc_D6FAA
D6F92:  LDR             R1, [SP,#0x20+var_20]
D6F94:  MOV.W           R0, R10,LSL#2
D6F98:  MOV             R2, R5
D6F9A:  LSLS            R1, R1, #1
D6F9C:  LDRSH.W         R3, [R6]
D6FA0:  ADD             R6, R1
D6FA2:  STR             R3, [R2]
D6FA4:  ADD             R2, R0
D6FA6:  SUBS            R4, #1
D6FA8:  BNE             loc_D6F9C
D6FAA:  LDR             R3, [R7,#arg_8]
D6FAC:  CMP.W           R9, #1
D6FB0:  MOV             R4, R3
D6FB2:  BLT             loc_D6FD2
D6FB4:  LDR             R0, [R5]
D6FB6:  SUBS.W          R9, R9, #1
D6FBA:  SXTH            R1, R0
D6FBC:  MOV.W           R0, R0,LSL#16
D6FC0:  SMULBB.W        R1, R1, R8
D6FC4:  RSB.W           R0, R11, R0,ASR#4
D6FC8:  STR.W           R0, [R5],#4
D6FCC:  MOV.W           R11, R1,ASR#3
D6FD0:  BNE             loc_D6FB4
D6FD2:  STR.W           R11, [R4]
D6FD6:  ADD             SP, SP, #4
D6FD8:  POP.W           {R8-R11}
D6FDC:  POP             {R4-R7,PC}
