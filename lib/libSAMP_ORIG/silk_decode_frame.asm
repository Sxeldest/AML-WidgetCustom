; =========================================================
; Game Engine Function: silk_decode_frame
; Address            : 0xB797C - 0xB7AF4
; =========================================================

B797C:  PUSH            {R4-R7,LR}
B797E:  ADD             R7, SP, #0xC
B7980:  PUSH.W          {R8-R11}
B7984:  SUB             SP, SP, #0x94
B7986:  MOV             R5, R0
B7988:  LDR             R0, =(__stack_chk_guard_ptr - 0xB7992)
B798A:  MOV             R11, R3
B798C:  MOV             R10, R1
B798E:  ADD             R0, PC; __stack_chk_guard_ptr
B7990:  LDR             R3, [R7,#arg_0]
B7992:  LDR             R1, [R7,#arg_8]
B7994:  MOV             R8, R2
B7996:  LDR             R0, [R0]; __stack_chk_guard
B7998:  CMP             R3, #2
B799A:  MOV             R6, SP
B799C:  LDR             R0, [R0]
B799E:  STR.W           R0, [R7,#var_24]
B79A2:  MOV.W           R0, #0
B79A6:  LDR.W           R9, [R5,#0x918]
B79AA:  STR.W           R0, [R7,#var_28]
B79AE:  BEQ             loc_B79BA
B79B0:  CMP             R3, #0
B79B2:  BNE             loc_B7A56
B79B4:  LDR.W           R2, [R5,#0x954]
B79B8:  B               loc_B79CA
B79BA:  LDR.W           R2, [R5,#0x954]
B79BE:  ADD.W           R0, R5, R2,LSL#2
B79C2:  LDR.W           R0, [R0,#0x974]
B79C6:  CMP             R0, #1
B79C8:  BNE             loc_B7A56
B79CA:  MOVS            R0, #0x1E
B79CC:  MOV             R4, R11
B79CE:  ADD.W           R0, R0, R9,LSL#1
B79D2:  LDR             R1, [R7,#arg_4]
B79D4:  BIC.W           R0, R0, #0x1F
B79D8:  SUB.W           R11, SP, R0
B79DC:  MOV             SP, R11
B79DE:  SUB             SP, SP, #8
B79E0:  STR             R1, [SP,#0xB8+var_B8]
B79E2:  MOV             R0, R5
B79E4:  MOV             R1, R10
B79E6:  BLX             j_silk_decode_indices
B79EA:  ADD             SP, SP, #8
B79EC:  LDRSB.W         R3, [R5,#0xACE]
B79F0:  LDRSB.W         R2, [R5,#0xACD]
B79F4:  LDR.W           R0, [R5,#0x918]
B79F8:  SUB             SP, SP, #8
B79FA:  STR             R0, [SP,#0xB8+var_B8]
B79FC:  MOV             R0, R10
B79FE:  MOV             R1, R11
B7A00:  BLX             j_silk_decode_pulses
B7A04:  ADD             SP, SP, #8
B7A06:  SUB.W           R10, R7, #-var_B0
B7A0A:  LDR             R2, [R7,#arg_4]
B7A0C:  MOV             R0, R5
B7A0E:  MOV             R1, R10
B7A10:  BLX             j_silk_decode_parameters
B7A14:  SUB             SP, SP, #8
B7A16:  LDR             R0, [R7,#arg_8]
B7A18:  MOV             R3, R11
B7A1A:  STR             R0, [SP,#0xB8+var_B8]
B7A1C:  MOV             R0, R5
B7A1E:  MOV             R1, R10
B7A20:  MOV             R2, R8
B7A22:  MOV             R11, R4
B7A24:  BLX             j_silk_decode_core
B7A28:  ADD             SP, SP, #8
B7A2A:  SUB             SP, SP, #8
B7A2C:  LDR             R0, [R7,#arg_8]
B7A2E:  MOV             R1, R10
B7A30:  STR             R0, [SP,#0xB8+var_B8]
B7A32:  MOV             R0, R5
B7A34:  MOV             R2, R8
B7A36:  MOVS            R3, #0
B7A38:  MOVS            R4, #0
B7A3A:  BLX             j_silk_PLC
B7A3E:  ADD             SP, SP, #8
B7A40:  MOV.W           R0, #0x1040
B7A44:  MOVW            R1, #0x1044
B7A48:  STR             R4, [R5,R0]
B7A4A:  LDRSB.W         R0, [R5,#0xACD]
B7A4E:  STR             R0, [R5,R1]
B7A50:  STR.W           R4, [R5,#0x948]
B7A54:  B               loc_B7A74
B7A56:  MOVW            R0, #0x1044
B7A5A:  LDR             R0, [R5,R0]
B7A5C:  STRB.W          R0, [R5,#0xACD]
B7A60:  SUB             SP, SP, #8
B7A62:  STR             R1, [SP,#0xB8+var_B8]
B7A64:  SUB.W           R1, R7, #-var_B0
B7A68:  MOV             R0, R5
B7A6A:  MOV             R2, R8
B7A6C:  MOVS            R3, #1
B7A6E:  BLX             j_silk_PLC
B7A72:  ADD             SP, SP, #8
B7A74:  LDR.W           R0, [R5,#0x918]
B7A78:  ADDW            R4, R5, #0x544
B7A7C:  LDR.W           R2, [R5,#0x920]
B7A80:  SUB.W           R10, R2, R0
B7A84:  ADD.W           R1, R4, R0,LSL#1; src
B7A88:  MOV             R0, R4; dest
B7A8A:  MOV.W           R2, R10,LSL#1; n
B7A8E:  BLX             j_memmove
B7A92:  LDR.W           R1, [R5,#0x918]
B7A96:  ADD.W           R0, R4, R10,LSL#1; dest
B7A9A:  LSLS            R2, R1, #1; n
B7A9C:  MOV             R1, R8; src
B7A9E:  BLX             j_memcpy
B7AA2:  SUB.W           R4, R7, #-var_B0
B7AA6:  MOV             R0, R5
B7AA8:  MOV             R2, R8
B7AAA:  MOV             R3, R9
B7AAC:  MOV             R1, R4
B7AAE:  BLX             j_silk_CNG
B7AB2:  MOV             R0, R5
B7AB4:  MOV             R1, R8
B7AB6:  MOV             R2, R9
B7AB8:  BLX             j_silk_PLC_glue_frames
B7ABC:  LDR.W           R0, [R5,#0x914]
B7AC0:  ADD.W           R0, R4, R0,LSL#2
B7AC4:  LDR.W           R0, [R0,#-4]
B7AC8:  STR.W           R0, [R5,#0x904]
B7ACC:  LDR             R0, =(__stack_chk_guard_ptr - 0xB7AD6)
B7ACE:  STR.W           R9, [R11]
B7AD2:  ADD             R0, PC; __stack_chk_guard_ptr
B7AD4:  LDR.W           R1, [R7,#var_24]
B7AD8:  LDR             R0, [R0]; __stack_chk_guard
B7ADA:  LDR             R0, [R0]
B7ADC:  SUBS            R0, R0, R1
B7ADE:  ITTTT EQ
B7AE0:  MOVEQ           R0, #0
B7AE2:  SUBEQ.W         R4, R7, #-var_1C
B7AE6:  MOVEQ           SP, R4
B7AE8:  POPEQ.W         {R8-R11}
B7AEC:  IT EQ
B7AEE:  POPEQ           {R4-R7,PC}
B7AF0:  BLX             __stack_chk_fail
