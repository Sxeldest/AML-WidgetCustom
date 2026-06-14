; =========================================================
; Game Engine Function: silk_find_pitch_lags_FIX
; Address            : 0x1AB94C - 0x1ABCB6
; =========================================================

1AB94C:  PUSH            {R4-R7,LR}
1AB94E:  ADD             R7, SP, #0xC
1AB950:  PUSH.W          {R8-R11}
1AB954:  SUB             SP, SP, #0xE4
1AB956:  MOV             R10, R0
1AB958:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AB966)
1AB95A:  STRD.W          R2, R1, [R7,#var_F4]
1AB95E:  MOVW            R4, #0x11F4
1AB962:  ADD             R0, PC; __stack_chk_guard_ptr
1AB964:  MOV             R5, R3
1AB966:  MOVW            R1, #0x11F0
1AB96A:  MOVW            R2, #0x11C4
1AB96E:  LDR             R0, [R0]; __stack_chk_guard
1AB970:  MOV             R6, SP
1AB972:  LDR             R0, [R0]
1AB974:  STR.W           R0, [R7,#var_24]
1AB978:  MOVW            R0, #0x11E8
1AB97C:  LDR.W           R3, [R10,R4]
1AB980:  LDR.W           R0, [R10,R0]
1AB984:  LDR.W           R1, [R10,R1]
1AB988:  ADD             R0, R3
1AB98A:  LDR.W           R2, [R10,R2]
1AB98E:  ADD             R0, R1
1AB990:  STRD.W          R0, R5, [R7,#var_FC]
1AB994:  ADD.W           R0, R5, R0,LSL#1
1AB998:  SUB.W           R8, R0, R2,LSL#1
1AB99C:  MOVS            R0, #7
1AB99E:  ADD.W           R0, R0, R2,LSL#1
1AB9A2:  BIC.W           R0, R0, #7
1AB9A6:  SUB.W           R11, SP, R0
1AB9AA:  MOV             SP, R11
1AB9AC:  MOV             R0, R11
1AB9AE:  MOV             R1, R8
1AB9B0:  MOVS            R2, #1
1AB9B2:  BLX             j_silk_apply_sine_window
1AB9B6:  LDR.W           R9, [R10,R4]
1AB9BA:  MOVW            R0, #0x11C4
1AB9BE:  LDR.W           R0, [R10,R0]
1AB9C2:  ADD.W           R8, R8, R9,LSL#1
1AB9C6:  SUB.W           R4, R0, R9,LSL#1
1AB9CA:  ADD.W           R5, R11, R9,LSL#1
1AB9CE:  LSLS            R2, R4, #1; n
1AB9D0:  MOV             R1, R8; src
1AB9D2:  MOV             R0, R5; dest
1AB9D4:  BLX             j_memcpy
1AB9D8:  ADD.W           R0, R5, R4,LSL#1
1AB9DC:  ADD.W           R1, R8, R4,LSL#1
1AB9E0:  MOVS            R2, #2
1AB9E2:  MOV             R3, R9
1AB9E4:  BLX             j_silk_apply_sine_window
1AB9E8:  MOVW            R0, #0x11C4
1AB9EC:  MOVW            R8, #0x1228
1AB9F0:  LDR.W           R3, [R10,R0]; int
1AB9F4:  LDR.W           R0, [R10,R8]
1AB9F8:  LDR             R1, [R7,#arg_0]
1AB9FA:  SUB             SP, SP, #8
1AB9FC:  SUB.W           R4, R7, #-var_68
1ABA00:  ADDS            R0, #1
1ABA02:  STRD.W          R0, R1, [SP,#0x108+var_108]; int
1ABA06:  SUB.W           R1, R7, #-var_EC; int
1ABA0A:  MOV             R2, R11; src
1ABA0C:  MOV             R0, R4; int
1ABA0E:  MOV             R11, R10
1ABA10:  BLX             j_silk_autocorr
1ABA14:  ADD             SP, SP, #8
1ABA16:  LDR.W           R0, [R7,#var_68]
1ABA1A:  ASRS            R1, R0, #0x10
1ABA1C:  UXTH            R2, R0
1ABA1E:  ADD.W           R1, R1, R1,LSL#5
1ABA22:  LSLS            R2, R2, #5
1ABA24:  ADD.W           R1, R0, R1,LSL#1
1ABA28:  UXTAH.W         R0, R2, R0
1ABA2C:  LSLS            R0, R0, #1
1ABA2E:  ADD.W           R0, R1, R0,LSR#16
1ABA32:  MOV             R1, R4
1ABA34:  ADDS            R0, #1
1ABA36:  STR.W           R0, [R7,#var_68]
1ABA3A:  LDR.W           R2, [R11,R8]
1ABA3E:  SUB.W           R0, R7, #-var_88
1ABA42:  BLX             j_silk_schur
1ABA46:  MOVS            R1, #1
1ABA48:  CMP             R0, #1
1ABA4A:  IT GT
1ABA4C:  MOVGT           R1, R0
1ABA4E:  CMP             R1, #0
1ABA50:  MOV             R0, R1
1ABA52:  IT MI
1ABA54:  NEGMI           R0, R1
1ABA56:  CLZ.W           R9, R0
1ABA5A:  SUB.W           R0, R9, #1
1ABA5E:  LSL.W           R5, R1, R0
1ABA62:  MOV             R0, #0x1FFFFFFF
1ABA66:  ASRS            R1, R5, #0x10
1ABA68:  BLX             sub_220A40
1ABA6C:  LDR.W           R1, [R7,#var_68]
1ABA70:  ADD             R8, R11
1ABA72:  CMP             R1, #0
1ABA74:  MOV             R2, R1
1ABA76:  IT MI
1ABA78:  NEGMI           R2, R1
1ABA7A:  LDR.W           R10, [R7,#var_F0]
1ABA7E:  CLZ.W           R2, R2
1ABA82:  SUBS            R3, R2, #1
1ABA84:  LSLS            R1, R3
1ABA86:  SXTH            R3, R0
1ABA88:  UXTH            R4, R1
1ABA8A:  MULS            R4, R3
1ABA8C:  ASRS            R4, R4, #0x10
1ABA8E:  SMLATB.W        R4, R1, R0, R4
1ABA92:  SMMUL.W         R5, R4, R5
1ABA96:  SUB.W           R1, R1, R5,LSL#3
1ABA9A:  UXTH            R5, R1
1ABA9C:  SMLABT.W        R0, R0, R1, R4
1ABAA0:  MULS            R3, R5
1ABAA2:  RSB.W           R1, R9, #1
1ABAA6:  ADD             R1, R2
1ABAA8:  ADD.W           R2, R1, #0x1C
1ABAAC:  CMP             R2, #0xF
1ABAAE:  ADD.W           R0, R0, R3,ASR#16
1ABAB2:  BGT             loc_1ABAD6
1ABAB4:  RSB.W           R1, R2, #0x10
1ABAB8:  MOV             R2, #0x7FFFFFFF
1ABABC:  MOV.W           R3, #0x80000000
1ABAC0:  LSRS            R2, R1
1ABAC2:  ASRS            R3, R1
1ABAC4:  CMP             R3, R2
1ABAC6:  BLE             loc_1ABAE6
1ABAC8:  CMP             R0, R3
1ABACA:  MOV             R5, R3
1ABACC:  BGT             loc_1ABAF4
1ABACE:  CMP             R0, R2
1ABAD0:  IT LT
1ABAD2:  MOVLT           R0, R2
1ABAD4:  B               loc_1ABAF2
1ABAD6:  SUB.W           R3, R2, #0x10
1ABADA:  MOVS            R1, #0
1ABADC:  CMP             R2, #0x30 ; '0'
1ABADE:  IT LT
1ABAE0:  ASRLT.W         R1, R0, R3
1ABAE4:  B               loc_1ABAF8
1ABAE6:  CMP             R0, R2
1ABAE8:  MOV             R5, R2
1ABAEA:  BGT             loc_1ABAF4
1ABAEC:  CMP             R0, R3
1ABAEE:  IT LT
1ABAF0:  MOVLT           R0, R3
1ABAF2:  MOV             R5, R0
1ABAF4:  LSL.W           R1, R5, R1
1ABAF8:  STR.W           R1, [R10,#0x188]
1ABAFC:  SUB.W           R9, R7, #-var_C8
1ABB00:  LDR.W           R2, [R8]
1ABB04:  SUB.W           R1, R7, #-var_88
1ABB08:  MOVW            R4, #0x8000
1ABB0C:  MOV             R0, R9
1ABB0E:  MOVT            R4, #0xFFFF
1ABB12:  BLX             j_silk_k2a
1ABB16:  LDR.W           R1, [R8]
1ABB1A:  CMP             R1, #1
1ABB1C:  BLT             loc_1ABB46
1ABB1E:  SUB.W           R12, R7, #-var_E8
1ABB22:  MOVS            R0, #0
1ABB24:  MOVW            R2, #0x7FFF
1ABB28:  LDR.W           R5, [R9,R0,LSL#2]
1ABB2C:  ASRS            R3, R5, #0xC
1ABB2E:  CMP             R3, R4
1ABB30:  MOV             R3, R4
1ABB32:  IT GT
1ABB34:  ASRGT           R3, R5, #0xC
1ABB36:  CMP             R3, R2
1ABB38:  IT GE
1ABB3A:  MOVGE           R3, R2
1ABB3C:  STRH.W          R3, [R12,R0,LSL#1]
1ABB40:  ADDS            R0, #1
1ABB42:  CMP             R0, R1
1ABB44:  BLT             loc_1ABB28
1ABB46:  SUB.W           R5, R7, #-var_E8
1ABB4A:  MOVW            R2, #0xFD71
1ABB4E:  MOV             R0, R5
1ABB50:  BLX             j_silk_bwexpander
1ABB54:  MOVW            R9, #0x13E4
1ABB58:  LDR.W           R1, [R8]
1ABB5C:  LDR.W           R0, [R11,R9]
1ABB60:  STRD.W          R1, R0, [SP,#0x100+var_108]!
1ABB64:  LDRD.W          R1, R0, [R7,#var_F8]
1ABB68:  MOV             R2, R5
1ABB6A:  LDR.W           R3, [R7,#var_FC]
1ABB6E:  BLX             j_silk_LPC_analysis_filter
1ABB72:  ADD             SP, SP, #8
1ABB74:  MOVW            R0, #0x129D
1ABB78:  LDRB.W          R1, [R11,R0]
1ABB7C:  CBZ             R1, loc_1ABB88
1ABB7E:  MOVW            R1, #0x1238
1ABB82:  LDR.W           R1, [R11,R1]
1ABB86:  CBZ             R1, loc_1ABBAC
1ABB88:  MOVS            R0, #0
1ABB8A:  MOVW            R1, #0x129C
1ABB8E:  STRD.W          R0, R0, [R10,#0x7C]
1ABB92:  STRD.W          R0, R0, [R10,#0x84]
1ABB96:  STRB.W          R0, [R11,R1]
1ABB9A:  MOVW            R1, #0x129A
1ABB9E:  STRH.W          R0, [R11,R1]
1ABBA2:  MOVW            R1, #0x21B0
1ABBA6:  STR.W           R0, [R11,R1]
1ABBAA:  B               loc_1ABC96
1ABBAC:  ADD             R0, R11
1ABBAE:  STR.W           R0, [R7,#var_F8]
1ABBB2:  MOVW            R1, #0x122C
1ABBB6:  ADD.W           R12, R11, R9
1ABBBA:  MOV.W           R0, #0x11C0
1ABBBE:  LDR.W           LR, [R11,R1]
1ABBC2:  MOVW            R1, #0x11BD
1ABBC6:  LDRSB.W         R9, [R11,R1]
1ABBCA:  MOVW            R1, #0x1268
1ABBCE:  MOV.W           R2, #0x11E0
1ABBD2:  MOVW            R3, #0x1224
1ABBD6:  MOVW            R5, #0x11E4
1ABBDA:  LDR.W           R10, [R11,R0]
1ABBDE:  MOVW            R0, #0x11B4
1ABBE2:  LDRSH.W         R1, [R11,R1]
1ABBE6:  LDR.W           R0, [R11,R0]
1ABBEA:  LDR.W           R2, [R11,R2]
1ABBEE:  LDR.W           R3, [R11,R3]
1ABBF2:  LDR.W           R5, [R11,R5]
1ABBF6:  LDR.W           R8, [R8]
1ABBFA:  LDR.W           R12, [R12]
1ABBFE:  SUB             SP, SP, #0x20 ; ' '
1ABC00:  STR.W           R12, [SP,#0x120+var_104]
1ABC04:  STR             R5, [SP,#0x120+var_108]
1ABC06:  MOVW            R5, #0xFB34
1ABC0A:  STR             R3, [SP,#0x120+var_10C]
1ABC0C:  MOVS            R3, #0
1ABC0E:  STR             R2, [SP,#0x120+var_110]
1ABC10:  MOV.W           R2, R8,LSL#16
1ABC14:  SUB.W           R2, R3, R2,ASR#11
1ABC18:  LSLS            R3, R0, #0x10
1ABC1A:  SUB.W           R2, R2, R3,ASR#14
1ABC1E:  SXTH            R0, R0
1ABC20:  MOVW            R3, #0xCCCE
1ABC24:  MOVT            R5, #0xFFFF
1ABC28:  MULS            R0, R3
1ABC2A:  MOV.W           R3, R9,ASR#1
1ABC2E:  STRD.W          R10, LR, [SP,#0x120+var_11C]
1ABC32:  ADD.W           R0, R2, R0,ASR#16
1ABC36:  MOVW            R2, #0xF99B
1ABC3A:  MULS            R2, R1
1ABC3C:  SMLABB.W        R0, R3, R5, R0
1ABC40:  MOVW            R3, #0x21B0
1ABC44:  ADD             R3, R11
1ABC46:  STR             R3, [SP,#0x120+var_120]
1ABC48:  RSB.W           R1, R1, R2,ASR#16
1ABC4C:  ADD             R0, R1
1ABC4E:  MOVW            R1, #0x1333
1ABC52:  ADD             R0, R1
1ABC54:  CMP             R0, R4
1ABC56:  IT GT
1ABC58:  MOVGT           R4, R0
1ABC5A:  MOVW            R0, #0x7FFF
1ABC5E:  CMP             R4, R0
1ABC60:  IT GE
1ABC62:  MOVGE           R4, R0
1ABC64:  MOVW            R0, #0x129A
1ABC68:  ADD.W           R2, R11, R0
1ABC6C:  MOVW            R0, #0x129C
1ABC70:  ADD.W           R3, R11, R0
1ABC74:  LDR.W           R0, [R7,#var_F0]
1ABC78:  STR             R4, [SP,#0x120+var_114]
1ABC7A:  ADD.W           R1, R0, #0x7C ; '|'
1ABC7E:  LDR.W           R0, [R7,#var_F4]
1ABC82:  BLX             j_silk_pitch_analysis_core
1ABC86:  ADD             SP, SP, #0x20 ; ' '
1ABC88:  MOVS            R1, #1
1ABC8A:  CMP             R0, #0
1ABC8C:  IT EQ
1ABC8E:  MOVEQ           R1, #2
1ABC90:  LDR.W           R0, [R7,#var_F8]
1ABC94:  STRB            R1, [R0]
1ABC96:  LDR             R0, =(__stack_chk_guard_ptr - 0x1ABCA0)
1ABC98:  LDR.W           R1, [R7,#var_24]
1ABC9C:  ADD             R0, PC; __stack_chk_guard_ptr
1ABC9E:  LDR             R0, [R0]; __stack_chk_guard
1ABCA0:  LDR             R0, [R0]
1ABCA2:  SUBS            R0, R0, R1
1ABCA4:  ITTTT EQ
1ABCA6:  SUBEQ.W         R4, R7, #-var_1C
1ABCAA:  MOVEQ           SP, R4
1ABCAC:  POPEQ.W         {R8-R11}
1ABCB0:  POPEQ           {R4-R7,PC}
1ABCB2:  BLX             __stack_chk_fail
