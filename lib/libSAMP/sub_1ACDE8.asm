; =========================================================
; Game Engine Function: sub_1ACDE8
; Address            : 0x1ACDE8 - 0x1ACFF6
; =========================================================

1ACDE8:  PUSH            {R4-R7,LR}
1ACDEA:  ADD             R7, SP, #0xC
1ACDEC:  PUSH.W          {R8-R11}
1ACDF0:  SUB             SP, SP, #0x34
1ACDF2:  MOV             R6, R0
1ACDF4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1ACDFE)
1ACDF6:  MOV             R11, R3
1ACDF8:  LDR             R3, [R7,#arg_0]
1ACDFA:  ADD             R0, PC; __stack_chk_guard_ptr
1ACDFC:  CMP             R3, #4
1ACDFE:  LDR             R0, [R0]; __stack_chk_guard
1ACE00:  LDR             R0, [R0]
1ACE02:  STR.W           R0, [R7,#var_24]
1ACE06:  BNE             loc_1ACE50
1ACE08:  LDR             R0, =(silk_nb_cbk_searchs_stage3_ptr - 0x1ACE1A)
1ACE0A:  ADD.W           R3, R1, R11,LSL#3
1ACE0E:  LDR.W           R12, [R7,#arg_4]
1ACE12:  SUB.W           R4, SP, #0x58 ; 'X'
1ACE16:  ADD             R0, PC; silk_nb_cbk_searchs_stage3_ptr
1ACE18:  NEGS            R2, R2
1ACE1A:  STRD.W          R2, R4, [R7,#var_38]
1ACE1E:  LDR             R1, [R0]; silk_nb_cbk_searchs_stage3
1ACE20:  MOV             SP, R4
1ACE22:  LDRSB.W         R10, [R1,R12]
1ACE26:  SUB.W           R1, SP, #0x58 ; 'X'
1ACE2A:  STR.W           R1, [R7,#var_2C]
1ACE2E:  MOV             SP, R1
1ACE30:  CMP.W           R10, #0
1ACE34:  BLE.W           loc_1ACF5C
1ACE38:  LDR             R1, =(silk_CB_lags_stage3_ptr - 0x1ACE3E)
1ACE3A:  ADD             R1, PC; silk_CB_lags_stage3_ptr
1ACE3C:  LDR             R5, [R1]; silk_CB_lags_stage3
1ACE3E:  LDR             R1, =(silk_Lag_range_stage3_ptr - 0x1ACE44)
1ACE40:  ADD             R1, PC; silk_Lag_range_stage3_ptr
1ACE42:  LDR             R1, [R1]; silk_Lag_range_stage3
1ACE44:  ADD.W           R0, R1, R12,LSL#3
1ACE48:  STR.W           R0, [R7,#var_44]
1ACE4C:  MOVS            R0, #0x22 ; '"'
1ACE4E:  B               loc_1ACE8A
1ACE50:  SUB.W           R0, SP, #0x58 ; 'X'
1ACE54:  STR.W           R0, [R7,#var_2C]
1ACE58:  MOV             SP, R0
1ACE5A:  CMP             R3, #1
1ACE5C:  BLT.W           loc_1ACFD6
1ACE60:  LDR             R0, =(silk_Lag_range_stage3_10_ms_ptr - 0x1ACE76)
1ACE62:  ADD.W           R3, R1, R11,LSL#3
1ACE66:  NEGS            R1, R2
1ACE68:  LDR             R4, =(silk_CB_lags_stage3_10_ms_ptr - 0x1ACE7C)
1ACE6A:  STR.W           R1, [R7,#var_38]
1ACE6E:  SUB.W           R1, SP, #0x58 ; 'X'
1ACE72:  ADD             R0, PC; silk_Lag_range_stage3_10_ms_ptr
1ACE74:  MOV.W           R10, #0xC
1ACE78:  ADD             R4, PC; silk_CB_lags_stage3_10_ms_ptr
1ACE7A:  STR.W           R1, [R7,#var_34]
1ACE7E:  MOV             SP, R1
1ACE80:  LDR             R0, [R0]; silk_Lag_range_stage3_10_ms
1ACE82:  STR.W           R0, [R7,#var_44]
1ACE86:  MOVS            R0, #0xC
1ACE88:  LDR             R5, [R4]; silk_CB_lags_stage3_10_ms
1ACE8A:  STR.W           R0, [R7,#var_48]
1ACE8E:  ADD.W           R0, R10, R10,LSL#2
1ACE92:  MOV.W           R8, #0
1ACE96:  LSLS            R0, R0, #2
1ACE98:  STR.W           R0, [R7,#var_4C]
1ACE9C:  STRD.W          R10, R11, [R7,#var_40]
1ACEA0:  MOVS            R0, #1
1ACEA2:  LDR.W           R1, [R7,#var_44]
1ACEA6:  ORR.W           R0, R0, R8,LSL#1
1ACEAA:  LDRSB.W         R9, [R1,R8,LSL#1]
1ACEAE:  LDRSB           R4, [R1,R0]
1ACEB0:  SUB             SP, SP, #8
1ACEB2:  RSB.W           R0, R9, #1
1ACEB6:  LDR.W           R2, [R7,#var_2C]
1ACEBA:  ADD             R0, R4
1ACEBC:  STR             R0, [SP,#0x108+var_108]
1ACEBE:  LDR             R0, [R7,#arg_8]
1ACEC0:  STR             R0, [SP,#0x108+var_104]
1ACEC2:  LDR.W           R0, [R7,#var_38]
1ACEC6:  STR.W           R3, [R7,#var_28]
1ACECA:  ADD.W           R0, R3, R0,LSL#1
1ACECE:  SUB.W           R1, R0, R4,LSL#1
1ACED2:  MOV             R0, R3
1ACED4:  MOV             R3, R11
1ACED6:  BLX             j_celt_pitch_xcorr_c
1ACEDA:  ADD             SP, SP, #8
1ACEDC:  CMP             R9, R4
1ACEDE:  BGT             loc_1ACF02
1ACEE0:  SUB.W           R0, R4, R9
1ACEE4:  LDR.W           R1, [R7,#var_2C]
1ACEE8:  LDR.W           R2, [R7,#var_34]
1ACEEC:  ADD.W           R0, R1, R0,LSL#2
1ACEF0:  SUB.W           R1, R9, #1
1ACEF4:  LDR.W           R3, [R0],#-4
1ACEF8:  ADDS            R1, #1
1ACEFA:  STR.W           R3, [R2],#4
1ACEFE:  CMP             R1, R4
1ACF00:  BLT             loc_1ACEF4
1ACF02:  LDR.W           R0, [R7,#var_34]
1ACF06:  MOV             R2, R10
1ACF08:  MOV             R11, R6
1ACF0A:  STR.W           R5, [R7,#var_30]
1ACF0E:  SUB.W           R12, R0, R9,LSL#2
1ACF12:  MOV             R9, R5
1ACF14:  LDRSB.W         R4, [R9],#1
1ACF18:  MOV             R3, R6
1ACF1A:  SUBS            R2, #1
1ACF1C:  ADD.W           R6, R6, #0x14
1ACF20:  ADD.W           LR, R12, R4,LSL#2
1ACF24:  LDM.W           LR, {R0,R1,R4,R5,R10}
1ACF28:  STM.W           R3, {R0,R1,R4,R5,R10}
1ACF2C:  BNE             loc_1ACF14
1ACF2E:  LDR.W           R5, [R7,#var_30]
1ACF32:  MOV             R6, R11
1ACF34:  LDR.W           R0, [R7,#var_48]
1ACF38:  ADD.W           R8, R8, #1
1ACF3C:  LDR.W           R11, [R7,#var_3C]
1ACF40:  ADD             R5, R0
1ACF42:  LDR.W           R0, [R7,#var_4C]
1ACF46:  LDR.W           R3, [R7,#var_28]
1ACF4A:  ADD             R6, R0
1ACF4C:  LDR             R0, [R7,#arg_0]
1ACF4E:  LDR.W           R10, [R7,#var_40]
1ACF52:  ADD.W           R3, R3, R11,LSL#1
1ACF56:  CMP             R8, R0
1ACF58:  BNE             loc_1ACEA0
1ACF5A:  B               loc_1ACFD6
1ACF5C:  LDR             R1, =(silk_Lag_range_stage3_ptr - 0x1ACF68)
1ACF5E:  MOVS            R6, #0
1ACF60:  MOV.W           R8, #1
1ACF64:  ADD             R1, PC; silk_Lag_range_stage3_ptr
1ACF66:  LDR             R1, [R1]; silk_Lag_range_stage3
1ACF68:  ADD.W           R9, R1, R12,LSL#3
1ACF6C:  ORR.W           R0, R8, R6,LSL#1
1ACF70:  LDRSB.W         R10, [R9,R6,LSL#1]
1ACF74:  LDRSB.W         R4, [R9,R0]
1ACF78:  SUB             SP, SP, #8
1ACF7A:  RSB.W           R0, R10, #1
1ACF7E:  LDR.W           R2, [R7,#var_2C]
1ACF82:  ADD             R0, R4
1ACF84:  STR             R0, [SP,#0x108+var_108]
1ACF86:  LDR             R0, [R7,#arg_8]
1ACF88:  MOV             R5, R3
1ACF8A:  STR             R0, [SP,#0x108+var_104]
1ACF8C:  LDR.W           R0, [R7,#var_38]
1ACF90:  ADD.W           R0, R3, R0,LSL#1
1ACF94:  SUB.W           R1, R0, R4,LSL#1
1ACF98:  MOV             R0, R3
1ACF9A:  MOV             R3, R11
1ACF9C:  BLX             j_celt_pitch_xcorr_c
1ACFA0:  ADD             SP, SP, #8
1ACFA2:  CMP             R10, R4
1ACFA4:  BGT             loc_1ACFC8
1ACFA6:  SUB.W           R0, R4, R10
1ACFAA:  LDR.W           R1, [R7,#var_2C]
1ACFAE:  LDR.W           R2, [R7,#var_34]
1ACFB2:  ADD.W           R0, R1, R0,LSL#2
1ACFB6:  SUB.W           R1, R10, #1
1ACFBA:  LDR.W           R3, [R0],#-4
1ACFBE:  ADDS            R1, #1
1ACFC0:  STR.W           R3, [R2],#4
1ACFC4:  CMP             R1, R4
1ACFC6:  BLT             loc_1ACFBA
1ACFC8:  MOV             R3, R5
1ACFCA:  LDR             R0, [R7,#arg_0]
1ACFCC:  ADDS            R6, #1
1ACFCE:  ADD.W           R3, R3, R11,LSL#1
1ACFD2:  CMP             R6, R0
1ACFD4:  BNE             loc_1ACF6C
1ACFD6:  LDR             R0, =(__stack_chk_guard_ptr - 0x1ACFE0)
1ACFD8:  LDR.W           R1, [R7,#var_24]
1ACFDC:  ADD             R0, PC; __stack_chk_guard_ptr
1ACFDE:  LDR             R0, [R0]; __stack_chk_guard
1ACFE0:  LDR             R0, [R0]
1ACFE2:  SUBS            R0, R0, R1
1ACFE4:  ITTTT EQ
1ACFE6:  SUBEQ.W         R4, R7, #-var_1C
1ACFEA:  MOVEQ           SP, R4
1ACFEC:  POPEQ.W         {R8-R11}
1ACFF0:  POPEQ           {R4-R7,PC}
1ACFF2:  BLX             __stack_chk_fail
