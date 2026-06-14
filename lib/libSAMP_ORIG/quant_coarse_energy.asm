; =========================================================
; Game Engine Function: quant_coarse_energy
; Address            : 0xBBD3C - 0xBC132
; =========================================================

BBD3C:  PUSH            {R4-R7,LR}
BBD3E:  ADD             R7, SP, #0xC
BBD40:  PUSH.W          {R8-R11}
BBD44:  SUB             SP, SP, #0xD4
BBD46:  MOV             R5, R0
BBD48:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xBBD56)
BBD4C:  STR.W           R2, [R7,#var_8C]
BBD50:  MOV             R6, R1
BBD52:  ADD             R0, PC; __stack_chk_guard_ptr
BBD54:  MOV             R8, R3
BBD56:  LDR.W           R9, [R7,#arg_1C]
BBD5A:  LDR             R0, [R0]; __stack_chk_guard
BBD5C:  LDR.W           R10, [R7,#arg_14]
BBD60:  LDR             R2, [R7,#arg_8]
BBD62:  LDR             R1, [R0]
BBD64:  LDRD.W          R3, R4, [R7,#arg_24]
BBD68:  STR.W           R1, [R7,#var_24]
BBD6C:  LDR             R1, [R7,#arg_20]
BBD6E:  LDR             R0, [R7,#arg_2C]
BBD70:  CBZ             R1, loc_BBD76
BBD72:  MOVS            R4, #1
BBD74:  B               loc_BBD98
BBD76:  CBZ             R4, loc_BBD7C
BBD78:  MOVS            R4, #0
BBD7A:  B               loc_BBD98
BBD7C:  LDR.W           R1, [R7,#var_8C]
BBD80:  MOVS            R4, #0
BBD82:  LDR.W           R12, [R3]
BBD86:  SUBS            R1, R1, R6
BBD88:  MUL.W           R1, R1, R10
BBD8C:  CMP.W           R12, R1,LSL#1
BBD90:  BLE             loc_BBD98
BBD92:  CMP             R1, R9
BBD94:  IT LT
BBD96:  MOVLT           R4, #1
BBD98:  MULS            R0, R2
BBD9A:  STR.W           R4, [R7,#var_A8]
BBD9E:  LDRD.W          R4, R11, [R7,#arg_0]
BBDA2:  LDR             R1, [R3]
BBDA4:  MULS            R0, R1
BBDA6:  MOV.W           R1, R10,LSL#9
BBDAA:  BLX             sub_108874
BBDAE:  STR.W           R0, [R7,#var_C4]
BBDB2:  CMP             R6, R8
BBDB4:  LDR.W           R12, [R5,#8]
BBDB8:  STRD.W          R6, R5, [R7,#var_98]
BBDBC:  BGE             loc_BBE0A
BBDBE:  SUB.W           LR, R8, R6
BBDC2:  ADD.W           R9, R4, R6,LSL#1
BBDC6:  ADD.W           R4, R11, R6,LSL#1
BBDCA:  MOV.W           R8, R12,LSL#1
BBDCE:  MOVS            R5, #0
BBDD0:  MOVS            R0, #0
BBDD2:  MOV             R1, LR
BBDD4:  MOV             R2, R9
BBDD6:  MOV             R3, R4
BBDD8:  LDRSH.W         R6, [R2],#2
BBDDC:  SUBS            R1, #1
BBDDE:  LDRSH.W         R11, [R3],#2
BBDE2:  MOV.W           R6, R6,LSR#3
BBDE6:  SUB.W           R6, R6, R11,LSR#3
BBDEA:  SMLABB.W        R5, R6, R6, R5
BBDEE:  BNE             loc_BBDD8
BBDF0:  ADDS            R0, #1
BBDF2:  ADD             R9, R8
BBDF4:  ADD             R4, R8
BBDF6:  CMP             R0, R10
BBDF8:  BLT             loc_BBDD2
BBDFA:  LDR.W           R11, [R7,#src]
BBDFE:  ASRS            R1, R5, #0xE
BBE00:  LDR.W           R6, [R7,#var_98]
BBE04:  LDR.W           R9, [R7,#arg_1C]
BBE08:  B               loc_BBE0C
BBE0A:  MOVS            R1, #0
BBE0C:  LDR             R0, [R7,#arg_10]
BBE0E:  CMP             R1, #0xC8
BBE10:  MOV.W           R8, #0x4000
BBE14:  MOV             R2, R0
BBE16:  LDR.W           R0, [R2,#0x1C]!
BBE1A:  IT GE
BBE1C:  MOVGE           R1, #0xC8
BBE1E:  STR.W           R1, [R7,#var_A4]
BBE22:  STR.W           R2, [R7,#var_90]
BBE26:  CLZ.W           R0, R0
BBE2A:  LDR.W           R1, [R2,#-8]
BBE2E:  LDR.W           R2, [R7,#var_8C]
BBE32:  ADD             R0, R1
BBE34:  SUBS            R2, R2, R6
BBE36:  SUB.W           R1, R0, #0x1D
BBE3A:  CMP             R2, #0xB
BBE3C:  SUB.W           R0, R0, #0x20 ; ' '
BBE40:  STR.W           R1, [R7,#var_AC]
BBE44:  STR.W           R0, [R7,#var_B0]
BBE48:  BLT             loc_BBE58
BBE4A:  MOV.W           R0, R9,LSL#7
BBE4E:  CMP.W           R0, #0x4000
BBE52:  IT LT
BBE54:  MOVLT.W         R8, R9,LSL#7
BBE58:  LDR.W           R9, [R7,#arg_10]
BBE5C:  MOV.W           R0, R10,LSL#1
BBE60:  MUL.W           R2, R0, R12; n
BBE64:  SUB.W           R1, R7, #-var_40
BBE68:  STR.W           R0, [R7,#var_B4]
BBE6C:  MOV             R12, R9
BBE6E:  STR.W           R1, [R7,#var_B8]
BBE72:  LDM.W           R12, {R0,R3-R6,LR}
BBE76:  SUB.W           R12, R7, #-var_58
BBE7A:  STM.W           R1, {R0,R3-R6,LR}
BBE7E:  LDR.W           R0, [R9,#0x18]
BBE82:  STRD.W          R0, R12, [R7,#var_C0]
BBE86:  LDR.W           R1, [R7,#var_90]
BBE8A:  LDM.W           R1, {R0,R3-R6}
BBE8E:  STM.W           R12, {R0,R3-R6}
BBE92:  ADDS            R0, R2, #7
BBE94:  BIC.W           R1, R0, #7
BBE98:  SUB.W           R0, SP, R1; dest
BBE9C:  MOV             SP, R0
BBE9E:  SUB.W           R1, SP, R1
BBEA2:  STR.W           R1, [R7,#var_9C]
BBEA6:  MOV             SP, R1
BBEA8:  MOV             R1, R11; src
BBEAA:  STR.W           R0, [R7,#var_A0]
BBEAE:  BLX             j_memcpy
BBEB2:  LDR             R0, [R7,#arg_30]
BBEB4:  MOV             R5, R8
BBEB6:  LDR.W           R9, [R7,#arg_8]
BBEBA:  MOV.W           R11, #0
BBEBE:  CMP             R0, #0
BBEC0:  MOV.W           R0, #0
BBEC4:  IT NE
BBEC6:  MOVNE.W         R5, #0xC00
BBECA:  LDR.W           R3, [R7,#var_AC]
BBECE:  MOVS            R4, #0
BBED0:  MOVS            R2, #0
BBED2:  CMP             R3, R9
BBED4:  IT HI
BBED6:  MOVHI.W         R11, #1
BBEDA:  LDR.W           R1, [R7,#var_A8]
BBEDE:  CMP             R1, #0
BBEE0:  IT EQ
BBEE2:  MOVEQ           R0, #1
BBEE4:  ORR.W           R6, R11, R0
BBEE8:  LDR             R0, [R7,#arg_28]
BBEEA:  CMP             R0, #0
BBEEC:  IT EQ
BBEEE:  MOVEQ           R4, #1
BBEF0:  ORRS            R0, R1
BBEF2:  BEQ             loc_BBF46
BBEF4:  CMP             R3, R9
BBEF6:  BHI             loc_BBF46
BBEF8:  LDR             R0, =(unk_5B143 - 0xBBEFE)
BBEFA:  ADD             R0, PC; unk_5B143
BBEFC:  SUB             SP, SP, #0x30 ; '0'
BBEFE:  LDR             R2, [R7,#arg_18]
BBF00:  MOVS            R1, #0x54 ; 'T'
BBF02:  MOV             R3, R2
BBF04:  MOVS            R2, #1
BBF06:  MLA.W           R0, R3, R1, R0
BBF0A:  SXTH            R1, R5
BBF0C:  STRD.W          R2, R1, [SP,#0x120+var_100]
BBF10:  LDR             R1, [R7,#arg_30]
BBF12:  STR             R1, [SP,#0x120+var_F8]
BBF14:  LDR.W           R1, [R7,#var_A0]
BBF18:  STRD.W          R1, R9, [SP,#0x120+var_120]
BBF1C:  ADDS            R0, #0x2A ; '*'
BBF1E:  LDR.W           R1, [R7,#var_B0]
BBF22:  STRD.W          R1, R0, [SP,#0x120+var_118]
BBF26:  LDR.W           R0, [R7,#var_9C]
BBF2A:  STR             R0, [SP,#0x120+var_110]
BBF2C:  LDR             R0, [R7,#arg_10]
BBF2E:  STRD.W          R0, R10, [SP,#0x120+var_10C]
BBF32:  STR             R3, [SP,#0x120+var_104]
BBF34:  LDRD.W          R1, R0, [R7,#var_98]
BBF38:  LDR.W           R2, [R7,#var_8C]
BBF3C:  LDR             R3, [R7,#arg_0]
BBF3E:  BL              sub_BC148
BBF42:  ADD             SP, SP, #0x30 ; '0'
BBF44:  MOV             R2, R0
BBF46:  LDR.W           R8, [R7,#arg_C]
BBF4A:  CMP             R6, #1
BBF4C:  BNE.W           loc_BC070
BBF50:  ORR.W           R0, R4, R11
BBF54:  LDR.W           R11, [R7,#arg_10]
BBF58:  STR.W           R0, [R7,#var_A8]
BBF5C:  STR.W           R2, [R7,#var_C8]
BBF60:  MOV             R0, R11
BBF62:  STR.W           R5, [R7,#var_AC]
BBF66:  BLX             j_ec_tell_frac
BBF6A:  ADD.W           R1, R11, #4
BBF6E:  STR.W           R0, [R7,#var_EC]
BBF72:  LDR.W           R12, [R11]
BBF76:  SUB.W           R0, R7, #-var_70
BBF7A:  STRD.W          R0, R1, [R7,#var_D0]
BBF7E:  LDM.W           R1, {R2-R6}
BBF82:  STM             R0!, {R2-R6}
BBF84:  SUB.W           R0, R7, #-var_88
BBF88:  LDR.W           R8, [R7,#var_90]
BBF8C:  LDR.W           LR, [R11,#0x18]
BBF90:  STR.W           R0, [R7,#var_D4]
BBF94:  MOV             R1, R8
BBF96:  LDM.W           R1, {R2-R6}
BBF9A:  STM             R0!, {R2-R6}
BBF9C:  LDR.W           R9, [R7,#var_C0]
BBFA0:  STR.W           LR, [R7,#var_E0]
BBFA4:  SUB.W           R2, LR, R9; n
BBFA8:  STR.W           R12, [R7,#var_DC]
BBFAC:  ADDS            R0, R2, #7
BBFAE:  ADD.W           R1, R12, R9; src
BBFB2:  BIC.W           R0, R0, #7
BBFB6:  SUB.W           R0, SP, R0; dest
BBFBA:  MOV             SP, R0
BBFBC:  STRD.W          R1, R0, [R7,#var_E8]
BBFC0:  STR.W           R2, [R7,#n]
BBFC4:  BLX             j_memcpy
BBFC8:  LDR.W           R12, [R7,#var_B8]
BBFCC:  MOV             R0, R11
BBFCE:  LDM.W           R12, {R1-R6}
BBFD2:  STM             R0!, {R1-R6}
BBFD4:  MOV             R0, R8
BBFD6:  STR.W           R9, [R11,#0x18]
BBFDA:  LDR.W           R4, [R7,#var_BC]
BBFDE:  LDR.W           R8, [R7,#arg_C]
BBFE2:  LDM.W           R4, {R1-R3,R5,R6}
BBFE6:  STM             R0!, {R1-R3,R5,R6}
BBFE8:  SUB             SP, SP, #0x30 ; '0'
BBFEA:  LDR.W           R0, [R7,#var_AC]
BBFEE:  MOVS            R1, #0
BBFF0:  LDR             R3, [R7,#arg_0]
BBFF2:  LDR.W           R9, [R7,#src]
BBFF6:  SXTH            R0, R0
BBFF8:  STRD.W          R1, R0, [SP,#0x120+var_100]
BBFFC:  LDR             R0, [R7,#arg_30]
BBFFE:  LDR             R1, [R7,#arg_18]
BC000:  STR             R0, [SP,#0x120+var_F8]
BC002:  LDR             R0, =(unk_5B143 - 0xBC00C)
BC004:  MOV             R2, R1
BC006:  MOVS            R1, #0x54 ; 'T'
BC008:  ADD             R0, PC; unk_5B143
BC00A:  STR.W           R10, [SP,#0x120+var_108]
BC00E:  MLA.W           R0, R2, R1, R0
BC012:  STRD.W          R8, R11, [SP,#0x120+var_110]
BC016:  LDR.W           R10, [R7,#var_94]
BC01A:  STR             R2, [SP,#0x120+var_104]
BC01C:  LDR.W           R1, [R7,#var_98]
BC020:  STR             R0, [SP,#0x120+var_114]
BC022:  LDR.W           R0, [R7,#var_B0]
BC026:  LDR.W           R2, [R7,#var_8C]
BC02A:  STR             R0, [SP,#0x120+var_118]
BC02C:  LDR             R0, [R7,#arg_8]
BC02E:  STR             R0, [SP,#0x120+var_11C]
BC030:  MOV             R0, R10
BC032:  STR.W           R9, [SP,#0x120+var_120]
BC036:  BL              sub_BC148
BC03A:  ADD             SP, SP, #0x30 ; '0'
BC03C:  LDR.W           R1, [R7,#var_A8]
BC040:  CBZ             R1, loc_BC08C
BC042:  LDR             R0, =(unk_5B29E - 0xBC04A)
BC044:  LDR             R1, [R7,#arg_18]
BC046:  ADD             R0, PC; unk_5B29E
BC048:  LDR             R6, [R7,#arg_24]
BC04A:  LDRSH.W         R0, [R0,R1,LSL#1]
BC04E:  LDR             R1, [R6]
BC050:  SMULBB.W        R0, R0, R0
BC054:  UXTH            R3, R1
BC056:  SBFX.W          R2, R0, #0xF, #0x10
BC05A:  LSLS            R0, R0, #1
BC05C:  SMULTT.W        R0, R1, R0
BC060:  LDR.W           R1, [R7,#var_A4]
BC064:  MULS            R2, R3
BC066:  ADD.W           R1, R1, R2,ASR#15
BC06A:  ADD.W           R0, R1, R0,LSL#1
BC06E:  B               loc_BC110
BC070:  LDR.W           R4, [R7,#var_94]
BC074:  LDR.W           R5, [R7,#var_B4]
BC078:  LDR.W           R1, [R7,#var_A0]; src
BC07C:  LDR             R0, [R4,#8]
BC07E:  MUL.W           R2, R5, R0; n
BC082:  LDR             R0, [R7,#src]; dest
BC084:  BLX             j_memcpy
BC088:  LDR             R0, [R4,#8]
BC08A:  B               loc_BC0FC
BC08C:  LDR.W           R1, [R7,#var_C8]
BC090:  CMP             R1, R0
BC092:  BLT             loc_BC0AA
BC094:  BNE             loc_BC042
BC096:  LDR             R0, [R7,#arg_10]
BC098:  BLX             j_ec_tell_frac
BC09C:  LDR.W           R1, [R7,#var_C4]
BC0A0:  ADD             R0, R1
BC0A2:  LDR.W           R1, [R7,#var_EC]
BC0A6:  CMP             R0, R1
BC0A8:  BLE             loc_BC042
BC0AA:  LDR             R0, [R7,#arg_10]
BC0AC:  MOV             R12, R0
BC0AE:  LDR.W           R0, [R7,#var_DC]
BC0B2:  STR.W           R0, [R12]
BC0B6:  LDRD.W          R4, R5, [R7,#var_D0]
BC0BA:  LDM.W           R4, {R0-R3,R6}
BC0BE:  STM             R5!, {R0-R3,R6}
BC0C0:  LDR.W           R0, [R7,#var_E0]
BC0C4:  STR.W           R0, [R12,#0x18]
BC0C8:  LDR.W           R4, [R7,#var_D4]
BC0CC:  LDR.W           R5, [R7,#var_90]
BC0D0:  LDM.W           R4, {R0-R3,R6}
BC0D4:  STM             R5!, {R0-R3,R6}
BC0D6:  LDRD.W          R0, R1, [R7,#var_E8]; src
BC0DA:  LDR.W           R2, [R7,#n]; n
BC0DE:  BLX             j_memcpy
BC0E2:  LDR.W           R0, [R10,#8]
BC0E6:  LDR.W           R5, [R7,#var_B4]
BC0EA:  LDR.W           R1, [R7,#var_A0]; src
BC0EE:  MUL.W           R2, R5, R0; n
BC0F2:  MOV             R0, R9; dest
BC0F4:  BLX             j_memcpy
BC0F8:  LDR.W           R0, [R10,#8]
BC0FC:  MUL.W           R2, R5, R0; n
BC100:  LDR.W           R1, [R7,#var_9C]; src
BC104:  MOV             R0, R8; dest
BC106:  BLX             j_memcpy
BC10A:  LDR             R6, [R7,#arg_24]
BC10C:  LDR.W           R0, [R7,#var_A4]
BC110:  STR             R0, [R6]
BC112:  LDR             R0, =(__stack_chk_guard_ptr - 0xBC11C)
BC114:  LDR.W           R1, [R7,#var_24]
BC118:  ADD             R0, PC; __stack_chk_guard_ptr
BC11A:  LDR             R0, [R0]; __stack_chk_guard
BC11C:  LDR             R0, [R0]
BC11E:  SUBS            R0, R0, R1
BC120:  ITTTT EQ
BC122:  SUBEQ.W         R4, R7, #-var_1C
BC126:  MOVEQ           SP, R4
BC128:  POPEQ.W         {R8-R11}
BC12C:  POPEQ           {R4-R7,PC}
BC12E:  BLX             __stack_chk_fail
