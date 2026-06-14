; =========================================================
; Game Engine Function: sub_95E08
; Address            : 0x95E08 - 0x95F08
; =========================================================

95E08:  PUSH            {R4-R7,LR}
95E0A:  ADD             R7, SP, #0xC
95E0C:  PUSH.W          {R8-R11}
95E10:  SUB             SP, SP, #0x24
95E12:  MOV             R9, R1
95E14:  LDR             R1, =(dword_1ACF68 - 0x95E22)
95E16:  MOVW            R5, #0x15C4
95E1A:  MOVW            R3, #0x1A78
95E1E:  ADD             R1, PC; dword_1ACF68
95E20:  ADD             R4, SP, #0x40+var_38
95E22:  LDR             R2, [R1]
95E24:  MOV             R11, R1
95E26:  LDR             R1, =(__stack_chk_guard_ptr - 0x95E30)
95E28:  ADD.W           R6, R2, R0,LSL#4
95E2C:  ADD             R1, PC; __stack_chk_guard_ptr
95E2E:  ADD.W           R10, R6, R5
95E32:  ADDS            R5, R2, R3
95E34:  ADDS            R6, R4, #4
95E36:  LDR             R1, [R1]; __stack_chk_guard
95E38:  LDR             R1, [R1]
95E3A:  STR             R1, [SP,#0x40+var_20]
95E3C:  LDR             R1, [R2,R3]
95E3E:  LDR             R3, [R5,#4]
95E40:  VLD1.32         {D16-D17}, [R10]
95E44:  CMP             R1, R3
95E46:  VST1.32         {D16-D17}, [R6]
95E4A:  STR             R0, [SP,#0x40+var_38]
95E4C:  BNE             loc_95ECA
95E4E:  CMP             R1, #0
95E50:  ADD.W           R6, R1, #1
95E54:  ITTE NE
95E56:  ADDNE.W         R0, R1, R1,LSR#31
95E5A:  ADDNE.W         R0, R1, R0,ASR#1
95E5E:  MOVEQ           R0, #8
95E60:  CMP             R0, R6
95E62:  IT GT
95E64:  MOVGT           R6, R0
95E66:  CMP             R1, R6
95E68:  BGE             loc_95ECA
95E6A:  LDR             R0, =(off_117248 - 0x95E72)
95E6C:  LDR             R1, =(dword_1ACF70 - 0x95E78)
95E6E:  ADD             R0, PC; off_117248
95E70:  LDR.W           R3, [R2,#0x370]
95E74:  ADD             R1, PC; dword_1ACF70
95E76:  STR             R1, [SP,#0x40+var_3C]
95E78:  LDR.W           R12, [R0]; sub_9A720
95E7C:  ADDS            R0, R3, #1
95E7E:  STR.W           R0, [R2,#0x370]
95E82:  ADD.W           R0, R6, R6,LSL#2
95E86:  LDR             R1, [R1]
95E88:  LSLS            R0, R0, #2
95E8A:  BLX             R12; sub_9A720
95E8C:  LDR             R1, [R5,#8]; src
95E8E:  MOV             R8, R0
95E90:  CBZ             R1, loc_95EC4
95E92:  LDR             R0, [R5]
95E94:  ADD.W           R0, R0, R0,LSL#2
95E98:  LSLS            R2, R0, #2; n
95E9A:  MOV             R0, R8; dest
95E9C:  BLX             j_memcpy
95EA0:  LDR             R0, [R5,#8]
95EA2:  CMP             R0, #0
95EA4:  ITTTT NE
95EA6:  LDRNE.W         R1, [R11]
95EAA:  CMPNE           R1, #0
95EAC:  LDRNE.W         R2, [R1,#0x370]
95EB0:  SUBNE           R2, #1
95EB2:  IT NE
95EB4:  STRNE.W         R2, [R1,#0x370]
95EB8:  LDR             R2, =(off_11724C - 0x95EC0)
95EBA:  LDR             R1, [SP,#0x40+var_3C]
95EBC:  ADD             R2, PC; off_11724C
95EBE:  LDR             R1, [R1]
95EC0:  LDR             R2, [R2]; j_opus_decoder_destroy_0
95EC2:  BLX             R2; j_opus_decoder_destroy_0
95EC4:  LDR             R1, [R5]
95EC6:  STRD.W          R6, R8, [R5,#4]
95ECA:  LDR             R0, [R5,#8]
95ECC:  ADD.W           R1, R1, R1,LSL#2
95ED0:  VLD1.8          {D16-D17}, [R4]!
95ED4:  ADD.W           R0, R0, R1,LSL#2
95ED8:  VST1.8          {D16-D17}, [R0]!
95EDC:  LDR             R2, [R4]
95EDE:  STR             R2, [R0]
95EE0:  LDR             R0, [R5]
95EE2:  ADDS            R0, #1
95EE4:  STR             R0, [R5]
95EE6:  VLD1.32         {D16-D17}, [R9]
95EEA:  VST1.32         {D16-D17}, [R10]
95EEE:  LDR             R0, [SP,#0x40+var_20]
95EF0:  LDR             R1, =(__stack_chk_guard_ptr - 0x95EF6)
95EF2:  ADD             R1, PC; __stack_chk_guard_ptr
95EF4:  LDR             R1, [R1]; __stack_chk_guard
95EF6:  LDR             R1, [R1]
95EF8:  CMP             R1, R0
95EFA:  ITTT EQ
95EFC:  ADDEQ           SP, SP, #0x24 ; '$'
95EFE:  POPEQ.W         {R8-R11}
95F02:  POPEQ           {R4-R7,PC}
95F04:  BLX             __stack_chk_fail
