; =========================================================
; Game Engine Function: _celt_lpc
; Address            : 0xC2DEC - 0xC2F7C
; =========================================================

C2DEC:  PUSH            {R4-R7,LR}
C2DEE:  ADD             R7, SP, #0xC
C2DF0:  PUSH.W          {R8-R11}
C2DF4:  SUB             SP, SP, #0x7C
C2DF6:  STR             R0, [SP,#0x98+var_94]
C2DF8:  MOV             R9, R2
C2DFA:  LDR             R0, =(__stack_chk_guard_ptr - 0xC2E06)
C2DFC:  MOV             R8, R1
C2DFE:  MOV.W           R1, R9,LSL#2; n
C2E02:  ADD             R0, PC; __stack_chk_guard_ptr
C2E04:  LDR             R0, [R0]; __stack_chk_guard
C2E06:  LDR             R0, [R0]
C2E08:  STR             R0, [SP,#0x98+var_20]
C2E0A:  ADD             R0, SP, #0x98+var_80; int
C2E0C:  LDR.W           R10, [R8]
C2E10:  BLX             sub_10967C
C2E14:  CMP.W           R10, #0
C2E18:  BEQ.W           loc_C2F42
C2E1C:  ADD             R0, SP, #0x98+var_80
C2E1E:  MOV.W           R11, #0
C2E22:  SUBS            R0, #4
C2E24:  STR             R0, [SP,#0x98+var_84]
C2E26:  STR.W           R9, [SP,#0x98+var_90]
C2E2A:  CMP             R11, R9
C2E2C:  BGE.W           loc_C2F42
C2E30:  MOVS            R0, #0
C2E32:  CMP.W           R11, #1
C2E36:  BLT             loc_C2E6C
C2E38:  ADD             R1, SP, #0x98+var_80
C2E3A:  MOV             R2, R11
C2E3C:  LDR.W           R3, [R8,R2,LSL#2]
C2E40:  SUBS            R2, #1
C2E42:  LDR.W           R5, [R1],#4
C2E46:  UXTH            R4, R3
C2E48:  MOV.W           R6, R5,ASR#16
C2E4C:  MUL.W           R6, R4, R6
C2E50:  SMULTT.W        R4, R5, R3
C2E54:  MOV.W           R3, R3,ASR#16
C2E58:  UXTH            R5, R5
C2E5A:  MUL.W           R3, R5, R3
C2E5E:  ADD.W           R0, R0, R6,ASR#15
C2E62:  ADD.W           R0, R0, R4,LSL#1
C2E66:  ADD.W           R0, R0, R3,ASR#15
C2E6A:  BNE             loc_C2E3C
C2E6C:  ADD.W           R4, R11, #1
C2E70:  LDR.W           R1, [R8,R4,LSL#2]
C2E74:  ADD.W           R0, R1, R0,LSL#3
C2E78:  MOV             R1, R10
C2E7A:  BIC.W           R0, R0, #7
C2E7E:  BLX             j_frac_div32
C2E82:  NEGS            R1, R0
C2E84:  ADD             R2, SP, #0x98+var_80
C2E86:  ASRS            R0, R1, #3
C2E88:  STR.W           R0, [R2,R11,LSL#2]
C2E8C:  ASRS            R2, R4, #1
C2E8E:  CMP             R2, #0
C2E90:  BLE             loc_C2EF4
C2E92:  STRD.W          R4, R10, [SP,#0x98+var_8C]
C2E96:  MOV.W           LR, R1,ASR#16
C2E9A:  LDR             R4, [SP,#0x98+var_84]
C2E9C:  ADD             R5, SP, #0x98+var_80
C2E9E:  UXTH.W          R12, R1
C2EA2:  MOV.W           R11, LR,LSL#1
C2EA6:  LDR             R6, [R4]
C2EA8:  SUBS            R2, #1
C2EAA:  LDR             R1, [R5]
C2EAC:  UXTH            R0, R6
C2EAE:  MOV.W           R3, R6,ASR#16
C2EB2:  MUL.W           R0, R0, LR
C2EB6:  MOV.W           R9, R1,ASR#16
C2EBA:  MUL.W           R10, R9, R12
C2EBE:  ADD.W           R0, R1, R0,ASR#15
C2EC2:  UXTH            R1, R1
C2EC4:  MUL.W           R1, R1, LR
C2EC8:  MLA.W           R0, R11, R3, R0
C2ECC:  MUL.W           R3, R3, R12
C2ED0:  ADD.W           R1, R6, R1,ASR#15
C2ED4:  MLA.W           R1, R11, R9, R1
C2ED8:  ADD.W           R0, R0, R3,ASR#15
C2EDC:  STR.W           R0, [R5],#4
C2EE0:  ADD.W           R0, R1, R10,ASR#15
C2EE4:  STR.W           R0, [R4],#-4
C2EE8:  BNE             loc_C2EA6
C2EEA:  LDR.W           R10, [SP,#0x98+var_88]
C2EEE:  LDRD.W          R9, R4, [SP,#0x98+var_90]
C2EF2:  B               loc_C2EFC
C2EF4:  UXTH.W          R12, R1
C2EF8:  MOV.W           LR, R1,ASR#16
C2EFC:  MUL.W           R0, LR, R12
C2F00:  UXTH.W          R2, R10
C2F04:  MOV.W           R3, R10,ASR#16
C2F08:  SMULBB.W        R1, LR, LR
C2F0C:  MOV             R11, R4
C2F0E:  ADD.W           R0, R1, R0,ASR#15
C2F12:  SBFX.W          R1, R0, #0xF, #0x10
C2F16:  LSLS            R0, R0, #1
C2F18:  MULS            R1, R2
C2F1A:  UXTH            R2, R0
C2F1C:  MULS            R2, R3
C2F1E:  LDR.W           R3, [R8]
C2F22:  SMULTT.W        R0, R10, R0
C2F26:  SUB.W           R1, R10, R1,ASR#15
C2F2A:  SUB.W           R1, R1, R2,ASR#15
C2F2E:  SUB.W           R10, R1, R0,LSL#1
C2F32:  LDR             R0, [SP,#0x98+var_84]
C2F34:  CMP.W           R10, R3,ASR#10
C2F38:  ADD.W           R0, R0, #4
C2F3C:  STR             R0, [SP,#0x98+var_84]
C2F3E:  BGE.W           loc_C2E2A
C2F42:  LDR             R2, [SP,#0x98+var_94]
C2F44:  CMP.W           R9, #1
C2F48:  BLT             loc_C2F62
C2F4A:  ADD             R0, SP, #0x98+var_80
C2F4C:  LDR.W           R1, [R0],#4
C2F50:  SUBS.W          R9, R9, #1
C2F54:  ADD.W           R1, R1, #0x8000
C2F58:  MOV.W           R1, R1,LSR#16
C2F5C:  STRH.W          R1, [R2],#2
C2F60:  BNE             loc_C2F4C
C2F62:  LDR             R0, =(__stack_chk_guard_ptr - 0xC2F6A)
C2F64:  LDR             R1, [SP,#0x98+var_20]
C2F66:  ADD             R0, PC; __stack_chk_guard_ptr
C2F68:  LDR             R0, [R0]; __stack_chk_guard
C2F6A:  LDR             R0, [R0]
C2F6C:  SUBS            R0, R0, R1
C2F6E:  ITTT EQ
C2F70:  ADDEQ           SP, SP, #0x7C ; '|'
C2F72:  POPEQ.W         {R8-R11}
C2F76:  POPEQ           {R4-R7,PC}
C2F78:  BLX             __stack_chk_fail
