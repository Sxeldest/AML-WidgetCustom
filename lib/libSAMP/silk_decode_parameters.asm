; =========================================================
; Game Engine Function: silk_decode_parameters
; Address            : 0x195D20 - 0x195EFC
; =========================================================

195D20:  PUSH            {R4-R7,LR}
195D22:  ADD             R7, SP, #0xC
195D24:  PUSH.W          {R8-R11}
195D28:  SUB             SP, SP, #0x4C
195D2A:  MOV             R8, R0
195D2C:  LDR             R0, =(__stack_chk_guard_ptr - 0x195D36)
195D2E:  MOV             R9, R1
195D30:  CMP             R2, #2
195D32:  ADD             R0, PC; __stack_chk_guard_ptr
195D34:  MOV.W           R3, #0
195D38:  ADD.W           R1, R8, #0xAB0
195D3C:  ADDW            R2, R8, #0x908
195D40:  LDR             R0, [R0]; __stack_chk_guard
195D42:  LDR             R0, [R0]
195D44:  STR             R0, [SP,#0x68+var_20]
195D46:  LDR.W           R0, [R8,#0x914]
195D4A:  STR             R0, [SP,#0x68+var_68]
195D4C:  ADD.W           R0, R9, #0x10
195D50:  IT EQ
195D52:  MOVEQ           R3, #1
195D54:  BLX             j_silk_gains_dequant
195D58:  ADD.W           R10, SP, #0x68+src
195D5C:  LDR.W           R2, [R8,#0xAAC]
195D60:  ADDW            R1, R8, #0xAB8
195D64:  MOV             R0, R10
195D66:  BLX             j_silk_NLSF_decode
195D6A:  MOVW            R4, #0x1048
195D6E:  ADD.W           R11, R9, #0x40 ; '@'
195D72:  LDR.W           R3, [R8,R4]
195D76:  MOV             R1, R10
195D78:  LDR.W           R2, [R8,#0x924]
195D7C:  MOV             R0, R11
195D7E:  BLX             j_silk_NLSF2A
195D82:  LDR.W           R0, [R8,#0x948]
195D86:  ADD.W           R5, R9, #0x20 ; ' '
195D8A:  CMP             R0, #1
195D8C:  BNE             loc_195D96
195D8E:  MOVS            R0, #4
195D90:  STRB.W          R0, [R8,#0xACF]
195D94:  B               loc_195DDC
195D96:  LDRSB.W         R0, [R8,#0xACF]
195D9A:  CMP             R0, #3
195D9C:  BGT             loc_195DDC
195D9E:  LDR.W           R2, [R8,#0x924]
195DA2:  ADD.W           R12, R8, R4
195DA6:  CMP             R2, #1
195DA8:  BLT             loc_195DCE
195DAA:  ADDW            R3, R8, #0x928
195DAE:  ADD.W           LR, SP, #0x68+var_60
195DB2:  MOVS            R1, #0
195DB4:  LDRSH.W         R4, [R3,R1,LSL#1]
195DB8:  LDRSH.W         R6, [R10,R1,LSL#1]
195DBC:  SUBS            R6, R6, R4
195DBE:  MULS            R6, R0
195DC0:  ADD.W           R4, R4, R6,LSR#2
195DC4:  STRH.W          R4, [LR,R1,LSL#1]
195DC8:  ADDS            R1, #1
195DCA:  CMP             R1, R2
195DCC:  BLT             loc_195DB4
195DCE:  LDR.W           R3, [R12]
195DD2:  ADD             R1, SP, #0x68+var_60
195DD4:  MOV             R0, R5
195DD6:  BLX             j_silk_NLSF2A
195DDA:  B               loc_195DEA
195DDC:  LDR.W           R0, [R8,#0x924]
195DE0:  MOV             R1, R11; src
195DE2:  LSLS            R2, R0, #1; n
195DE4:  MOV             R0, R5; dest
195DE6:  BLX             j_memcpy
195DEA:  LDR.W           R4, [R8,#0x924]
195DEE:  ADDW            R0, R8, #0x928; dest
195DF2:  ADD             R1, SP, #0x68+src; src
195DF4:  LSLS            R2, R4, #1; n
195DF6:  BLX             j_memcpy
195DFA:  MOV.W           R0, #0x1040
195DFE:  LDR.W           R0, [R8,R0]
195E02:  CBZ             R0, loc_195E1E
195E04:  MOV             R0, R5
195E06:  MOV             R1, R4
195E08:  MOVW            R2, #0xF852
195E0C:  BLX             j_silk_bwexpander
195E10:  LDR.W           R1, [R8,#0x924]
195E14:  MOV             R0, R11
195E16:  MOVW            R2, #0xF852
195E1A:  BLX             j_silk_bwexpander
195E1E:  LDRB.W          R0, [R8,#0xACD]
195E22:  CMP             R0, #2
195E24:  BNE             loc_195EBA
195E26:  LDR.W           R3, [R8,#0x90C]
195E2A:  LDRSB.W         R1, [R8,#0xACC]
195E2E:  LDRSH.W         R0, [R8,#0xACA]
195E32:  LDR.W           R2, [R8,#0x914]
195E36:  STR             R2, [SP,#0x68+var_68]
195E38:  MOV             R2, R9
195E3A:  BLX             j_silk_decode_pitch
195E3E:  LDR.W           R0, [R8,#0x914]
195E42:  CMP             R0, #1
195E44:  BLT             loc_195EAA
195E46:  LDR             R1, =(silk_LTP_vq_ptrs_Q7_ptr - 0x195E56)
195E48:  ADD.W           R3, R9, #0x68 ; 'h'
195E4C:  LDRSB.W         R2, [R8,#0xAD0]
195E50:  MOVS            R6, #0
195E52:  ADD             R1, PC; silk_LTP_vq_ptrs_Q7_ptr
195E54:  LDR             R1, [R1]; silk_LTP_vq_ptrs_Q7
195E56:  LDR.W           R1, [R1,R2,LSL#2]
195E5A:  ADDW            R2, R8, #0xAB4
195E5E:  LDRSB           R4, [R2,R6]
195E60:  ADDS            R6, #1
195E62:  CMP             R6, R0
195E64:  ADD.W           R4, R4, R4,LSL#2
195E68:  LDRSB           R5, [R1,R4]
195E6A:  MOV.W           R5, R5,LSL#7
195E6E:  STRH.W          R5, [R3,#-8]
195E72:  ADD.W           R5, R1, R4
195E76:  LDRSB.W         R4, [R5,#1]
195E7A:  MOV.W           R4, R4,LSL#7
195E7E:  STRH.W          R4, [R3,#-6]
195E82:  LDRSB.W         R4, [R5,#2]
195E86:  MOV.W           R4, R4,LSL#7
195E8A:  STRH.W          R4, [R3,#-4]
195E8E:  LDRSB.W         R4, [R5,#3]
195E92:  MOV.W           R4, R4,LSL#7
195E96:  STRH.W          R4, [R3,#-2]
195E9A:  LDRSB.W         R5, [R5,#4]
195E9E:  MOV.W           R5, R5,LSL#7
195EA2:  STRH            R5, [R3]
195EA4:  ADD.W           R3, R3, #0xA
195EA8:  BLT             loc_195E5E
195EAA:  LDR             R0, =(silk_LTPScales_table_Q14_ptr - 0x195EB4)
195EAC:  LDRSB.W         R1, [R8,#0xAD1]
195EB0:  ADD             R0, PC; silk_LTPScales_table_Q14_ptr
195EB2:  LDR             R0, [R0]; silk_LTPScales_table_Q14
195EB4:  LDRSH.W         R0, [R0,R1,LSL#1]
195EB8:  B               loc_195EDE
195EBA:  LDR.W           R0, [R8,#0x914]
195EBE:  LSLS            R1, R0, #2; n
195EC0:  MOV             R0, R9; int
195EC2:  BLX             sub_22178C
195EC6:  LDR.W           R1, [R8,#0x914]
195ECA:  ADD.W           R0, R9, #0x60 ; '`'; int
195ECE:  ADD.W           R1, R1, R1,LSL#2
195ED2:  LSLS            R1, R1, #1; n
195ED4:  BLX             sub_22178C
195ED8:  MOVS            R0, #0
195EDA:  STRB.W          R0, [R8,#0xAD0]
195EDE:  STR.W           R0, [R9,#0x88]
195EE2:  LDR             R0, =(__stack_chk_guard_ptr - 0x195EEA)
195EE4:  LDR             R1, [SP,#0x68+var_20]
195EE6:  ADD             R0, PC; __stack_chk_guard_ptr
195EE8:  LDR             R0, [R0]; __stack_chk_guard
195EEA:  LDR             R0, [R0]
195EEC:  SUBS            R0, R0, R1
195EEE:  ITTT EQ
195EF0:  ADDEQ           SP, SP, #0x4C ; 'L'
195EF2:  POPEQ.W         {R8-R11}
195EF6:  POPEQ           {R4-R7,PC}
195EF8:  BLX             __stack_chk_fail
