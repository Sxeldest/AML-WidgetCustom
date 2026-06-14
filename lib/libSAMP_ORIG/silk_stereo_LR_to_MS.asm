; =========================================================
; Game Engine Function: silk_stereo_LR_to_MS
; Address            : 0xCBB7C - 0xCC3C6
; =========================================================

CBB7C:  PUSH            {R4-R7,LR}
CBB7E:  ADD             R7, SP, #0xC
CBB80:  PUSH.W          {R8-R11}
CBB84:  SUB             SP, SP, #0x4C
CBB86:  STR.W           R3, [R7,#var_3C]
CBB8A:  MOV             R9, R0
CBB8C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xCBB9E)
CBB90:  MOV.W           LR, #7
CBB94:  LDR             R3, [R7,#arg_18]
CBB96:  MOVW            R10, #0x8000
CBB9A:  ADD             R0, PC; __stack_chk_guard_ptr
CBB9C:  STR.W           R2, [R7,#var_60]
CBBA0:  ADD.W           R12, R3, #2
CBBA4:  MOVT            R10, #0xFFFF
CBBA8:  LDR             R0, [R0]; __stack_chk_guard
CBBAA:  ADD.W           R2, LR, R12,LSL#1
CBBAE:  BIC.W           R2, R2, #7
CBBB2:  SUB.W           R11, SP, R2
CBBB6:  SUBS            R2, R1, #4
CBBB8:  LDR             R0, [R0]
CBBBA:  STR.W           R0, [R7,#var_24]
CBBBE:  STR.W           R1, [R7,#var_5C]
CBBC2:  MOV             SP, R11
CBBC4:  CMP.W           R3, #0xFFFFFFFF
CBBC8:  BLT             loc_CBC0E
CBBCA:  LDR.W           R0, [R7,#var_60]
CBBCE:  MOVS            R6, #0
CBBD0:  MOVW            R5, #0x7FFF
CBBD4:  SUB.W           R8, R0, #4
CBBD8:  LDRSH.W         R4, [R2,R6,LSL#1]
CBBDC:  LDRSH.W         R0, [R8,R6,LSL#1]
CBBE0:  ADDS            R1, R0, R4
CBBE2:  SUBS            R0, R4, R0
CBBE4:  AND.W           R3, R1, #1
CBBE8:  ADD.W           R1, R3, R1,LSR#1
CBBEC:  STRH.W          R1, [R2,R6,LSL#1]
CBBF0:  AND.W           R1, R0, #1
CBBF4:  ADD.W           R0, R1, R0,ASR#1
CBBF8:  CMP             R0, R10
CBBFA:  IT LE
CBBFC:  MOVLE           R0, R10
CBBFE:  CMP             R0, R5
CBC00:  IT GE
CBC02:  MOVGE           R0, R5
CBC04:  STRH.W          R0, [R11,R6,LSL#1]
CBC08:  ADDS            R6, #1
CBC0A:  CMP             R6, R12
CBC0C:  BLT             loc_CBBD8
CBC0E:  LDRD.W          R8, R6, [R7,#arg_8]
CBC12:  MOV             R1, R11
CBC14:  LDR.W           R0, [R9,#4]
CBC18:  STR             R0, [R2]
CBC1A:  LDR             R4, [R7,#arg_18]
CBC1C:  LDR.W           R11, [R9,#8]
CBC20:  STR.W           R11, [R1]
CBC24:  LDR.W           R0, [R2,R4,LSL#1]
CBC28:  STR.W           R0, [R9,#4]
CBC2C:  LDR.W           R0, [R1,R4,LSL#1]
CBC30:  STR.W           R1, [R7,#var_64]
CBC34:  STR.W           R0, [R9,#8]
CBC38:  ADD.W           R0, LR, R4,LSL#1
CBC3C:  BIC.W           R0, R0, #7
CBC40:  SUB.W           R1, SP, R0
CBC44:  MOV             SP, R1
CBC46:  SUB.W           R3, SP, R0
CBC4A:  MOV             SP, R3
CBC4C:  MOV.W           LR, R4,LSL#1
CBC50:  CMP             R4, #0
CBC52:  STR.W           R9, [R7,#var_4C]
CBC56:  STR.W           R3, [R7,#var_38]
CBC5A:  BLE             loc_CBD14
CBC5C:  MOV             R6, R3
CBC5E:  LDRH            R2, [R2]
CBC60:  LDR.W           R3, [R7,#var_5C]
CBC64:  MOV             R0, R4
CBC66:  MOV.W           R8, R11,LSR#16
CBC6A:  MOV.W           R10, #1
CBC6E:  MOV             R4, R1
CBC70:  MOV             R5, R0
CBC72:  LDRSH.W         R12, [R3]
CBC76:  SUBS            R5, #1
CBC78:  LDRSH.W         R9, [R3,#-2]
CBC7C:  ADD.W           R3, R3, #2
CBC80:  SXTAH.W         R2, R12, R2
CBC84:  ADD.W           R2, R2, R9,LSL#1
CBC88:  ADD.W           R0, R10, R2,ASR#1
CBC8C:  MOV.W           R2, R0,ASR#1
CBC90:  STRH.W          R2, [R4],#2
CBC94:  UXTH.W          R2, R9
CBC98:  SUB.W           R0, R2, R0,ASR#1
CBC9C:  STRH.W          R0, [R6],#2
CBCA0:  BNE             loc_CBC72
CBCA2:  ADD.W           R0, LR, #7
CBCA6:  BIC.W           R0, R0, #7
CBCAA:  SUB.W           R2, SP, R0
CBCAE:  MOV             SP, R2
CBCB0:  SUB.W           R10, SP, R0
CBCB4:  MOV             SP, R10
CBCB6:  LDR             R4, [R7,#arg_18]
CBCB8:  CMP             R4, #1
CBCBA:  BLT             loc_CBD2A
CBCBC:  LDR.W           R0, [R7,#var_64]
CBCC0:  MOV             R3, R10
CBCC2:  MOV.W           LR, #1
CBCC6:  STR.W           R3, [R7,#var_40]
CBCCA:  ADD.W           R10, R0, #4
CBCCE:  MOV             R5, R3
CBCD0:  MOV             R6, R2
CBCD2:  MOV             R3, R4
CBCD4:  LDRSH.W         R9, [R10],#2
CBCD8:  MOV             R12, R8
CBCDA:  SXTH.W          R0, R12
CBCDE:  SUBS            R3, #1
CBCE0:  SXTAH.W         R8, R9, R11
CBCE4:  MOV             R11, R12
CBCE6:  ADD.W           R0, R8, R0,LSL#1
CBCEA:  UXTH.W          R8, R9
CBCEE:  ADD.W           R0, LR, R0,ASR#1
CBCF2:  MOV.W           R4, R0,ASR#1
CBCF6:  SUB.W           R0, R12, R0,ASR#1
CBCFA:  STRH.W          R4, [R6],#2
CBCFE:  STRH.W          R0, [R5],#2
CBD02:  BNE             loc_CBCD4
CBD04:  LDR.W           R9, [R7,#var_4C]
CBD08:  LDRD.W          R8, R6, [R7,#arg_8]
CBD0C:  LDR             R4, [R7,#arg_18]
CBD0E:  LDR.W           R10, [R7,#var_40]
CBD12:  B               loc_CBD32
CBD14:  ADD.W           R0, LR, #7
CBD18:  BIC.W           R0, R0, #7
CBD1C:  SUB.W           R2, SP, R0
CBD20:  MOV             SP, R2
CBD22:  SUB.W           R10, SP, R0
CBD26:  MOV             SP, R10
CBD28:  B               loc_CBD32
CBD2A:  LDR.W           R9, [R7,#var_4C]
CBD2E:  LDRD.W          R8, R6, [R7,#arg_8]
CBD32:  LDR             R3, [R7,#arg_14]
CBD34:  SMULBB.W        R0, R6, R6
CBD38:  ADD.W           R5, R3, R3,LSL#2
CBD3C:  MOVW            R3, #0x28F
CBD40:  CMP.W           R4, R5,LSL#1
CBD44:  UXTH            R6, R0
CBD46:  IT EQ
CBD48:  MOVEQ.W         R3, #0x148
CBD4C:  LSRS            R0, R0, #0x10
CBD4E:  MULS            R0, R3
CBD50:  MULS            R6, R3
CBD52:  SUB             SP, SP, #8
CBD54:  ADD.W           R6, R0, R6,LSR#16
CBD58:  ADD.W           R3, R9, #0xC
CBD5C:  SUB.W           R0, R7, #-var_30
CBD60:  STRD.W          R4, R6, [SP,#0x70+var_70]
CBD64:  BLX             j_silk_stereo_find_predictor
CBD68:  ADD             SP, SP, #8
CBD6A:  MOV             R1, R0
CBD6C:  STR.W           R0, [R7,#var_2C]
CBD70:  STR.W           R1, [R7,#var_48]
CBD74:  SUB             SP, SP, #8
CBD76:  MOV             R0, R6
CBD78:  LDR.W           R1, [R7,#var_38]
CBD7C:  STR.W           R0, [R7,#var_40]
CBD80:  ADD.W           R3, R9, #0x14
CBD84:  SUB.W           R0, R7, #-var_34
CBD88:  MOV             R2, R10
CBD8A:  STR             R4, [SP,#0x70+var_70]
CBD8C:  STR             R6, [SP,#0x70+var_6C]
CBD8E:  BLX             j_silk_stereo_find_predictor
CBD92:  ADD             SP, SP, #8
CBD94:  STR.W           R0, [R7,#var_38]
CBD98:  CMP.W           R4, R5,LSL#1
CBD9C:  MOV.W           R0, #0x258
CBDA0:  STR.W           R5, [R7,#var_44]
CBDA4:  IT EQ
CBDA6:  MOVEQ.W         R0, #0x4B0
CBDAA:  SUB.W           R10, R8, R0
CBDAE:  CMP.W           R10, #1
CBDB2:  IT LE
CBDB4:  MOVLE.W         R10, #1
CBDB8:  CMP.W           R10, #0
CBDBC:  MOV             R0, R10
CBDBE:  IT MI
CBDC0:  RSBMI.W         R0, R10, #0
CBDC4:  LDR.W           R1, [R7,#var_34]
CBDC8:  CLZ.W           R4, R0
CBDCC:  SUBS            R0, R4, #1
CBDCE:  LSL.W           R5, R10, R0
CBDD2:  LDRSH.W         R0, [R7,#var_30]
CBDD6:  ADD.W           R0, R0, R0,LSL#1
CBDDA:  ADD             R1, R0
CBDDC:  MOVW            R0, #0x8000
CBDE0:  CMP.W           R1, #0x10000
CBDE4:  MOVT            R0, #0xFFFF
CBDE8:  IT GE
CBDEA:  MOVGE.W         R1, #0x10000
CBDEE:  SUB.W           R0, R0, #0xC8000
CBDF2:  ADD.W           R8, R1, R1,LSL#1
CBDF6:  STR.W           R1, [R7,#var_50]
CBDFA:  ADD.W           R1, R8, #0xD0000
CBDFE:  SUBS.W          R0, R0, R8
CBE02:  IT LT
CBE04:  MOVLT           R0, R1
CBE06:  CLZ.W           R6, R0
CBE0A:  SUBS            R0, R6, #1
CBE0C:  LSL.W           R11, R1, R0
CBE10:  MOV             R0, #0x1FFFFFFF
CBE14:  MOV.W           R1, R11,ASR#16
CBE18:  BLX             sub_108848
CBE1C:  UXTH            R1, R5
CBE1E:  SXTH            R2, R0
CBE20:  MULS            R1, R2
CBE22:  ASRS            R1, R1, #0x10
CBE24:  SMLABT.W        R1, R0, R5, R1
CBE28:  SMMUL.W         R3, R11, R1
CBE2C:  SUB.W           R3, R5, R3,LSL#3
CBE30:  SMLABT.W        R0, R0, R3, R1
CBE34:  UXTH            R1, R3
CBE36:  MULS            R1, R2
CBE38:  MOV.W           R3, #0x7D0
CBE3C:  ADD.W           R0, R0, R1,ASR#16
CBE40:  RSB.W           R1, R6, #1
CBE44:  ADD             R1, R4
CBE46:  MOV.W           R6, #0x258
CBE4A:  ADD.W           R2, R1, #9
CBE4E:  LDR             R1, [R7,#arg_14]
CBE50:  CMP.W           R2, #0xFFFFFFFF
CBE54:  SXTH            R1, R1
CBE56:  SMLABB.W        R11, R1, R6, R3
CBE5A:  LDR.W           R1, [R7,#var_38]
CBE5E:  STR.W           R1, [R7,#var_28]
CBE62:  BLE             loc_CBE70
CBE64:  MOVS            R1, #0
CBE66:  CMP             R2, #0x20 ; ' '
CBE68:  IT LT
CBE6A:  ASRLT.W         R1, R0, R2
CBE6E:  B               loc_CBEA2
CBE70:  NEGS            R1, R2
CBE72:  MOV             R2, #0x7FFFFFFF
CBE76:  MOV.W           R3, #0x80000000
CBE7A:  LSRS            R2, R1
CBE7C:  ASRS            R3, R1
CBE7E:  CMP             R3, R2
CBE80:  BLE             loc_CBE90
CBE82:  CMP             R0, R3
CBE84:  MOV             R5, R3
CBE86:  BGT             loc_CBE9E
CBE88:  CMP             R0, R2
CBE8A:  IT LT
CBE8C:  MOVLT           R0, R2
CBE8E:  B               loc_CBE9C
CBE90:  CMP             R0, R2
CBE92:  MOV             R5, R2
CBE94:  BGT             loc_CBE9E
CBE96:  CMP             R0, R3
CBE98:  IT LT
CBE9A:  MOVLT           R0, R3
CBE9C:  MOV             R5, R0
CBE9E:  LSL.W           R1, R5, R1
CBEA2:  LDRD.W          R4, R5, [R7,#arg_0]
CBEA6:  CMP             R1, R11
CBEA8:  LDR             R6, [R7,#arg_10]
CBEAA:  STR             R1, [R5]
CBEAC:  BGE             loc_CBF42
CBEAE:  ADD.W           R0, R8, #0x10000
CBEB2:  SXTH.W          R1, R11
CBEB6:  SUB.W           R8, R10, R11
CBEBA:  UXTH            R2, R0
CBEBC:  MULS            R2, R1
CBEBE:  RSB.W           R1, R11, R8,LSL#1
CBEC2:  CMP             R1, #0
CBEC4:  MOV             R3, R1
CBEC6:  IT MI
CBEC8:  NEGMI           R3, R1
CBECA:  CLZ.W           R4, R3
CBECE:  ASRS            R2, R2, #0x10
CBED0:  SMLATB.W        R0, R0, R11, R2
CBED4:  SUBS            R2, R4, #1
CBED6:  LSL.W           R5, R1, R2
CBEDA:  CMP             R0, #0
CBEDC:  MOV             R1, R0
CBEDE:  IT MI
CBEE0:  NEGMI           R1, R0
CBEE2:  CLZ.W           R6, R1
CBEE6:  SUBS            R1, R6, #1
CBEE8:  LSL.W           R9, R0, R1
CBEEC:  MOV             R0, #0x1FFFFFFF
CBEF0:  MOV.W           R1, R9,ASR#16
CBEF4:  BLX             sub_108848
CBEF8:  UXTH            R1, R5
CBEFA:  SXTH            R2, R0
CBEFC:  MULS            R1, R2
CBEFE:  ASRS            R1, R1, #0x10
CBF00:  SMLABT.W        R1, R0, R5, R1
CBF04:  SMMUL.W         R3, R1, R9
CBF08:  SUB.W           R3, R5, R3,LSL#3
CBF0C:  UXTH            R5, R3
CBF0E:  SMLABT.W        R0, R0, R3, R1
CBF12:  MULS            R2, R5
CBF14:  RSB.W           R1, R6, #1
CBF18:  LDR             R5, [R7,#arg_4]
CBF1A:  ADD             R1, R4
CBF1C:  STRD.W          R11, R8, [R5]
CBF20:  ADD.W           R0, R0, R2,ASR#16
CBF24:  ADD.W           R2, R1, #0xC
CBF28:  CMP.W           R2, #0xFFFFFFFF
CBF2C:  BLE             loc_CBF4E
CBF2E:  MOVS            R1, #0
CBF30:  CMP             R2, #0x20 ; ' '
CBF32:  IT LT
CBF34:  ASRLT.W         R1, R0, R2
CBF38:  LDR.W           R9, [R7,#var_4C]
CBF3C:  LDR             R4, [R7,#arg_0]
CBF3E:  LDR             R6, [R7,#arg_10]
CBF40:  B               loc_CBF8E
CBF42:  SUB.W           R0, R10, R1
CBF46:  MOV.W           R1, #0x4000
CBF4A:  STR             R0, [R5,#4]
CBF4C:  B               loc_CBF9E
CBF4E:  RSB.W           R12, R2, #0
CBF52:  LDR.W           R9, [R7,#var_4C]
CBF56:  LDR             R4, [R7,#arg_0]
CBF58:  MOV             R2, #0x7FFFFFFF
CBF5C:  LDR             R6, [R7,#arg_10]
CBF5E:  MOV.W           R3, #0x80000000
CBF62:  LSR.W           R2, R2, R12
CBF66:  ASR.W           R3, R3, R12
CBF6A:  CMP             R3, R2
CBF6C:  BLE             loc_CBF7C
CBF6E:  CMP             R0, R3
CBF70:  MOV             R1, R3
CBF72:  BGT             loc_CBF8A
CBF74:  CMP             R0, R2
CBF76:  IT LT
CBF78:  MOVLT           R0, R2
CBF7A:  B               loc_CBF88
CBF7C:  CMP             R0, R2
CBF7E:  MOV             R1, R2
CBF80:  BGT             loc_CBF8A
CBF82:  CMP             R0, R3
CBF84:  IT LT
CBF86:  MOVLT           R0, R3
CBF88:  MOV             R1, R0
CBF8A:  LSL.W           R1, R1, R12
CBF8E:  CMP             R1, #0
CBF90:  IT LE
CBF92:  MOVLE           R1, #0
CBF94:  CMP.W           R1, #0x4000
CBF98:  IT GE
CBF9A:  MOVGE.W         R1, #0x4000
CBF9E:  LDRSH.W         R0, [R9,#0x1C]
CBFA2:  CMP             R6, #0
CBFA4:  LDR.W           R3, [R7,#var_40]
CBFA8:  SUB.W           R1, R1, R0
CBFAC:  UXTH            R2, R1
CBFAE:  SXTH            R3, R3
CBFB0:  MOV.W           R1, R1,LSR#16
CBFB4:  MUL.W           R2, R3, R2
CBFB8:  MLA.W           R0, R1, R3, R0
CBFBC:  ADD.W           R0, R0, R2,LSR#16
CBFC0:  STRH.W          R0, [R9,#0x1C]
CBFC4:  MOV.W           R0, #0
CBFC8:  STRB            R0, [R4]
CBFCA:  BEQ             loc_CBFE8
CBFCC:  MOVS            R1, #0
CBFCE:  STR.W           R0, [R7,#var_28]
CBFD2:  STR.W           R1, [R7,#var_50]
CBFD6:  LDR.W           R1, [R7,#var_3C]
CBFDA:  STR.W           R0, [R7,#var_2C]
CBFDE:  SUB.W           R0, R7, #-var_2C
CBFE2:  BLX             j_silk_stereo_quant_pred
CBFE6:  B               loc_CC10E
CBFE8:  LDRH.W          R1, [R9,#0x1E]
CBFEC:  MOV.W           R0, R10,LSL#3
CBFF0:  CBZ             R1, loc_CC002
CBFF2:  MOVS            R1, #0xB
CBFF4:  MUL.W           R1, R11, R1
CBFF8:  CMP             R0, R1
CBFFA:  BGE             loc_CC012
CBFFC:  LDRH.W          R0, [R9,#0x1C]
CC000:  B               loc_CC02C
CC002:  MOVS            R1, #0xD
CC004:  MUL.W           R1, R11, R1
CC008:  CMP             R0, R1
CC00A:  BGE             loc_CC066
CC00C:  LDRH.W          R0, [R9,#0x1C]
CC010:  B               loc_CC082
CC012:  LDR.W           R2, [R7,#var_50]
CC016:  LDRSH.W         R0, [R9,#0x1C]
CC01A:  UXTH            R1, R2
CC01C:  MULS            R1, R0
CC01E:  ASRS            R1, R1, #0x10
CC020:  SMLATB.W        R1, R2, R0, R1
CC024:  UXTH            R0, R0
CC026:  CMP.W           R1, #0x148
CC02A:  BGE             loc_CC0C2
CC02C:  LDR.W           R1, [R7,#var_38]
CC030:  LDR.W           R2, [R7,#var_48]
CC034:  SMULBB.W        R1, R1, R0
CC038:  SMULBB.W        R0, R2, R0
CC03C:  ASRS            R1, R1, #0xE
CC03E:  STR.W           R1, [R7,#var_28]
CC042:  ASRS            R0, R0, #0xE
CC044:  LDR.W           R1, [R7,#var_3C]
CC048:  STR.W           R0, [R7,#var_2C]
CC04C:  SUB.W           R0, R7, #-var_2C
CC050:  BLX             j_silk_stereo_quant_pred
CC054:  MOVS            R1, #0
CC056:  MOVS            R0, #0
CC058:  STR.W           R1, [R7,#var_28]
CC05C:  STR.W           R0, [R7,#var_50]
CC060:  STR.W           R1, [R7,#var_2C]
CC064:  B               loc_CC10E
CC066:  LDR.W           R2, [R7,#var_50]
CC06A:  LDRSH.W         R0, [R9,#0x1C]
CC06E:  UXTH            R1, R2
CC070:  MULS            R1, R0
CC072:  ASRS            R1, R1, #0x10
CC074:  SMLATB.W        R1, R2, R0, R1
CC078:  MOVW            R2, #0x332
CC07C:  UXTH            R0, R0
CC07E:  CMP             R1, R2
CC080:  BGT             loc_CC0C2
CC082:  LDR.W           R1, [R7,#var_38]
CC086:  LDR.W           R2, [R7,#var_48]
CC08A:  SMULBB.W        R1, R1, R0
CC08E:  SMULBB.W        R0, R2, R0
CC092:  ASRS            R1, R1, #0xE
CC094:  STR.W           R1, [R7,#var_28]
CC098:  ASRS            R0, R0, #0xE
CC09A:  LDR.W           R1, [R7,#var_3C]
CC09E:  STR.W           R0, [R7,#var_2C]
CC0A2:  SUB.W           R0, R7, #-var_2C
CC0A6:  BLX             j_silk_stereo_quant_pred
CC0AA:  MOVS            R1, #0
CC0AC:  MOVS            R0, #0
CC0AE:  STRD.W          R1, R1, [R7,#var_2C]
CC0B2:  STR.W           R10, [R5]
CC0B6:  STR.W           R0, [R7,#var_50]
CC0BA:  MOVS            R0, #1
CC0BC:  STR             R1, [R5,#4]
CC0BE:  STRB            R0, [R4]
CC0C0:  B               loc_CC114
CC0C2:  SXTH            R1, R0
CC0C4:  MOVW            R2, #0x3CCE
CC0C8:  CMP             R1, R2
CC0CA:  BLT             loc_CC0DE
CC0CC:  LDR.W           R1, [R7,#var_3C]
CC0D0:  SUB.W           R0, R7, #-var_2C
CC0D4:  BLX             j_silk_stereo_quant_pred
CC0D8:  MOV.W           R0, #0x4000
CC0DC:  B               loc_CC10A
CC0DE:  LDR.W           R1, [R7,#var_38]
CC0E2:  LDR.W           R2, [R7,#var_48]
CC0E6:  SMULBB.W        R1, R1, R0
CC0EA:  SMULBB.W        R0, R2, R0
CC0EE:  ASRS            R1, R1, #0xE
CC0F0:  STR.W           R1, [R7,#var_28]
CC0F4:  ASRS            R0, R0, #0xE
CC0F6:  LDR.W           R1, [R7,#var_3C]
CC0FA:  STR.W           R0, [R7,#var_2C]
CC0FE:  SUB.W           R0, R7, #-var_2C
CC102:  BLX             j_silk_stereo_quant_pred
CC106:  LDRSH.W         R0, [R9,#0x1C]
CC10A:  STR.W           R0, [R7,#var_50]
CC10E:  LDRB            R0, [R4]
CC110:  CMP             R0, #1
CC112:  BNE             loc_CC136
CC114:  LDRH.W          R0, [R9,#0x20]
CC118:  LDRD.W          R2, R1, [R7,#arg_14]
CC11C:  SUB.W           R1, R1, R2,LSL#3
CC120:  ADD             R0, R1
CC122:  STRH.W          R0, [R9,#0x20]
CC126:  LDR.W           R1, [R7,#var_44]
CC12A:  SXTH            R0, R0
CC12C:  CMP             R0, R1
CC12E:  BGE             loc_CC13A
CC130:  MOVS            R0, #0
CC132:  STRB            R0, [R4]
CC134:  B               loc_CC146
CC136:  MOVS            R0, #0
CC138:  B               loc_CC13E
CC13A:  MOVW            R0, #0x2710
CC13E:  STRH.W          R0, [R9,#0x20]
CC142:  LDRB            R0, [R4]
CC144:  CBNZ            R0, loc_CC15C
CC146:  LDR             R0, [R5,#4]
CC148:  CMP             R0, #0
CC14A:  BGT             loc_CC15C
CC14C:  SUB.W           R1, R10, #1
CC150:  MOVS            R0, #1
CC152:  CMP             R1, #1
CC154:  IT LE
CC156:  MOVLE           R1, R0
CC158:  STRD.W          R1, R0, [R5]
CC15C:  LDR             R0, [R7,#arg_14]
CC15E:  MOV             R4, R0
CC160:  MOV.W           R0, #0x10000
CC164:  MOV.W           R11, R4,LSL#3
CC168:  MOV             R1, R11
CC16A:  BLX             sub_108848
CC16E:  LDR.W           R1, [R7,#var_2C]
CC172:  CMP             R4, #1
CC174:  STR.W           R1, [R7,#var_54]
CC178:  LDR.W           R1, [R7,#var_28]
CC17C:  STR.W           R1, [R7,#var_58]
CC180:  MOV             R1, #0xFFFF8000
CC188:  MOV             R5, R1
CC18A:  BLT.W           loc_CC2BC
CC18E:  LDR.W           R1, [R7,#var_4C]
CC192:  MOVS            R3, #1
CC194:  LDR.W           R2, [R7,#var_58]
CC198:  MOV.W           R9, #0
CC19C:  MOVW            R10, #0x7FFF
CC1A0:  LDRSH.W         R8, [R1,#2]
CC1A4:  LDRSH.W         LR, [R1]
CC1A8:  SUB.W           R6, R2, R8
CC1AC:  LDR.W           R2, [R7,#var_54]
CC1B0:  LDRSH.W         R1, [R1,#0x1E]
CC1B4:  SMULBB.W        R6, R6, R0
CC1B8:  ADD.W           R6, R3, R6,ASR#15
CC1BC:  MOV.W           R12, R6,ASR#1
CC1C0:  SUB.W           R6, R2, LR
CC1C4:  LDR.W           R2, [R7,#var_50]
CC1C8:  SMULBB.W        R6, R6, R0
CC1CC:  SUBS            R4, R2, R1
CC1CE:  SXTH            R2, R0
CC1D0:  ADD.W           R6, R3, R6,ASR#15
CC1D4:  UXTH            R3, R4
CC1D6:  MULS            R2, R3
CC1D8:  ASRS            R6, R6, #1
CC1DA:  ASRS            R2, R2, #0x10
CC1DC:  SMLATB.W        R0, R4, R0, R2
CC1E0:  SUB.W           R2, R5, #0x8000
CC1E4:  MUL.W           R4, R12, R2
CC1E8:  MUL.W           R3, R6, R2
CC1EC:  LSLS            R0, R0, #0xA
CC1EE:  STR.W           R0, [R7,#var_38]
CC1F2:  ADD.W           R1, R0, R1,LSL#10
CC1F6:  LSLS            R0, R6, #0x10
CC1F8:  SUB.W           R4, R4, R8,LSL#16
CC1FC:  STR.W           R0, [R7,#var_3C]
CC200:  LDR.W           R0, [R7,#var_60]
CC204:  SUB.W           R2, R3, LR,LSL#16
CC208:  LDR.W           R8, [R7,#var_5C]
CC20C:  SUBS            R0, #2
CC20E:  STR.W           R0, [R7,#var_40]
CC212:  MOV.W           R0, R12,LSL#16
CC216:  STR.W           R0, [R7,#var_44]
CC21A:  LDR.W           R0, [R7,#var_64]
CC21E:  ADDS            R0, #2
CC220:  STR.W           R0, [R7,#var_48]
CC224:  LDR.W           R0, [R7,#var_48]
CC228:  MOV             LR, R11
CC22A:  LDRSH.W         R12, [R8,#-4]
CC22E:  LDRSH.W         R11, [R0,R9,LSL#1]
CC232:  LDRSH.W         R0, [R8,#-2]
CC236:  ASRS            R6, R0, #5
CC238:  SMULTB.W        R3, R1, R11
CC23C:  SMLABT.W        R3, R6, R4, R3
CC240:  AND.W           R6, R1, #0xFC00
CC244:  MUL.W           R6, R6, R11
CC248:  MOV             R11, R5
CC24A:  ASRS            R5, R4, #0x10
CC24C:  ADD.W           R3, R3, R6,ASR#16
CC250:  LSLS            R6, R0, #0xB
CC252:  UXTH            R6, R6
CC254:  MULS            R5, R6
CC256:  ADD.W           R3, R3, R5,ASR#16
CC25A:  LDRSH.W         R5, [R8]
CC25E:  ADD.W           R8, R8, #2
CC262:  ADD.W           R6, R5, R12
CC266:  ASRS            R5, R2, #0x10
CC268:  ADD.W           R0, R6, R0,LSL#1
CC26C:  LSLS            R6, R0, #9
CC26E:  ASRS            R0, R0, #7
CC270:  UXTH            R6, R6
CC272:  SMLABT.W        R0, R0, R2, R3
CC276:  MULS            R6, R5
CC278:  MOVS            R3, #1
CC27A:  MOV             R5, R11
CC27C:  MOV             R11, LR
CC27E:  ADD.W           R0, R0, R6,ASR#16
CC282:  ADD.W           R0, R3, R0,ASR#7
CC286:  ASRS            R3, R0, #1
CC288:  CMP             R3, R5
CC28A:  MOV             R3, R5
CC28C:  IT GT
CC28E:  ASRGT           R3, R0, #1
CC290:  CMP             R3, R10
CC292:  IT GE
CC294:  MOVGE           R3, R10
CC296:  LDR.W           R0, [R7,#var_40]
CC29A:  STRH.W          R3, [R0,R9,LSL#1]
CC29E:  ADD.W           R9, R9, #1
CC2A2:  CMP             R9, R11
CC2A4:  LDR.W           R0, [R7,#var_3C]
CC2A8:  SUB.W           R2, R2, R0
CC2AC:  LDR.W           R0, [R7,#var_44]
CC2B0:  SUB.W           R4, R4, R0
CC2B4:  LDR.W           R0, [R7,#var_38]
CC2B8:  ADD             R1, R0
CC2BA:  BLT             loc_CC224
CC2BC:  LDR             R1, [R7,#arg_18]
CC2BE:  CMP             R11, R1
CC2C0:  BGE             loc_CC390
CC2C2:  LDR.W           R6, [R7,#var_50]
CC2C6:  SUB.W           R10, R1, R11
CC2CA:  LDR             R3, [R7,#arg_14]
CC2CC:  LDR.W           R2, [R7,#var_64]
CC2D0:  ASRS            R1, R6, #6
CC2D2:  LSLS            R6, R6, #0xA
CC2D4:  STR.W           R1, [R7,#var_38]
CC2D8:  UXTH            R1, R6
CC2DA:  LDR.W           R6, [R7,#var_58]
CC2DE:  ADD.W           R2, R2, R3,LSL#4
CC2E2:  STR.W           R1, [R7,#var_3C]
CC2E6:  ADDS            R2, #2
CC2E8:  NEGS            R6, R6
CC2EA:  LDR.W           R0, [R7,#var_5C]
CC2EE:  LDR.W           R3, [R7,#var_60]
CC2F2:  SXTH            R1, R6
CC2F4:  LDR.W           R6, [R7,#var_54]
CC2F8:  STR.W           R1, [R7,#var_40]
CC2FC:  ADD.W           R3, R3, R11,LSL#1
CC300:  NEGS            R6, R6
CC302:  ADD.W           R0, R0, R11,LSL#1
CC306:  SUBS            R3, #2
CC308:  SXTH            R1, R6
CC30A:  STR.W           R1, [R7,#var_44]
CC30E:  LDRD.W          R9, R11, [R7,#var_44]
CC312:  LDRSH.W         R5, [R0,#-4]
CC316:  LDRSH.W         R6, [R0]
CC31A:  LDRSH.W         R4, [R0,#-2]
CC31E:  ADDS            R0, #2
CC320:  ADD             R5, R6
CC322:  LDR.W           R1, [R7,#var_38]
CC326:  ADD.W           R5, R5, R4,LSL#1
CC32A:  LSLS            R6, R4, #0xB
CC32C:  UXTH            R6, R6
CC32E:  ASRS            R4, R4, #5
CC330:  MOV.W           LR, R5,LSL#9
CC334:  MUL.W           R12, R6, R11
CC338:  UXTH.W          R6, LR
CC33C:  MUL.W           LR, R6, R9
CC340:  LDRSH.W         R6, [R2],#2
CC344:  ASRS            R5, R5, #7
CC346:  SMULBB.W        R8, R1, R6
CC34A:  LDR.W           R1, [R7,#var_3C]
CC34E:  SMLABB.W        R4, R4, R11, R8
CC352:  MULS            R6, R1
CC354:  MOV             R1, #0xFFFF8000
CC35C:  ADD.W           R4, R4, R6,ASR#16
CC360:  ADD.W           R6, R4, R12,ASR#16
CC364:  SMLABB.W        R6, R5, R9, R6
CC368:  MOVS            R5, #1
CC36A:  ADD.W           R6, R6, LR,ASR#16
CC36E:  ADD.W           R6, R5, R6,ASR#7
CC372:  ASRS            R5, R6, #1
CC374:  CMP             R5, R1
CC376:  MOV             R5, R1
CC378:  MOVW            R1, #0x7FFF
CC37C:  IT GT
CC37E:  ASRGT           R5, R6, #1
CC380:  CMP             R5, R1
CC382:  IT GE
CC384:  MOVGE           R5, R1
CC386:  SUBS.W          R10, R10, #1
CC38A:  STRH.W          R5, [R3],#2
CC38E:  BNE             loc_CC312
CC390:  LDR.W           R0, [R7,#var_4C]
CC394:  LDR.W           R1, [R7,#var_58]
CC398:  STRH            R1, [R0,#2]
CC39A:  LDR.W           R1, [R7,#var_54]
CC39E:  STRH            R1, [R0]
CC3A0:  LDR.W           R1, [R7,#var_50]
CC3A4:  STRH            R1, [R0,#0x1E]
CC3A6:  LDR             R0, =(__stack_chk_guard_ptr - 0xCC3B0)
CC3A8:  LDR.W           R1, [R7,#var_24]
CC3AC:  ADD             R0, PC; __stack_chk_guard_ptr
CC3AE:  LDR             R0, [R0]; __stack_chk_guard
CC3B0:  LDR             R0, [R0]
CC3B2:  SUBS            R0, R0, R1
CC3B4:  ITTTT EQ
CC3B6:  SUBEQ.W         R4, R7, #-var_1C
CC3BA:  MOVEQ           SP, R4
CC3BC:  POPEQ.W         {R8-R11}
CC3C0:  POPEQ           {R4-R7,PC}
CC3C2:  BLX             __stack_chk_fail
