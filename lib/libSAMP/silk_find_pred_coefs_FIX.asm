; =========================================================
; Game Engine Function: silk_find_pred_coefs_FIX
; Address            : 0x1AEAD0 - 0x1AEF4A
; =========================================================

1AEAD0:  PUSH            {R4-R7,LR}
1AEAD2:  ADD             R7, SP, #0xC
1AEAD4:  PUSH.W          {R8-R11}
1AEAD8:  SUB             SP, SP, #0x6C
1AEADA:  STRD.W          R2, R3, [R7,#var_84]
1AEADE:  STR.W           R1, [R7,#var_6C]
1AEAE2:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x1AEAEA)
1AEAE6:  ADD             R1, PC; __stack_chk_guard_ptr
1AEAE8:  LDR             R1, [R1]; __stack_chk_guard
1AEAEA:  LDR             R1, [R1]
1AEAEC:  STR.W           R1, [R7,#var_24]
1AEAF0:  MOVW            R1, #0x11E4
1AEAF4:  LDR.W           R9, [R0,R1]
1AEAF8:  STR.W           R0, [R7,#var_78]
1AEAFC:  CMP.W           R9, #1
1AEB00:  ADD             R0, R1
1AEB02:  STR.W           R0, [R7,#var_7C]
1AEB06:  BLT.W           loc_1AEC14
1AEB0A:  LDR.W           R3, [R7,#var_6C]
1AEB0E:  MOV             R0, #0x1FFFFFF
1AEB12:  MOVS            R1, #0
1AEB14:  LDR.W           R2, [R3,R1,LSL#2]
1AEB18:  ADDS            R1, #1
1AEB1A:  CMP             R0, R2
1AEB1C:  IT GE
1AEB1E:  MOVGE           R0, R2
1AEB20:  CMP             R1, R9
1AEB22:  BLT             loc_1AEB14
1AEB24:  CMP.W           R9, #1
1AEB28:  BLT             loc_1AEC14
1AEB2A:  CMP             R0, #0
1AEB2C:  MOV             R1, R0
1AEB2E:  IT MI
1AEB30:  NEGMI           R1, R0
1AEB32:  MOVS            R4, #0
1AEB34:  CLZ.W           R1, R1
1AEB38:  SUBS            R2, R1, #1
1AEB3A:  ADD.W           R10, R1, #0x1C
1AEB3E:  LSL.W           R11, R0, R2
1AEB42:  UXTH.W          R0, R11
1AEB46:  STR.W           R0, [R7,#var_70]
1AEB4A:  MOV.W           R0, R11,ASR#16
1AEB4E:  STR.W           R0, [R7,#var_74]
1AEB52:  LDR.W           R0, [R7,#var_6C]
1AEB56:  LDR.W           R0, [R0,R4,LSL#2]
1AEB5A:  CMP             R0, #0
1AEB5C:  MOV             R1, R0
1AEB5E:  IT MI
1AEB60:  NEGMI           R1, R0
1AEB62:  CLZ.W           R6, R1
1AEB66:  SUBS            R1, R6, #1
1AEB68:  LSL.W           R8, R0, R1
1AEB6C:  MOV             R0, #0x1FFFFFFF
1AEB70:  MOV.W           R1, R8,ASR#16
1AEB74:  BLX             sub_220A40
1AEB78:  LDR.W           R2, [R7,#var_70]
1AEB7C:  SXTH            R1, R0
1AEB7E:  LDR.W           R3, [R7,#var_74]
1AEB82:  MULS            R2, R1
1AEB84:  SMULBB.W        R3, R1, R3
1AEB88:  ADD.W           R2, R3, R2,ASR#16
1AEB8C:  SMMUL.W         R3, R2, R8
1AEB90:  SUB.W           R3, R11, R3,LSL#3
1AEB94:  UXTH            R5, R3
1AEB96:  SMLABT.W        R0, R0, R3, R2
1AEB9A:  MULS            R1, R5
1AEB9C:  ADD.W           R0, R0, R1,ASR#16
1AEBA0:  RSB.W           R1, R6, #1
1AEBA4:  ADD             R1, R10
1AEBA6:  CMP             R1, #0xD
1AEBA8:  BGT             loc_1AEBCC
1AEBAA:  RSB.W           R1, R1, #0xE
1AEBAE:  MOV             R2, #0x7FFFFFFF
1AEBB2:  MOV.W           R3, #0x80000000
1AEBB6:  LSRS            R2, R1
1AEBB8:  ASRS            R3, R1
1AEBBA:  CMP             R3, R2
1AEBBC:  BLE             loc_1AEBDE
1AEBBE:  CMP             R0, R3
1AEBC0:  MOV             R6, R3
1AEBC2:  BGT             loc_1AEBEC
1AEBC4:  CMP             R0, R2
1AEBC6:  IT LT
1AEBC8:  MOVLT           R0, R2
1AEBCA:  B               loc_1AEBEA
1AEBCC:  SUB.W           R2, R1, #0xE
1AEBD0:  CMP             R1, #0x2E ; '.'
1AEBD2:  MOV.W           R1, #0
1AEBD6:  IT LT
1AEBD8:  ASRLT.W         R1, R0, R2
1AEBDC:  B               loc_1AEBF0
1AEBDE:  CMP             R0, R2
1AEBE0:  MOV             R6, R2
1AEBE2:  BGT             loc_1AEBEC
1AEBE4:  CMP             R0, R3
1AEBE6:  IT LT
1AEBE8:  MOVLT           R0, R3
1AEBEA:  MOV             R6, R0
1AEBEC:  LSL.W           R1, R6, R1
1AEBF0:  CMP             R1, #0x64 ; 'd'
1AEBF2:  SUB.W           R0, R7, #-var_34
1AEBF6:  IT LE
1AEBF8:  MOVLE           R1, #0x64 ; 'd'
1AEBFA:  STR.W           R1, [R0,R4,LSL#2]
1AEBFE:  MOV.W           R0, #0x10000
1AEC02:  BLX             sub_220A6C
1AEC06:  SUB.W           R1, R7, #-var_44
1AEC0A:  STR.W           R0, [R1,R4,LSL#2]
1AEC0E:  ADDS            R4, #1
1AEC10:  CMP             R4, R9
1AEC12:  BLT             loc_1AEB52
1AEC14:  LDR.W           R3, [R7,#var_78]
1AEC18:  MOV.W           R0, #0x1220
1AEC1C:  MOVW            R1, #0x11E8
1AEC20:  LDR             R0, [R3,R0]
1AEC22:  LDR             R1, [R3,R1]
1AEC24:  MLA.W           R2, R0, R9, R1
1AEC28:  MOVS            R1, #7
1AEC2A:  ADD.W           R2, R1, R2,LSL#1
1AEC2E:  BIC.W           R2, R2, #7
1AEC32:  SUB.W           R10, SP, R2
1AEC36:  MOV             SP, R10
1AEC38:  MOVW            R2, #0x129D
1AEC3C:  ADD.W           R4, R3, #0x1220
1AEC40:  LDRB            R2, [R3,R2]
1AEC42:  CMP             R2, #2
1AEC44:  BNE             loc_1AED3A
1AEC46:  MOVS            R0, #0x64 ; 'd'
1AEC48:  ADD.W           R2, R9, R9,LSL#2
1AEC4C:  MUL.W           R0, R9, R0
1AEC50:  ADD.W           R1, R1, R2,LSL#2
1AEC54:  BIC.W           R1, R1, #7
1AEC58:  SUB.W           R5, SP, R1
1AEC5C:  ADDS            R0, #7
1AEC5E:  BIC.W           R0, R0, #7
1AEC62:  MOV             SP, R5
1AEC64:  SUB.W           R8, SP, R0
1AEC68:  MOV             SP, R8
1AEC6A:  LDR.W           R0, [R7,#var_78]
1AEC6E:  MOVW            R1, #0x11EC
1AEC72:  MOVW            R2, #0x13E4
1AEC76:  LDR             R0, [R0,R1]
1AEC78:  LDR.W           R1, [R7,#var_78]
1AEC7C:  LDR             R1, [R1,R2]
1AEC7E:  SUB             SP, SP, #0x10
1AEC80:  STRD.W          R0, R9, [SP,#0x98+var_98]
1AEC84:  MOV             R0, R8
1AEC86:  LDR.W           R6, [R7,#var_6C]
1AEC8A:  LDR.W           R2, [R7,#var_84]
1AEC8E:  ADD.W           R11, R6, #0x7C ; '|'
1AEC92:  STR             R1, [SP,#0x98+n]
1AEC94:  MOV             R1, R5
1AEC96:  MOV             R3, R11
1AEC98:  BLX             j_silk_find_LTP_FIX
1AEC9C:  ADD             SP, SP, #0x10
1AEC9E:  LDR.W           R0, [R7,#var_78]
1AECA2:  MOVW            R1, #0x13E4
1AECA6:  LDR.W           R9, [R7,#var_7C]
1AECAA:  MOVW            R2, #0x11EC
1AECAE:  LDR             R0, [R0,R1]
1AECB0:  LDR.W           R1, [R7,#var_78]
1AECB4:  LDR             R1, [R1,R2]
1AECB6:  LDR.W           R2, [R9]
1AECBA:  SUB             SP, SP, #0x18
1AECBC:  ADD.W           R3, R6, #0x18C
1AECC0:  STRD.W          R3, R8, [SP,#0xA0+var_A0]; int
1AECC4:  STRD.W          R5, R1, [SP,#0xA0+var_98]; int
1AECC8:  ADD.W           R5, R6, #0x50 ; 'P'
1AECCC:  STRD.W          R2, R0, [SP,#0xA0+n]; n
1AECD0:  MOVW            R0, #0x1284
1AECD4:  LDR.W           R1, [R7,#var_78]
1AECD8:  LDR.W           R2, [R7,#var_78]
1AECDC:  ADD             R1, R0; dest
1AECDE:  MOVW            R0, #0x1230
1AECE2:  ADDS            R3, R2, R0; int
1AECE4:  LDR.W           R0, [R7,#var_78]
1AECE8:  ADD.W           R2, R0, #0x12A0; int
1AECEC:  MOV             R0, R5; int
1AECEE:  BLX             j_silk_quant_LTP_gains
1AECF2:  ADD             SP, SP, #0x18
1AECF4:  LDR.W           R0, [R7,#var_78]
1AECF8:  MOV             R1, R6
1AECFA:  LDR             R2, [R7,#arg_0]
1AECFC:  MOV             R8, R6
1AECFE:  BLX             j_silk_LTP_scale_ctrl_FIX
1AED02:  LDR.W           R6, [R7,#var_78]
1AED06:  MOVW            R1, #0x11EC
1AED0A:  LDR.W           R0, [R7,#var_78]
1AED0E:  LDR             R2, [R4]
1AED10:  LDR             R0, [R0,R1]
1AED12:  LDR.W           R1, [R9]
1AED16:  SUB             SP, SP, #0x10
1AED18:  SUB.W           R3, R7, #-var_34
1AED1C:  STRD.W          R3, R0, [SP,#0x98+var_98]
1AED20:  STRD.W          R1, R2, [SP,#0x98+n]
1AED24:  MOV             R3, R11
1AED26:  LDR.W           R0, [R7,#var_80]
1AED2A:  SUB.W           R1, R0, R2,LSL#1
1AED2E:  MOV             R0, R10
1AED30:  MOV             R2, R5
1AED32:  BLX             j_silk_LTP_analysis_filter_FIX
1AED36:  ADD             SP, SP, #0x10
1AED38:  B               loc_1AEDBE
1AED3A:  STR.W           R10, [R7,#var_70]
1AED3E:  CMP.W           R9, #1
1AED42:  LDR.W           R10, [R7,#var_7C]
1AED46:  MOV             R11, R4
1AED48:  BLT             loc_1AED94
1AED4A:  LDR.W           R3, [R7,#var_78]
1AED4E:  MOVW            R2, #0x11EC
1AED52:  LDR.W           R5, [R7,#var_70]
1AED56:  MOVS            R4, #0
1AED58:  ADD.W           R8, R3, R2
1AED5C:  LDR             R1, [R3,R2]
1AED5E:  LDR.W           R2, [R7,#var_80]
1AED62:  SUB.W           R6, R2, R0,LSL#1
1AED66:  SUB.W           R2, R7, #-var_34
1AED6A:  ADDS            R3, R0, R1
1AED6C:  MOV             R0, R5
1AED6E:  MOV             R1, R6
1AED70:  LDR.W           R2, [R2,R4,LSL#2]
1AED74:  BLX             j_silk_scale_copy_vector16
1AED78:  LDR.W           R1, [R8]
1AED7C:  ADDS            R4, #1
1AED7E:  LDR.W           R0, [R11]
1AED82:  LDR.W           R9, [R10]
1AED86:  ADDS            R2, R0, R1
1AED88:  ADD.W           R6, R6, R1,LSL#1
1AED8C:  CMP             R4, R9
1AED8E:  ADD.W           R5, R5, R2,LSL#1
1AED92:  BLT             loc_1AED66
1AED94:  LDR.W           R4, [R7,#var_6C]
1AED98:  ADD.W           R1, R9, R9,LSL#2
1AED9C:  ADD.W           R0, R4, #0x50 ; 'P'; int
1AEDA0:  LSLS            R1, R1, #1; n
1AEDA2:  BLX             sub_22178C
1AEDA6:  MOVS            R0, #0
1AEDA8:  MOVW            R1, #0x1230
1AEDAC:  STR.W           R0, [R4,#0x18C]
1AEDB0:  MOV             R8, R4
1AEDB2:  LDR.W           R6, [R7,#var_78]
1AEDB6:  MOV             R4, R11
1AEDB8:  STR             R0, [R6,R1]
1AEDBA:  LDR.W           R10, [R7,#var_70]
1AEDBE:  MOVW            R0, #0x1238
1AEDC2:  MOV             R9, R6
1AEDC4:  LDR             R0, [R6,R0]
1AEDC6:  CBZ             R0, loc_1AEDD4
1AEDC8:  MOVW            R3, #0xD70A
1AEDCC:  MOV             R11, R8
1AEDCE:  MOVT            R3, #0xA3
1AEDD2:  B               loc_1AEEC0
1AEDD4:  STR.W           R4, [R7,#var_6C]
1AEDD8:  MOV             R11, R8
1AEDDA:  LDR.W           R0, [R11,#0x18C]
1AEDDE:  MOVW            R2, #0x5555
1AEDE2:  UXTH            R1, R0
1AEDE4:  MULS            R1, R2
1AEDE6:  LSRS            R1, R1, #0x10
1AEDE8:  SMLABT.W        R0, R2, R0, R1
1AEDEC:  ADD.W           R0, R0, #0x800
1AEDF0:  BLX             j_silk_log2lin
1AEDF4:  MOV             R6, R0
1AEDF6:  LDRSH.W         R0, [R11,#0x184]
1AEDFA:  MOVS            R1, #1
1AEDFC:  MOVW            R2, #0x2710
1AEE00:  ADD.W           R0, R0, R0,LSL#1
1AEE04:  ADD.W           R0, R0, #0x10000
1AEE08:  ADD.W           R1, R1, R0,ASR#15
1AEE0C:  SXTH            R0, R0
1AEE0E:  SMULBB.W        R0, R0, R2
1AEE12:  ASRS            R1, R1, #1
1AEE14:  MULS            R1, R2
1AEE16:  ADD.W           R0, R1, R0,ASR#16
1AEE1A:  CMP             R0, #0
1AEE1C:  MOV             R1, R0
1AEE1E:  IT MI
1AEE20:  NEGMI           R1, R0
1AEE22:  CLZ.W           R4, R1
1AEE26:  SUBS            R1, R4, #1
1AEE28:  LSL.W           R5, R0, R1
1AEE2C:  MOV             R0, #0x1FFFFFFF
1AEE30:  ASRS            R1, R5, #0x10
1AEE32:  BLX             sub_220A40
1AEE36:  CMP             R6, #0
1AEE38:  MOV             R2, R6
1AEE3A:  IT MI
1AEE3C:  NEGMI           R2, R6
1AEE3E:  SXTH            R1, R0
1AEE40:  CLZ.W           R2, R2
1AEE44:  SUBS            R3, R2, #1
1AEE46:  LSL.W           R3, R6, R3
1AEE4A:  UXTH            R6, R3
1AEE4C:  MULS            R6, R1
1AEE4E:  ASRS            R6, R6, #0x10
1AEE50:  SMLATB.W        R6, R3, R0, R6
1AEE54:  SMMUL.W         R5, R5, R6
1AEE58:  SUB.W           R3, R3, R5,LSL#3
1AEE5C:  UXTH            R5, R3
1AEE5E:  SMLABT.W        R0, R0, R3, R6
1AEE62:  MULS            R1, R5
1AEE64:  ADD.W           R0, R0, R1,ASR#16
1AEE68:  RSB.W           R1, R4, #1
1AEE6C:  ADD             R1, R2
1AEE6E:  ADDS            R1, #0x1C
1AEE70:  CMP             R1, #0xD
1AEE72:  BGT             loc_1AEE9A
1AEE74:  RSB.W           R1, R1, #0xE
1AEE78:  LDR.W           R4, [R7,#var_6C]
1AEE7C:  MOV             R2, #0x7FFFFFFF
1AEE80:  MOV.W           R3, #0x80000000
1AEE84:  LSRS            R2, R1
1AEE86:  ASRS            R3, R1
1AEE88:  CMP             R3, R2
1AEE8A:  BLE             loc_1AEEAE
1AEE8C:  CMP             R0, R3
1AEE8E:  MOV             R6, R3
1AEE90:  BGT             loc_1AEEBC
1AEE92:  CMP             R0, R2
1AEE94:  IT LT
1AEE96:  MOVLT           R0, R2
1AEE98:  B               loc_1AEEBA
1AEE9A:  SUB.W           R2, R1, #0xE
1AEE9E:  MOVS            R3, #0
1AEEA0:  CMP             R1, #0x2E ; '.'
1AEEA2:  IT LT
1AEEA4:  ASRLT.W         R3, R0, R2
1AEEA8:  LDR.W           R4, [R7,#var_6C]
1AEEAC:  B               loc_1AEEC0
1AEEAE:  CMP             R0, R2
1AEEB0:  MOV             R6, R2
1AEEB2:  BGT             loc_1AEEBC
1AEEB4:  CMP             R0, R3
1AEEB6:  IT LT
1AEEB8:  MOVLT           R0, R3
1AEEBA:  MOV             R6, R0
1AEEBC:  LSL.W           R3, R6, R1
1AEEC0:  SUB.W           R8, R7, #-var_68
1AEEC4:  MOV             R0, R9
1AEEC6:  MOV             R2, R10
1AEEC8:  MOV             R1, R8
1AEECA:  BLX             j_silk_find_LPC_FIX
1AEECE:  MOVW            R0, #0x1194
1AEED2:  ADD.W           R5, R9, R0
1AEED6:  ADD.W           R6, R11, #0x10
1AEEDA:  MOV             R0, R9
1AEEDC:  MOV             R2, R8
1AEEDE:  MOV             R3, R5
1AEEE0:  MOV             R1, R6
1AEEE2:  BLX             j_silk_process_NLSFs
1AEEE6:  LDR.W           R2, [R7,#var_7C]
1AEEEA:  MOVW            R0, #0x11EC
1AEEEE:  MOVW            R1, #0x13E4
1AEEF2:  LDR.W           R0, [R9,R0]
1AEEF6:  LDR.W           R1, [R9,R1]
1AEEFA:  LDR             R2, [R2]
1AEEFC:  LDR             R3, [R4]
1AEEFE:  SUB             SP, SP, #0x18
1AEF00:  SUB.W           R4, R7, #-var_44
1AEF04:  STRD.W          R4, R0, [SP,#0xA0+var_A0]
1AEF08:  STRD.W          R2, R3, [SP,#0xA0+var_98]
1AEF0C:  ADD.W           R0, R11, #0x190
1AEF10:  STR             R1, [SP,#0xA0+n]
1AEF12:  ADD.W           R1, R11, #0x1A0
1AEF16:  MOV             R2, R10
1AEF18:  MOV             R3, R6
1AEF1A:  BLX             j_silk_residual_energy_FIX
1AEF1E:  ADD             SP, SP, #0x18
1AEF20:  MOV             R0, R5; dest
1AEF22:  MOV             R1, R8; src
1AEF24:  MOVS            R2, #0x20 ; ' '; n
1AEF26:  BLX             j_memcpy
1AEF2A:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AEF34)
1AEF2C:  LDR.W           R1, [R7,#var_24]
1AEF30:  ADD             R0, PC; __stack_chk_guard_ptr
1AEF32:  LDR             R0, [R0]; __stack_chk_guard
1AEF34:  LDR             R0, [R0]
1AEF36:  SUBS            R0, R0, R1
1AEF38:  ITTTT EQ
1AEF3A:  SUBEQ.W         R4, R7, #-var_1C
1AEF3E:  MOVEQ           SP, R4
1AEF40:  POPEQ.W         {R8-R11}
1AEF44:  POPEQ           {R4-R7,PC}
1AEF46:  BLX             __stack_chk_fail
