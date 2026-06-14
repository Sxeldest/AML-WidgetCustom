; =========================================================
; Game Engine Function: sub_88F60
; Address            : 0x88F60 - 0x890E6
; =========================================================

88F60:  PUSH            {R4-R7,LR}
88F62:  ADD             R7, SP, #0xC
88F64:  PUSH.W          {R8-R11}
88F68:  SUB             SP, SP, #0x14
88F6A:  MOV             R6, R0
88F6C:  LDR             R0, =(__stack_chk_guard_ptr - 0x88F76)
88F6E:  MOV             R8, R1
88F70:  MOV             R3, R2; arg
88F72:  ADD             R0, PC; __stack_chk_guard_ptr
88F74:  MOVS            R1, #0; maxlen
88F76:  LDR             R0, [R0]; __stack_chk_guard
88F78:  LDR             R0, [R0]
88F7A:  STR             R0, [SP,#0x30+var_20]
88F7C:  MOVS            R0, #0; s
88F7E:  STRD.W          R2, R2, [SP,#0x30+arg]
88F82:  MOV             R2, R8; format
88F84:  BLX             vsnprintf
88F88:  CMP             R0, #1
88F8A:  BLT.W           loc_890CC
88F8E:  MOV             R9, R0
88F90:  LDRD.W          R10, R0, [R6]
88F94:  CMP.W           R10, #0
88F98:  IT EQ
88F9A:  MOVEQ.W         R10, #1
88F9E:  ADD.W           R5, R10, R9
88FA2:  CMP             R5, R0
88FA4:  MOV             R2, R5
88FA6:  BLT             loc_89016
88FA8:  CMP.W           R5, R0,LSL#1
88FAC:  MOV             R4, R5
88FAE:  IT LE
88FB0:  LSLLE           R4, R0, #1
88FB2:  CMP             R0, R4
88FB4:  BGE             loc_89016
88FB6:  STR             R2, [SP,#0x30+var_2C]
88FB8:  LDR             R0, =(dword_1ACF68 - 0x88FBE)
88FBA:  ADD             R0, PC; dword_1ACF68
88FBC:  STR             R0, [SP,#0x30+var_30]
88FBE:  LDR             R0, [R0]
88FC0:  CMP             R0, #0
88FC2:  ITTT NE
88FC4:  LDRNE.W         R1, [R0,#0x370]
88FC8:  ADDNE           R1, #1
88FCA:  STRNE.W         R1, [R0,#0x370]
88FCE:  LDR             R1, =(dword_1ACF70 - 0x88FD6)
88FD0:  LDR             R0, =(off_117248 - 0x88FD8)
88FD2:  ADD             R1, PC; dword_1ACF70
88FD4:  ADD             R0, PC; off_117248
88FD6:  MOV             R11, R1
88FD8:  LDR             R1, [R1]
88FDA:  LDR             R2, [R0]; sub_9A720
88FDC:  MOV             R0, R4
88FDE:  BLX             R2; sub_9A720
88FE0:  LDR             R1, [R6,#8]; src
88FE2:  MOV             R5, R0
88FE4:  CBZ             R1, loc_89012
88FE6:  LDR             R2, [R6]; n
88FE8:  MOV             R0, R5; dest
88FEA:  BLX             j_memcpy
88FEE:  LDR             R0, [R6,#8]
88FF0:  CMP             R0, #0
88FF2:  ITTTT NE
88FF4:  LDRNE           R1, [SP,#0x30+var_30]
88FF6:  LDRNE           R1, [R1]
88FF8:  CMPNE           R1, #0
88FFA:  LDRNE.W         R2, [R1,#0x370]
88FFE:  ITT NE
89000:  SUBNE           R2, #1
89002:  STRNE.W         R2, [R1,#0x370]
89006:  LDR             R2, =(off_11724C - 0x89010)
89008:  LDR.W           R1, [R11]
8900C:  ADD             R2, PC; off_11724C
8900E:  LDR             R2, [R2]; j_opus_decoder_destroy_0
89010:  BLX             R2; j_opus_decoder_destroy_0
89012:  STR             R5, [R6,#8]
89014:  B               loc_89092
89016:  CMP             R0, R5
89018:  BGE             loc_89096
8901A:  CMP             R0, #0
8901C:  ITTE NE
8901E:  ADDNE.W         R1, R0, R0,LSR#31
89022:  ADDNE.W         R1, R0, R1,ASR#1
89026:  MOVEQ           R1, #8
89028:  CMP             R1, R5
8902A:  IT GT
8902C:  MOVGT           R5, R1
8902E:  CMP             R0, R5
89030:  BGE             loc_89096
89032:  STR             R2, [SP,#0x30+var_2C]
89034:  LDR             R0, =(dword_1ACF68 - 0x8903A)
89036:  ADD             R0, PC; dword_1ACF68
89038:  STR             R0, [SP,#0x30+var_30]
8903A:  LDR             R0, [R0]
8903C:  CMP             R0, #0
8903E:  ITTT NE
89040:  LDRNE.W         R1, [R0,#0x370]
89044:  ADDNE           R1, #1
89046:  STRNE.W         R1, [R0,#0x370]
8904A:  LDR             R1, =(dword_1ACF70 - 0x89052)
8904C:  LDR             R0, =(off_117248 - 0x89054)
8904E:  ADD             R1, PC; dword_1ACF70
89050:  ADD             R0, PC; off_117248
89052:  MOV             R11, R1
89054:  LDR             R1, [R1]
89056:  LDR             R2, [R0]; sub_9A720
89058:  MOV             R0, R5
8905A:  BLX             R2; sub_9A720
8905C:  LDR             R1, [R6,#8]; src
8905E:  MOV             R4, R0
89060:  CBZ             R1, loc_8908E
89062:  LDR             R2, [R6]; n
89064:  MOV             R0, R4; dest
89066:  BLX             j_memcpy
8906A:  LDR             R0, [R6,#8]
8906C:  CMP             R0, #0
8906E:  ITTTT NE
89070:  LDRNE           R1, [SP,#0x30+var_30]
89072:  LDRNE           R1, [R1]
89074:  CMPNE           R1, #0
89076:  LDRNE.W         R2, [R1,#0x370]
8907A:  ITT NE
8907C:  SUBNE           R2, #1
8907E:  STRNE.W         R2, [R1,#0x370]
89082:  LDR             R2, =(off_11724C - 0x8908C)
89084:  LDR.W           R1, [R11]
89088:  ADD             R2, PC; off_11724C
8908A:  LDR             R2, [R2]; j_opus_decoder_destroy_0
8908C:  BLX             R2; j_opus_decoder_destroy_0
8908E:  STR             R4, [R6,#8]
89090:  MOV             R4, R5
89092:  LDR             R2, [SP,#0x30+var_2C]
89094:  STR             R4, [R6,#4]
89096:  LDR.W           R11, [R6,#8]
8909A:  ADD.W           R5, R9, #1
8909E:  LDR             R3, [SP,#0x30+arg]; arg
890A0:  ADD.W           R0, R10, R11
890A4:  STR             R2, [R6]
890A6:  SUBS            R4, R0, #1
890A8:  MOV             R1, R5; maxlen
890AA:  MOV             R2, R8; format
890AC:  MOV             R0, R4; s
890AE:  BLX             vsnprintf
890B2:  CMP.W           R11, #0
890B6:  BEQ             loc_890CC
890B8:  CMP             R0, R5
890BA:  MOV             R1, R9
890BC:  IT LT
890BE:  MOVLT           R1, R0
890C0:  ADDS            R0, #1
890C2:  MOV.W           R0, #0
890C6:  IT EQ
890C8:  MOVEQ           R1, R9
890CA:  STRB            R0, [R4,R1]
890CC:  LDR             R0, [SP,#0x30+var_20]
890CE:  LDR             R1, =(__stack_chk_guard_ptr - 0x890D4)
890D0:  ADD             R1, PC; __stack_chk_guard_ptr
890D2:  LDR             R1, [R1]; __stack_chk_guard
890D4:  LDR             R1, [R1]
890D6:  CMP             R1, R0
890D8:  ITTT EQ
890DA:  ADDEQ           SP, SP, #0x14
890DC:  POPEQ.W         {R8-R11}
890E0:  POPEQ           {R4-R7,PC}
890E2:  BLX             __stack_chk_fail
