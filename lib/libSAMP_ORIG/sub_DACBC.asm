; =========================================================
; Game Engine Function: sub_DACBC
; Address            : 0xDACBC - 0xDB318
; =========================================================

DACBC:  PUSH            {R4-R7,LR}
DACBE:  ADD             R7, SP, #0xC
DACC0:  PUSH.W          {R8-R11}
DACC4:  SUB             SP, SP, #0x5C
DACC6:  STR.W           R3, [R7,#var_6C]
DACCA:  MOVS            R4, #7
DACCC:  LDR.W           R3, =(__stack_chk_guard_ptr - 0xDACD4)
DACD0:  ADD             R3, PC; __stack_chk_guard_ptr
DACD2:  LDR             R3, [R3]; __stack_chk_guard
DACD4:  LDR             R3, [R3]
DACD6:  STR.W           R3, [R7,#var_24]
DACDA:  ADD.W           R3, R4, R1,LSL#2
DACDE:  BIC.W           R5, R3, #7
DACE2:  SUB.W           R3, SP, R5
DACE6:  STR.W           R3, [R7,#var_44]
DACEA:  MOV             SP, R3
DACEC:  STR.W           R0, [R7,#var_58]
DACF0:  SUB.W           R12, R1, #1
DACF4:  LDR             R0, [R0,#0x18]
DACF6:  LDR.W           R9, [R7,#arg_C]
DACFA:  LDRSH.W         R3, [R0,R12,LSL#1]
DACFE:  LDRSH.W         R6, [R0,R1,LSL#1]
DAD02:  SUBS            R3, R6, R3
DAD04:  LSL.W           R3, R3, R9
DAD08:  ADD.W           R3, R4, R3,LSL#1
DAD0C:  BIC.W           R3, R3, #7
DAD10:  SUB.W           R11, SP, R3
DAD14:  MOV             SP, R11
DAD16:  SUB.W           R4, SP, R3
DAD1A:  MOV             SP, R4
DAD1C:  SUB.W           R3, SP, R5
DAD20:  STR.W           R3, [R7,#var_70]
DAD24:  MOV             SP, R3
DAD26:  LDR             R6, [R7,#arg_18]
DAD28:  SUB.W           R5, SP, R5
DAD2C:  LDR             R3, [R7,#arg_0]
DAD2E:  STR.W           R5, [R7,#var_74]
DAD32:  MOV             SP, R5
DAD34:  CMP             R1, #0
DAD36:  STR.W           R1, [R7,#var_48]
DAD3A:  STR.W           R12, [R7,#var_68]
DAD3E:  BLE.W           loc_DB156
DAD42:  LDR             R1, [R7,#arg_10]
DAD44:  MOV             R6, #0xFFFFF000
DAD4C:  STR.W           R4, [R7,#dest]
DAD50:  RSB.W           R1, R1, #0x2000
DAD54:  LDR.W           R12, [R7,#arg_14]
DAD58:  CMN.W           R1, #0x1000
DAD5C:  LDR             R3, [R7,#arg_8]
DAD5E:  IT GT
DAD60:  MOVGT           R6, R1
DAD62:  CMP             R2, #0
DAD64:  SXTH            R1, R6
DAD66:  MOVW            R6, #0x147C
DAD6A:  SMULBB.W        R1, R1, R6
DAD6E:  MOV.W           R6, #0x10000
DAD72:  ADD.W           R6, R6, R9,LSL#16
DAD76:  MOV             R4, R2
DAD78:  IT NE
DAD7A:  MOVNE.W         R4, R9,LSL#16
DAD7E:  MUL.W           R3, R12, R3
DAD82:  STR.W           R11, [R7,#var_28]
DAD86:  ASRS            R5, R1, #0x10
DAD88:  MULS            R6, R5
DAD8A:  STR.W           R3, [R7,#var_50]
DAD8E:  MULS            R5, R4
DAD90:  ASRS            R3, R6, #0x10
DAD92:  STR.W           R3, [R7,#var_5C]
DAD96:  ASRS            R3, R5, #0x10
DAD98:  MOV             R5, R2
DAD9A:  STR.W           R3, [R7,#var_54]
DAD9E:  MOVS            R3, #1
DADA0:  LSL.W           R3, R3, R9
DADA4:  STR.W           R3, [R7,#var_60]
DADA8:  MOVS            R3, #0
DADAA:  SUB.W           R3, R3, R9,LSL#1
DADAE:  STR.W           R3, [R7,#var_64]
DADB2:  MOVW            R3, #0xFFFF
DADB6:  ADD.W           R6, R9, R3
DADBA:  BICS            R1, R3
DADBC:  MOVS            R3, #0
DADBE:  STR.W           R6, [R7,#var_2C]
DADC2:  STR.W           R1, [R7,#var_30]
DADC6:  B               loc_DAE62
DADC8:  CBZ             R5, loc_DADEC
DADCA:  MOVS            R0, #1
DADCC:  ASR.W           R1, R10, R4
DADD0:  LSL.W           R2, R0, R4
DADD4:  LDR.W           R0, [R7,#var_28]
DADD8:  BLX             j_haar1
DADDC:  ADDS            R4, #1
DADDE:  CMP             R6, #0
DADE0:  ITT GT
DADE2:  MOVGT           R8, R4
DADE4:  MOVGT           R6, #0
DADE6:  CMP             R9, R4
DADE8:  BNE             loc_DADCA
DADEA:  B               loc_DAE0C
DADEC:  MOVS            R0, #1
DADEE:  ASR.W           R1, R10, R4
DADF2:  LSL.W           R2, R0, R4
DADF6:  LDR.W           R0, [R7,#var_28]
DADFA:  BLX             j_haar1
DADFE:  ADDS            R4, #1
DAE00:  CMP             R6, #0
DAE02:  ITT GT
DAE04:  MOVGT           R8, R4
DAE06:  MOVGT           R6, #0
DAE08:  CMP             R9, R4
DAE0A:  BNE             loc_DADEC
DAE0C:  MOVS            R0, #0
DAE0E:  CMP             R5, #0
DAE10:  SUB.W           R0, R0, R8,LSL#1
DAE14:  IT NE
DAE16:  MOVNE.W         R0, R8,LSL#1
DAE1A:  LDR.W           R1, [R7,#var_44]
DAE1E:  LDR.W           R2, [R7,#var_3C]
DAE22:  STR.W           R0, [R1,R2,LSL#2]
DAE26:  LDR.W           R1, [R7,#var_34]
DAE2A:  CMP             R1, #1
DAE2C:  BNE             loc_DAE44
DAE2E:  CMP             R0, #0
DAE30:  ITT NE
DAE32:  LDRNE.W         R1, [R7,#var_64]
DAE36:  CMPNE           R0, R1
DAE38:  BNE             loc_DAE44
DAE3A:  LDR.W           R1, [R7,#var_44]
DAE3E:  SUBS            R0, #1
DAE40:  STR.W           R0, [R1,R2,LSL#2]
DAE44:  LDR.W           R0, [R7,#var_48]
DAE48:  LDR.W           R1, [R7,#var_38]
DAE4C:  LDR.W           R9, [R7,#arg_C]
DAE50:  CMP             R1, R0
DAE52:  BEQ.W           loc_DAFD8
DAE56:  LDR.W           R0, [R7,#var_58]
DAE5A:  MOV             R3, R1
DAE5C:  LDR.W           R11, [R7,#var_28]
DAE60:  LDR             R0, [R0,#0x18]
DAE62:  ADDS            R2, R3, #1
DAE64:  LDRSH.W         R1, [R0,R3,LSL#1]
DAE68:  STR.W           R3, [R7,#var_3C]
DAE6C:  STR.W           R2, [R7,#var_38]
DAE70:  LDRSH.W         R0, [R0,R2,LSL#1]
DAE74:  SUBS            R0, R0, R1
DAE76:  STR.W           R0, [R7,#var_34]
DAE7A:  LSL.W           R10, R0, R9
DAE7E:  LSL.W           R0, R1, R9
DAE82:  LDR.W           R1, [R7,#var_50]
DAE86:  MOV.W           R2, R10,LSL#1; n
DAE8A:  STR.W           R2, [R7,#n]
DAE8E:  ADD             R0, R1
DAE90:  LDR             R1, [R7,#arg_4]
DAE92:  ADD.W           R1, R1, R0,LSL#1; src
DAE96:  MOV             R0, R11; dest
DAE98:  BLX             j_memcpy
DAE9C:  MOVS            R0, #0
DAE9E:  CMP.W           R10, #1
DAEA2:  BLT             loc_DAEBE
DAEA4:  LDR.W           R4, [R7,#dest]
DAEA8:  MOV             R1, R11
DAEAA:  MOV             R2, R10
DAEAC:  LDRSH.W         R3, [R1],#2
DAEB0:  CMP             R3, #0
DAEB2:  IT MI
DAEB4:  NEGMI           R3, R3
DAEB6:  SUBS            R2, #1
DAEB8:  ADD             R0, R3
DAEBA:  BNE             loc_DAEAC
DAEBC:  B               loc_DAEC2
DAEBE:  LDR.W           R4, [R7,#dest]
DAEC2:  MOV             R1, R0
DAEC4:  LDR.W           R2, [R7,#var_54]
DAEC8:  BFC.W           R1, #0xF, #0x11
DAECC:  CMP             R5, #0
DAECE:  MOV.W           R8, #0
DAED2:  SMULBB.W        R1, R1, R2
DAED6:  ADD.W           R1, R0, R1,ASR#15
DAEDA:  MOV.W           R0, R0,LSL#1
DAEDE:  SMLATB.W        R6, R0, R2, R1
DAEE2:  ITT NE
DAEE4:  LDRNE.W         R0, [R7,#var_34]
DAEE8:  CMPNE           R0, #1
DAEEA:  BEQ             loc_DAF46
DAEEC:  LDR.W           R2, [R7,#n]; n
DAEF0:  MOV             R0, R4; dest
DAEF2:  MOV             R1, R11; src
DAEF4:  BLX             j_memcpy
DAEF8:  LDR.W           R2, [R7,#var_60]
DAEFC:  ASR.W           R1, R10, R9
DAF00:  MOV             R0, R4
DAF02:  BLX             j_haar1
DAF06:  MOVS            R0, #0
DAF08:  CMP.W           R10, #1
DAF0C:  BLT             loc_DAF20
DAF0E:  MOV             R2, R10
DAF10:  LDRSH.W         R3, [R4],#2
DAF14:  CMP             R3, #0
DAF16:  IT MI
DAF18:  NEGMI           R3, R3
DAF1A:  SUBS            R2, #1
DAF1C:  ADD             R0, R3
DAF1E:  BNE             loc_DAF10
DAF20:  MOV             R1, R0
DAF22:  LDR.W           R2, [R7,#var_5C]
DAF26:  BFC.W           R1, #0xF, #0x11
DAF2A:  MOV.W           R8, #0
DAF2E:  SMULBB.W        R1, R1, R2
DAF32:  ADD.W           R1, R0, R1,ASR#15
DAF36:  LSLS            R0, R0, #1
DAF38:  SMLATB.W        R0, R0, R2, R1
DAF3C:  CMP             R0, R6
DAF3E:  ITT LT
DAF40:  MOVLT.W         R8, #0xFFFFFFFF
DAF44:  MOVLT           R6, R0
DAF46:  LDR.W           R0, [R7,#var_34]
DAF4A:  MOVS            R1, #0
DAF4C:  CMP             R0, #1
DAF4E:  MOV.W           R0, #0
DAF52:  IT NE
DAF54:  MOVNE           R0, #1
DAF56:  CMP             R5, #0
DAF58:  IT EQ
DAF5A:  MOVEQ           R1, #1
DAF5C:  ANDS            R0, R1
DAF5E:  ADD             R9, R0
DAF60:  CMP.W           R9, #1
DAF64:  BLT.W           loc_DAE0C
DAF68:  MOVS            R4, #0
DAF6A:  CMP.W           R10, #1
DAF6E:  BLT.W           loc_DADC8
DAF72:  MOV             R11, R5
DAF74:  LDR.W           R5, [R7,#var_28]
DAF78:  MOVS            R0, #1
DAF7A:  ASR.W           R1, R10, R4
DAF7E:  LSL.W           R2, R0, R4
DAF82:  MOV             R0, R5
DAF84:  BLX             j_haar1
DAF88:  ADDS            R0, R4, #1
DAF8A:  MOVS            R1, #0
DAF8C:  MOV             R2, R5
DAF8E:  MOV             R3, R10
DAF90:  LDRSH.W         R5, [R2],#2
DAF94:  CMP             R5, #0
DAF96:  IT MI
DAF98:  NEGMI           R5, R5
DAF9A:  SUBS            R3, #1
DAF9C:  ADD             R1, R5
DAF9E:  BNE             loc_DAF90
DAFA0:  LDR.W           R3, [R7,#var_2C]
DAFA4:  MOV             R5, R11
DAFA6:  CMP             R5, #0
DAFA8:  MOV             R2, R0
DAFAA:  IT NE
DAFAC:  SUBNE           R2, R3, R4
DAFAE:  LDR.W           R3, [R7,#var_30]
DAFB2:  MOV             R4, R0
DAFB4:  MULS            R2, R3
DAFB6:  MOV             R3, R1
DAFB8:  BFC.W           R3, #0xF, #0x11
DAFBC:  SMULBT.W        R3, R3, R2
DAFC0:  ADD.W           R3, R1, R3,ASR#15
DAFC4:  LSLS            R1, R1, #1
DAFC6:  SMLATT.W        R1, R1, R2, R3
DAFCA:  CMP             R1, R6
DAFCC:  ITT LT
DAFCE:  MOVLT           R8, R0
DAFD0:  MOVLT           R6, R1
DAFD2:  CMP             R0, R9
DAFD4:  BNE             loc_DAF72
DAFD6:  B               loc_DAE0C
DAFD8:  LDR.W           R0, [R7,#var_48]
DAFDC:  MOVS            R3, #0
DAFDE:  LDR             R1, [R7,#arg_0]
DAFE0:  LSLS            R6, R5, #2
DAFE2:  CMP             R0, #1
DAFE4:  LDR             R2, [R7,#arg_18]
DAFE6:  IT GT
DAFE8:  MOVGT           R3, #1
DAFEA:  CMP             R5, #0
DAFEC:  MOV             R12, R1
DAFEE:  IT NE
DAFF0:  MOVNE.W         R12, #0
DAFF4:  LDR.W           R1, [R7,#var_44]
DAFF8:  MOV             R8, R2
DAFFA:  LDR.W           LR, [R8]
DAFFE:  LDR.W           R10, [R1]
DB002:  IT NE
DB004:  MOVNE           R5, #1
DB006:  CMP             R0, #1
DB008:  BLE.W           loc_DB16E
DB00C:  LDR             R0, =(tf_select_table_ptr - 0xDB01A)
DB00E:  ORR.W           R1, R6, #1
DB012:  STR.W           R6, [R7,#var_38]
DB016:  ADD             R0, PC; tf_select_table_ptr
DB018:  LDR             R0, [R0]; tf_select_table
DB01A:  ADD.W           R0, R0, R9,LSL#3
DB01E:  LDRSB           R1, [R0,R1]
DB020:  LDRSB           R2, [R0,R6]
DB022:  SUB.W           R0, R10, R1,LSL#1
DB026:  CMP             R0, #0
DB028:  SUB.W           R6, R10, R2,LSL#1
DB02C:  IT MI
DB02E:  NEGMI           R0, R0
DB030:  CMP             R6, #0
DB032:  STR.W           R3, [R7,#var_28]
DB036:  MLA.W           R11, R0, LR, R12
DB03A:  STR.W           R5, [R7,#var_3C]
DB03E:  STRD.W          R12, R10, [R7,#var_34]
DB042:  IT MI
DB044:  NEGMI           R6, R6
DB046:  MUL.W           R12, R6, LR
DB04A:  LDR.W           R0, [R7,#var_44]
DB04E:  ADD.W           R3, R8, #4
DB052:  ADD.W           R8, R0, #4
DB056:  LDR.W           R6, [R7,#var_68]
DB05A:  MOV.W           R10, R1,LSL#1
DB05E:  LSLS            R4, R2, #1
DB060:  MOV             R1, R8
DB062:  STR.W           LR, [R7,#var_2C]
DB066:  STR.W           R3, [R7,#n]
DB06A:  LDR             R2, [R7,#arg_0]
DB06C:  LDR.W           R5, [R3],#4
DB070:  ADD.W           LR, R11, R2
DB074:  ADD             R2, R12
DB076:  CMP             R12, LR
DB078:  IT LT
DB07A:  MOVLT           LR, R12
DB07C:  LDR.W           R9, [R1],#4
DB080:  CMP             R2, R11
DB082:  IT LT
DB084:  MOVLT           R11, R2
DB086:  SUBS.W          R2, R9, R10
DB08A:  IT MI
DB08C:  NEGMI           R2, R2
DB08E:  MLA.W           R11, R2, R5, R11
DB092:  SUBS.W          R2, R9, R4
DB096:  IT MI
DB098:  NEGMI           R2, R2
DB09A:  SUBS            R6, #1
DB09C:  MLA.W           R12, R2, R5, LR
DB0A0:  BNE             loc_DB06A
DB0A2:  LDR             R1, =(tf_select_table_ptr - 0xDB0AC)
DB0A4:  CMP             R12, R11
DB0A6:  LDR             R0, [R7,#arg_C]
DB0A8:  ADD             R1, PC; tf_select_table_ptr
DB0AA:  LDR             R1, [R1]; tf_select_table
DB0AC:  ADD.W           R2, R1, R0,LSL#3
DB0B0:  LDR.W           R0, [R7,#var_38]
DB0B4:  IT LT
DB0B6:  MOVLT           R11, R12
DB0B8:  ORR.W           R1, R0, #3
DB0BC:  ORR.W           R3, R0, #2
DB0C0:  LDR.W           R0, [R7,#var_30]
DB0C4:  LDRSB           R1, [R2,R1]
DB0C6:  LDRSB           R3, [R2,R3]
DB0C8:  SUB.W           R2, R0, R1,LSL#1
DB0CC:  MOV.W           R12, R1,LSL#1
DB0D0:  CMP             R2, #0
DB0D2:  MOV.W           LR, R3,LSL#1
DB0D6:  IT MI
DB0D8:  NEGMI           R2, R2
DB0DA:  LDR.W           R6, [R7,#var_2C]
DB0DE:  LDR.W           R0, [R7,#var_34]
DB0E2:  LDR.W           R9, [R7,#var_68]
DB0E6:  MLA.W           R2, R2, R6, R0
DB0EA:  LDR.W           R0, [R7,#var_30]
DB0EE:  LDR.W           R10, [R7,#n]
DB0F2:  SUB.W           R4, R0, R3,LSL#1
DB0F6:  MOV             R1, R9
DB0F8:  CMP             R4, #0
DB0FA:  IT MI
DB0FC:  NEGMI           R4, R4
DB0FE:  LDR.W           R0, [R7,#var_2C]
DB102:  MUL.W           R6, R4, R0
DB106:  LDR             R3, [R7,#arg_0]
DB108:  LDR.W           R4, [R10],#4
DB10C:  MOV             R0, R3
DB10E:  ADDS            R5, R2, R0
DB110:  CMP             R6, R5
DB112:  IT LT
DB114:  MOVLT           R5, R6
DB116:  ADD             R6, R0
DB118:  LDR.W           R3, [R8],#4
DB11C:  CMP             R6, R2
DB11E:  IT LT
DB120:  MOVLT           R2, R6
DB122:  SUBS.W          R6, R3, R12
DB126:  IT MI
DB128:  NEGMI           R6, R6
DB12A:  SUBS.W          R3, R3, LR
DB12E:  IT MI
DB130:  NEGMI           R3, R3
DB132:  MLA.W           R2, R6, R4, R2
DB136:  SUBS            R1, #1
DB138:  MLA.W           R6, R3, R4, R5
DB13C:  BNE             loc_DB106
DB13E:  SUB.W           R12, R7, #-var_3C
DB142:  CMP             R6, R2
DB144:  IT LT
DB146:  MOVLT           R2, R6
DB148:  LDR.W           R8, [R7,#var_28]
DB14C:  LDRD.W          R10, LR, [R7,#var_30]
DB150:  LDM.W           R12, {R5,R6,R12}
DB154:  B               loc_DB1D8
DB156:  CMP             R2, #0
DB158:  MOV             R12, R3
DB15A:  IT NE
DB15C:  MOVNE.W         R12, #0
DB160:  LDR.W           LR, [R6]
DB164:  MOV.W           R6, R2,LSL#2
DB168:  IT NE
DB16A:  MOVNE           R2, #1
DB16C:  MOV             R5, R2
DB16E:  LDR             R0, =(tf_select_table_ptr - 0xDB17E)
DB170:  ORR.W           R3, R6, #1
DB174:  ORR.W           R2, R6, #2
DB178:  MOV             R8, R6
DB17A:  ADD             R0, PC; tf_select_table_ptr
DB17C:  LDR             R0, [R0]; tf_select_table
DB17E:  ADD.W           R1, R0, R9,LSL#3
DB182:  ORR.W           R0, R6, #3
DB186:  LDRSB           R0, [R1,R0]
DB188:  LDRSB           R3, [R1,R3]
DB18A:  LDRSB           R2, [R1,R2]
DB18C:  LDRSB           R1, [R1,R6]
DB18E:  SUB.W           R0, R10, R0,LSL#1
DB192:  CMP             R0, #0
DB194:  SUB.W           R3, R10, R3,LSL#1
DB198:  IT MI
DB19A:  NEGMI           R0, R0
DB19C:  CMP             R3, #0
DB19E:  SUB.W           R6, R10, R2,LSL#1
DB1A2:  IT MI
DB1A4:  NEGMI           R3, R3
DB1A6:  CMP             R6, #0
DB1A8:  SUB.W           R1, R10, R1,LSL#1
DB1AC:  IT MI
DB1AE:  NEGMI           R6, R6
DB1B0:  CMP             R1, #0
DB1B2:  IT MI
DB1B4:  NEGMI           R1, R1
DB1B6:  MLA.W           R11, R3, LR, R12
DB1BA:  MUL.W           R3, R6, LR
DB1BE:  MOV             R6, R8
DB1C0:  MOV.W           R8, #0
DB1C4:  MLA.W           R2, R0, LR, R12
DB1C8:  MUL.W           R1, R1, LR
DB1CC:  CMP             R3, R2
DB1CE:  IT LT
DB1D0:  MOVLT           R2, R3
DB1D2:  CMP             R1, R11
DB1D4:  IT LT
DB1D6:  MOVLT           R11, R1
DB1D8:  LDR             R1, =(tf_select_table_ptr - 0xDB1E2)
DB1DA:  MOVS            R3, #0
DB1DC:  CMP             R2, R11
DB1DE:  ADD             R1, PC; tf_select_table_ptr
DB1E0:  IT LT
DB1E2:  MOVLT           R3, #1
DB1E4:  AND.W           R4, R5, R3
DB1E8:  LDR             R3, [R7,#arg_C]
DB1EA:  LDR             R0, [R1]; tf_select_table
DB1EC:  ORR.W           R1, R6, R4,LSL#1
DB1F0:  ADD.W           R0, R0, R3,LSL#3
DB1F4:  ORR.W           R2, R1, #1
DB1F8:  LDRSB           R2, [R0,R2]
DB1FA:  LDRSB           R3, [R0,R1]
DB1FC:  SUB.W           R1, R10, R2,LSL#1
DB200:  CMP             R1, #0
DB202:  SUB.W           R6, R10, R3,LSL#1
DB206:  IT MI
DB208:  NEGMI           R1, R1
DB20A:  CMP             R6, #0
DB20C:  IT MI
DB20E:  NEGMI           R6, R6
DB210:  MLA.W           R1, R1, LR, R12
DB214:  LDR.W           R5, [R7,#var_68]
DB218:  MUL.W           R6, R6, LR
DB21C:  CMP.W           R8, #1
DB220:  BNE             loc_DB2E4
DB222:  STRD.W          R4, R8, [R7,#var_2C]
DB226:  LSLS            R0, R2, #1
DB228:  MOV.W           R8, R3,LSL#1
DB22C:  LDR.W           R2, [R7,#var_74]
DB230:  LDR.W           R3, [R7,#var_44]
DB234:  ADD.W           R9, R2, #4
DB238:  LDR.W           R2, [R7,#var_70]
DB23C:  ADD.W           R10, R3, #4
DB240:  LDR             R3, [R7,#arg_18]
DB242:  ADD.W           R12, R2, #4
DB246:  MOV             R2, R5
DB248:  ADD.W           R11, R3, #4
DB24C:  LDR             R2, [R7,#arg_0]
DB24E:  MOV             R3, R2
DB250:  ADDS            R4, R1, R3
DB252:  CMP             R6, R4
DB254:  MOV.W           R2, #0
DB258:  IT GE
DB25A:  MOVGE           R2, #1
DB25C:  ADD             R3, R6
DB25E:  STR.W           R2, [R12],#4
DB262:  CMP             R3, R1
DB264:  MOV.W           R2, #0
DB268:  IT GE
DB26A:  MOVGE           R2, #1
DB26C:  STR.W           R2, [R9],#4
DB270:  LDR.W           R2, [R10],#4
DB274:  IT LT
DB276:  MOVLT           R1, R3
DB278:  SUBS.W          LR, R2, R0
DB27C:  IT MI
DB27E:  RSBMI.W         LR, LR, #0
DB282:  LDR.W           R3, [R11],#4
DB286:  CMP             R6, R4
DB288:  IT LT
DB28A:  MOVLT           R4, R6
DB28C:  SUBS.W          R2, R2, R8
DB290:  IT MI
DB292:  NEGMI           R2, R2
DB294:  MLA.W           R1, LR, R3, R1
DB298:  SUBS            R5, #1
DB29A:  MLA.W           R6, R2, R3, R4
DB29E:  BNE             loc_DB24C
DB2A0:  MOVS            R2, #0
DB2A2:  CMP             R6, R1
DB2A4:  IT GE
DB2A6:  MOVGE           R2, #1
DB2A8:  LDRD.W          R0, R3, [R7,#var_6C]
DB2AC:  STR.W           R2, [R0,R3,LSL#2]
DB2B0:  LDR.W           R1, [R7,#var_28]
DB2B4:  LDRD.W          R5, R6, [R7,#var_74]
DB2B8:  LDR.W           R4, [R7,#var_2C]
DB2BC:  CMP             R1, #1
DB2BE:  BNE             loc_DB2F4
DB2C0:  LDR.W           R1, [R7,#var_48]
DB2C4:  ADD.W           R0, R0, R1,LSL#2
DB2C8:  SUB.W           R1, R0, #8
DB2CC:  CMP             R2, #1
DB2CE:  MOV             R0, R6
DB2D0:  IT EQ
DB2D2:  MOVEQ           R0, R5
DB2D4:  LDR.W           R2, [R0,R3,LSL#2]
DB2D8:  SUBS            R3, #1
DB2DA:  STR.W           R2, [R1],#-4
DB2DE:  CMP             R3, #0
DB2E0:  BGT             loc_DB2CC
DB2E2:  B               loc_DB2F4
DB2E4:  MOVS            R0, #0
DB2E6:  CMP             R6, R1
DB2E8:  IT GE
DB2EA:  MOVGE           R0, #1
DB2EC:  LDR.W           R1, [R7,#var_6C]
DB2F0:  STR.W           R0, [R1,R5,LSL#2]
DB2F4:  LDR             R0, =(__stack_chk_guard_ptr - 0xDB2FE)
DB2F6:  LDR.W           R1, [R7,#var_24]
DB2FA:  ADD             R0, PC; __stack_chk_guard_ptr
DB2FC:  LDR             R0, [R0]; __stack_chk_guard
DB2FE:  LDR             R0, [R0]
DB300:  SUBS            R0, R0, R1
DB302:  ITTTT EQ
DB304:  MOVEQ           R0, R4
DB306:  SUBEQ.W         R4, R7, #-var_1C
DB30A:  MOVEQ           SP, R4
DB30C:  POPEQ.W         {R8-R11}
DB310:  IT EQ
DB312:  POPEQ           {R4-R7,PC}
DB314:  BLX             __stack_chk_fail
