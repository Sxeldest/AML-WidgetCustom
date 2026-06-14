; =========================================================
; Game Engine Function: silk_find_LPC_FIX
; Address            : 0x1AFF00 - 0x1B0152
; =========================================================

1AFF00:  PUSH            {R4-R7,LR}
1AFF02:  ADD             R7, SP, #0xC
1AFF04:  PUSH.W          {R8-R11}
1AFF08:  SUB             SP, SP, #0x10C
1AFF0A:  MOV             R10, R0
1AFF0C:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AFF16)
1AFF0E:  MOV             R6, SP
1AFF10:  MOV             R12, R2
1AFF12:  ADD             R0, PC; __stack_chk_guard_ptr
1AFF14:  STR             R1, [R6,#0x128+var_10C]
1AFF16:  MOVW            R11, #0x129F
1AFF1A:  MOVW            R8, #0x11E4
1AFF1E:  LDR             R0, [R0]; __stack_chk_guard
1AFF20:  MOVS            R2, #4
1AFF22:  MOV             R5, R3
1AFF24:  MOVW            R9, #0x13E4
1AFF28:  LDR             R0, [R0]
1AFF2A:  STR             R0, [R6,#0x128+var_108]
1AFF2C:  MOVW            R0, #0x11EC
1AFF30:  LDR.W           R0, [R10,R0]
1AFF34:  LDR.W           R1, [R10,R8]
1AFF38:  STRB.W          R2, [R10,R11]
1AFF3C:  MOV.W           R2, #0x1220
1AFF40:  LDR.W           R2, [R10,R2]
1AFF44:  LDR.W           R3, [R10,R9]
1AFF48:  SUB             SP, SP, #0x18
1AFF4A:  ADDS            R4, R2, R0
1AFF4C:  STR             R5, [SP,#0x140+var_140]
1AFF4E:  MOV             R0, R4
1AFF50:  STR             R0, [R6,#0x18]
1AFF52:  SUB.W           R0, R7, #-var_F8
1AFF56:  STRD.W          R4, R1, [SP,#0x140+var_13C]
1AFF5A:  ADD.W           R1, R6, #0x28 ; '('
1AFF5E:  STRD.W          R2, R3, [SP,#0x140+var_134]
1AFF62:  SUB.W           R2, R7, #-var_64
1AFF66:  MOV             R3, R12
1AFF68:  STR             R3, [R6,#0x14]
1AFF6A:  BLX             j_silk_burg_modified_c
1AFF6E:  ADD             SP, SP, #0x18
1AFF70:  ADD.W           R0, R10, R11
1AFF74:  STR             R0, [R6]
1AFF76:  MOVW            R0, #0x1218
1AFF7A:  ADD.W           R11, R10, #0x1220
1AFF7E:  LDR.W           R0, [R10,R0]
1AFF82:  CMP             R0, #0
1AFF84:  BEQ.W           loc_1B011E
1AFF88:  MOVW            R0, #0x1238
1AFF8C:  LDR.W           R0, [R10,R0]
1AFF90:  CMP             R0, #0
1AFF92:  BNE.W           loc_1B011E
1AFF96:  ADD.W           R0, R10, R8
1AFF9A:  LDR             R0, [R0]
1AFF9C:  CMP             R0, #4
1AFF9E:  BNE.W           loc_1B011E
1AFFA2:  ADD.W           R1, R10, R9
1AFFA6:  LDR.W           R0, [R11]
1AFFAA:  STR             R1, [R6,#8]
1AFFAC:  MOV             R3, R5
1AFFAE:  LDR             R1, [R1]
1AFFB0:  ADD.W           R5, R6, #0x24 ; '$'
1AFFB4:  SUB             SP, SP, #0x18
1AFFB6:  MOVS            R2, #2
1AFFB8:  LDR             R4, [R6,#0x18]
1AFFBA:  STR             R3, [SP,#0x140+var_140]
1AFFBC:  STRD.W          R4, R2, [SP,#0x140+var_13C]
1AFFC0:  SUB.W           R2, R7, #-var_A4
1AFFC4:  STRD.W          R0, R1, [SP,#0x140+var_134]
1AFFC8:  ADD.W           R1, R6, #0x24 ; '$'
1AFFCC:  LDR             R0, [R6,#0x14]
1AFFCE:  ADD.W           R3, R0, R4,LSL#2
1AFFD2:  SUB.W           R0, R7, #-var_FC
1AFFD6:  BLX             j_silk_burg_modified_c
1AFFDA:  ADD             SP, SP, #0x18
1AFFDC:  LDRD.W          R1, R0, [R5]
1AFFE0:  LSLS            R2, R4, #1
1AFFE2:  STR             R2, [R6,#0x10]
1AFFE4:  SUBS            R0, R1, R0
1AFFE6:  CMP             R0, #0
1AFFE8:  BLT             loc_1AFFFA
1AFFEA:  CMP             R0, #0x1F
1AFFEC:  BGT             loc_1B000A
1AFFEE:  LDRD.W          R1, R2, [R5,#8]
1AFFF2:  ASR.W           R0, R1, R0
1AFFF6:  SUBS            R0, R2, R0
1AFFF8:  B               loc_1B0008
1AFFFA:  NEGS            R0, R0
1AFFFC:  LDRD.W          R2, R3, [R5,#8]
1B0000:  STR             R1, [R5,#4]
1B0002:  ASR.W           R0, R3, R0
1B0006:  SUBS            R0, R0, R2
1B0008:  STR             R0, [R5,#0xC]
1B000A:  LDR.W           R2, [R11]
1B000E:  SUB.W           R1, R7, #-var_A4
1B0012:  LDR             R0, [R6,#0x1C]
1B0014:  BLX             j_silk_A2NLSF
1B0018:  LDR             R1, [R6,#0x18]
1B001A:  MOVS            R0, #7
1B001C:  ADD.W           R0, R0, R1,LSL#2
1B0020:  BIC.W           R0, R0, #7
1B0024:  SUB.W           R1, SP, R0
1B0028:  MOVW            R0, #0x1194
1B002C:  ADD             R0, R10
1B002E:  STR             R0, [R6,#0xC]
1B0030:  STR             R1, [R6,#4]
1B0032:  MOV             SP, R1
1B0034:  LDR.W           R10, [R6,#8]
1B0038:  MOV.W           R8, #4
1B003C:  LDR.W           R0, [R11]
1B0040:  SUB             SP, SP, #8
1B0042:  SUB.W           R8, R8, #1
1B0046:  SUB.W           R9, R7, #-var_E4
1B004A:  LDR             R1, [R6,#0xC]
1B004C:  LDR             R2, [R6,#0x1C]
1B004E:  MOV             R3, R8
1B0050:  STR             R0, [SP,#0x130+var_130]
1B0052:  MOV             R0, R9
1B0054:  BLX             j_silk_interpolate
1B0058:  ADD             SP, SP, #8
1B005A:  SUB.W           R4, R7, #-var_C4
1B005E:  LDR.W           R3, [R10]
1B0062:  LDR.W           R2, [R11]
1B0066:  MOV             R1, R9
1B0068:  MOV             R0, R4
1B006A:  BLX             j_silk_NLSF2A
1B006E:  LDR.W           R0, [R11]
1B0072:  LDR.W           R1, [R10]
1B0076:  STRD.W          R0, R1, [SP,#0x128+var_130]!
1B007A:  LDR.W           R9, [R6,#4]
1B007E:  MOV             R2, R4
1B0080:  LDR             R1, [R6,#0x14]
1B0082:  LDR             R3, [R6,#0x10]
1B0084:  MOV             R0, R9
1B0086:  BLX             j_silk_LPC_analysis_filter
1B008A:  ADD             SP, SP, #8
1B008C:  LDR.W           R0, [R11]
1B0090:  SUB.W           R1, R7, #-var_F0
1B0094:  LDR             R4, [R6,#0x18]
1B0096:  SUBS            R3, R4, R0
1B0098:  ADD.W           R2, R9, R0,LSL#1
1B009C:  SUB.W           R0, R7, #-var_E8
1B00A0:  BLX             j_silk_sum_sqr_shift
1B00A4:  LDR.W           R0, [R11]
1B00A8:  SUB.W           R1, R7, #-var_F4
1B00AC:  SUBS            R3, R4, R0
1B00AE:  ADD.W           R0, R9, R0,LSL#1
1B00B2:  ADD.W           R2, R0, R4,LSL#1
1B00B6:  SUB.W           R0, R7, #-var_EC
1B00BA:  BLX             j_silk_sum_sqr_shift
1B00BE:  LDRD.W          R3, R0, [R5,#0x10]
1B00C2:  SUBS            R1, R0, R3
1B00C4:  CMP             R1, #0
1B00C6:  BLT             loc_1B00D4
1B00C8:  LDR             R2, [R5,#0x18]
1B00CA:  ASR.W           R1, R2, R1
1B00CE:  LDR             R2, [R5,#0x1C]
1B00D0:  STR             R1, [R5,#0x18]
1B00D2:  B               loc_1B00E2
1B00D4:  LDR             R0, [R5,#0x1C]
1B00D6:  NEGS            R1, R1
1B00D8:  ASR.W           R2, R0, R1
1B00DC:  LDR             R1, [R5,#0x18]
1B00DE:  MOV             R0, R3
1B00E0:  STR             R2, [R5,#0x1C]
1B00E2:  LDR             R3, [R5,#4]
1B00E4:  NEGS            R0, R0
1B00E6:  ADD             R1, R2
1B00E8:  SUBS            R2, R0, R3
1B00EA:  CMP.W           R2, #0xFFFFFFFF
1B00EE:  BLE             loc_1B00FC
1B00F0:  LDR             R3, [R5,#0xC]
1B00F2:  ASR.W           R2, R1, R2
1B00F6:  CMP             R2, R3
1B00F8:  BLT             loc_1B010E
1B00FA:  B               loc_1B0118
1B00FC:  CMN.W           R2, #0x1F
1B0100:  BLT             loc_1B0118
1B0102:  LDR             R3, [R5,#0xC]
1B0104:  NEGS            R2, R2
1B0106:  ASR.W           R2, R3, R2
1B010A:  CMP             R1, R2
1B010C:  BGE             loc_1B0118
1B010E:  STR             R0, [R5,#4]
1B0110:  LDR             R0, [R6]
1B0112:  STR             R1, [R5,#0xC]
1B0114:  STRB.W          R8, [R0]
1B0118:  CMP.W           R8, #0
1B011C:  BGT             loc_1B003C
1B011E:  LDR             R0, [R6]
1B0120:  LDRB            R0, [R0]
1B0122:  CMP             R0, #4
1B0124:  BNE             loc_1B0134
1B0126:  LDR.W           R2, [R11]
1B012A:  SUB.W           R1, R7, #-var_64
1B012E:  LDR             R0, [R6,#0x1C]
1B0130:  BLX             j_silk_A2NLSF
1B0134:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B013C)
1B0136:  LDR             R1, [R6,#0x20]
1B0138:  ADD             R0, PC; __stack_chk_guard_ptr
1B013A:  LDR             R0, [R0]; __stack_chk_guard
1B013C:  LDR             R0, [R0]
1B013E:  SUBS            R0, R0, R1
1B0140:  ITTTT EQ
1B0142:  SUBEQ.W         R4, R7, #-var_1C
1B0146:  MOVEQ           SP, R4
1B0148:  POPEQ.W         {R8-R11}
1B014C:  POPEQ           {R4-R7,PC}
1B014E:  BLX             __stack_chk_fail
