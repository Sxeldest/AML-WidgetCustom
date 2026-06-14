; =========================================================
; Game Engine Function: sub_85F44
; Address            : 0x85F44 - 0x8605C
; =========================================================

85F44:  PUSH            {R4-R7,LR}
85F46:  ADD             R7, SP, #0xC
85F48:  PUSH.W          {R8,R9,R11}
85F4C:  SUB             SP, SP, #0x48
85F4E:  MOV             R5, R0
85F50:  LDR             R0, =(byte_1ABE5C - 0x85F5A)
85F52:  MOV             R4, R1
85F54:  LDR             R1, =(__stack_chk_guard_ptr - 0x85F5C)
85F56:  ADD             R0, PC; byte_1ABE5C
85F58:  ADD             R1, PC; __stack_chk_guard_ptr
85F5A:  LDR             R1, [R1]; __stack_chk_guard
85F5C:  LDR             R1, [R1]
85F5E:  STR             R1, [SP,#0x60+var_1C]
85F60:  LDRB            R0, [R0]
85F62:  DMB.W           ISH
85F66:  LSLS            R0, R0, #0x1F
85F68:  BEQ             loc_8603A
85F6A:  MOV             R0, R5
85F6C:  MOV             R1, R4
85F6E:  BL              sub_7E314
85F72:  LDR             R0, =(off_114AD8 - 0x85F78)
85F74:  ADD             R0, PC; off_114AD8
85F76:  LDR             R0, [R0]; dword_1A4434
85F78:  LDR             R0, [R0]
85F7A:  CMP             R0, #0
85F7C:  ITTT NE
85F7E:  LDRNE.W         R0, [R0,#0x3B0]
85F82:  LDRNE           R0, [R0,#4]
85F84:  CMPNE           R0, #0
85F86:  BNE             loc_85FA2
85F88:  LDR             R0, [SP,#0x60+var_1C]
85F8A:  LDR             R1, =(__stack_chk_guard_ptr - 0x85F90)
85F8C:  ADD             R1, PC; __stack_chk_guard_ptr
85F8E:  LDR             R1, [R1]; __stack_chk_guard
85F90:  LDR             R1, [R1]
85F92:  CMP             R1, R0
85F94:  ITTT EQ
85F96:  ADDEQ           SP, SP, #0x48 ; 'H'
85F98:  POPEQ.W         {R8,R9,R11}
85F9C:  POPEQ           {R4-R7,PC}
85F9E:  BLX             __stack_chk_fail
85FA2:  LDRH.W          R1, [R5,#0x5C]
85FA6:  LSRS            R2, R1, #4
85FA8:  CMP             R2, #0x7C ; '|'
85FAA:  BHI             loc_85F88
85FAC:  ADDS            R2, R0, R1
85FAE:  MOVW            R3, #0x9C40
85FB2:  LDRB            R2, [R2,R3]
85FB4:  CMP             R2, #0
85FB6:  ITT NE
85FB8:  LDRNE.W         R0, [R0,R1,LSL#2]
85FBC:  CMPNE           R0, #0
85FBE:  BEQ             loc_85F88
85FC0:  LDR             R0, [R0,#4]
85FC2:  MOVS            R1, #0
85FC4:  STR             R1, [SP,#0x60+var_54]
85FC6:  STR             R1, [SP,#0x60+var_44]
85FC8:  CMP             R0, #0
85FCA:  STRD.W          R1, R1, [SP,#0x60+var_5C]
85FCE:  STR             R1, [SP,#0x60+var_34]
85FD0:  STRD.W          R1, R1, [SP,#0x60+var_4C]
85FD4:  STR             R1, [SP,#0x60+var_24]
85FD6:  STRD.W          R1, R1, [SP,#0x60+var_3C]
85FDA:  STRD.W          R1, R1, [SP,#0x60+var_2C]
85FDE:  ITT NE
85FE0:  LDRNE           R0, [R0,#0x14]
85FE2:  CMPNE           R0, #0
85FE4:  BEQ             loc_8601E
85FE6:  LDR             R1, [R0]
85FE8:  STR             R1, [SP,#0x60+var_5C]
85FEA:  LDR             R1, [R0,#0x24]
85FEC:  LDR.W           LR, [R0,#8]
85FF0:  LDR.W           R9, [R0,#0x14]
85FF4:  LDR             R6, [R0,#0x20]
85FF6:  LDR.W           R12, [R0,#4]
85FFA:  LDR.W           R8, [R0,#0x10]
85FFE:  LDR             R3, [R0,#0x18]
86000:  LDR             R5, [R0,#0x28]
86002:  LDR             R2, [R0,#0x30]
86004:  STRD.W          R6, R1, [SP,#0x60+var_3C]
86008:  LDR             R1, [R0,#0x34]
8600A:  LDR             R0, [R0,#0x38]
8600C:  STR             R2, [SP,#0x60+var_2C]
8600E:  STR             R5, [SP,#0x60+var_34]
86010:  STR             R3, [SP,#0x60+var_44]
86012:  STRD.W          R8, R9, [SP,#0x60+var_4C]
86016:  STRD.W          R12, LR, [SP,#0x60+var_58]
8601A:  STR             R1, [SP,#0x60+var_28]
8601C:  STR             R0, [SP,#0x60+var_24]
8601E:  LDR             R0, =(off_114D50 - 0x86024)
86020:  ADD             R0, PC; off_114D50
86022:  LDR             R0, [R0]; off_1ABF60
86024:  LDR             R5, [R0]
86026:  MOV             R0, R4
86028:  BL              sub_7DB44
8602C:  LDR             R2, =(dword_1ABE50 - 0x86032)
8602E:  ADD             R2, PC; dword_1ABE50
86030:  ADD             R1, SP, #0x60+var_5C
86032:  MOV             R3, R2
86034:  ADDS            R1, #0x30 ; '0'
86036:  BLX             R5
86038:  B               loc_85F88
8603A:  LDR             R0, =(byte_1ABE5C - 0x86040)
8603C:  ADD             R0, PC; byte_1ABE5C ; __guard *
8603E:  BLX             j___cxa_guard_acquire
86042:  CMP             R0, #0
86044:  BEQ             loc_85F6A
86046:  LDR             R1, =(dword_1ABE50 - 0x86050)
86048:  MOVS            R2, #0
8604A:  LDR             R0, =(byte_1ABE5C - 0x86052)
8604C:  ADD             R1, PC; dword_1ABE50
8604E:  ADD             R0, PC; byte_1ABE5C ; __guard *
86050:  STRD.W          R2, R2, [R1]
86054:  STR             R2, [R1,#(dword_1ABE58 - 0x1ABE50)]
86056:  BLX             j___cxa_guard_release
8605A:  B               loc_85F6A
