; =========================================================
; Game Engine Function: sub_95F20
; Address            : 0x95F20 - 0x9603C
; =========================================================

95F20:  PUSH            {R4-R7,LR}
95F22:  ADD             R7, SP, #0xC
95F24:  PUSH.W          {R8-R11}
95F28:  SUB             SP, SP, #4
95F2A:  VPUSH           {D8}
95F2E:  SUB             SP, SP, #0x10
95F30:  LDR             R2, =(__stack_chk_guard_ptr - 0x95F36)
95F32:  ADD             R2, PC; __stack_chk_guard_ptr
95F34:  LDR             R2, [R2]; __stack_chk_guard
95F36:  LDR             R2, [R2]
95F38:  STR             R2, [SP,#0x38+var_2C]
95F3A:  MOV             R2, #0x1F9BCD
95F42:  LSRS            R2, R0
95F44:  LSLS            R2, R2, #0x1F
95F46:  BEQ             loc_9601A
95F48:  LDR             R2, =(dword_1ACF68 - 0x95F58)
95F4A:  VMOV            S16, R1
95F4E:  LDR             R1, =(unk_536AC - 0x95F5C)
95F50:  ADD.W           R3, R0, R0,LSL#1
95F54:  ADD             R2, PC; dword_1ACF68
95F56:  STR             R0, [SP,#0x38+var_38]
95F58:  ADD             R1, PC; unk_536AC
95F5A:  MOVW            R6, #0x1518
95F5E:  ADD.W           R1, R1, R3,LSL#2
95F62:  MOV             R10, R2
95F64:  LDR             R2, [R2]
95F66:  MOVW            R3, #0x1A84
95F6A:  LDR             R1, [R1,#8]
95F6C:  ADDS            R5, R2, R3
95F6E:  ADD             R1, R2
95F70:  LDR             R0, [R2,R3]
95F72:  LDR             R3, [R5,#4]
95F74:  LDR             R4, [R1,R6]
95F76:  ADD.W           R9, R1, R6
95F7A:  CMP             R0, R3
95F7C:  STR             R4, [SP,#0x38+var_38+4]
95F7E:  BNE             loc_95FFA
95F80:  CMP             R0, #0
95F82:  ADD.W           R6, R0, #1
95F86:  ITTE NE
95F88:  ADDNE.W         R1, R0, R0,LSR#31
95F8C:  ADDNE.W         R1, R0, R1,ASR#1
95F90:  MOVEQ           R1, #8
95F92:  CMP             R1, R6
95F94:  IT GT
95F96:  MOVGT           R6, R1
95F98:  CMP             R0, R6
95F9A:  BGE             loc_95FFA
95F9C:  LDR             R0, =(off_117248 - 0x95FA4)
95F9E:  LDR             R1, =(dword_1ACF70 - 0x95FAA)
95FA0:  ADD             R0, PC; off_117248
95FA2:  LDR.W           R3, [R2,#0x370]
95FA6:  ADD             R1, PC; dword_1ACF70
95FA8:  LDR             R4, [R0]; sub_9A720
95FAA:  ADDS            R0, R3, #1
95FAC:  MOV             R11, R1
95FAE:  STR.W           R0, [R2,#0x370]
95FB2:  ADD.W           R0, R6, R6,LSL#1
95FB6:  LDR             R1, [R1]
95FB8:  LSLS            R0, R0, #2
95FBA:  BLX             R4; sub_9A720
95FBC:  LDR             R1, [R5,#8]; src
95FBE:  MOV             R8, R0
95FC0:  CBZ             R1, loc_95FF4
95FC2:  LDR             R0, [R5]
95FC4:  ADD.W           R0, R0, R0,LSL#1
95FC8:  LSLS            R2, R0, #2; n
95FCA:  MOV             R0, R8; dest
95FCC:  BLX             j_memcpy
95FD0:  LDR             R0, [R5,#8]
95FD2:  CMP             R0, #0
95FD4:  ITTTT NE
95FD6:  LDRNE.W         R1, [R10]
95FDA:  CMPNE           R1, #0
95FDC:  LDRNE.W         R2, [R1,#0x370]
95FE0:  SUBNE           R2, #1
95FE2:  IT NE
95FE4:  STRNE.W         R2, [R1,#0x370]
95FE8:  LDR             R2, =(off_11724C - 0x95FF2)
95FEA:  LDR.W           R1, [R11]
95FEE:  ADD             R2, PC; off_11724C
95FF0:  LDR             R2, [R2]; j_opus_decoder_destroy_0
95FF2:  BLX             R2; j_opus_decoder_destroy_0
95FF4:  LDR             R0, [R5]
95FF6:  STRD.W          R6, R8, [R5,#4]
95FFA:  LDR             R2, [R5,#8]
95FFC:  ADD.W           R0, R0, R0,LSL#1
96000:  VLDR            D16, [SP,#0x38+var_38]
96004:  ADD.W           R0, R2, R0,LSL#2
96008:  LDR             R1, [SP,#0x38+var_30]
9600A:  VST1.8          {D16}, [R0]
9600E:  STR             R1, [R0,#8]
96010:  LDR             R0, [R5]
96012:  ADDS            R0, #1
96014:  STR             R0, [R5]
96016:  VSTR            S16, [R9]
9601A:  LDR             R0, [SP,#0x38+var_2C]
9601C:  LDR             R1, =(__stack_chk_guard_ptr - 0x96022)
9601E:  ADD             R1, PC; __stack_chk_guard_ptr
96020:  LDR             R1, [R1]; __stack_chk_guard
96022:  LDR             R1, [R1]
96024:  CMP             R1, R0
96026:  ITTTT EQ
96028:  ADDEQ           SP, SP, #0x10
9602A:  VPOPEQ          {D8}
9602E:  ADDEQ           SP, SP, #4
96030:  POPEQ.W         {R8-R11}
96034:  IT EQ
96036:  POPEQ           {R4-R7,PC}
96038:  BLX             __stack_chk_fail
