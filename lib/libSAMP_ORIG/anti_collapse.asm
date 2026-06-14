; =========================================================
; Game Engine Function: anti_collapse
; Address            : 0xBDF54 - 0xBE252
; =========================================================

BDF54:  PUSH            {R4-R7,LR}
BDF56:  ADD             R7, SP, #0xC
BDF58:  PUSH.W          {R8-R11}
BDF5C:  SUB             SP, SP, #0x34
BDF5E:  STR             R1, [SP,#0x50+var_40]
BDF60:  MOV             LR, R2
BDF62:  LDRD.W          R2, R1, [R7,#arg_8]
BDF66:  MOV             R10, R3
BDF68:  CMP             R2, R1
BDF6A:  BGE.W           loc_BE24A
BDF6E:  MOVS            R1, #1
BDF70:  MOVW            R9, #0xF35F
BDF74:  MOVW            R11, #:lower16:unk_19660D
BDF78:  LSL.W           R1, R1, R10
BDF7C:  STR             R1, [SP,#0x50+var_20]
BDF7E:  MOVT            R9, #0x3C6E
BDF82:  LDR.W           R8, [R7,#arg_20]
BDF86:  MOVT            R11, #:upper16:unk_19660D
BDF8A:  LDR             R4, [R7,#arg_0]
BDF8C:  STRD.W          LR, R0, [SP,#0x50+var_2C]
BDF90:  LDR             R0, [R0,#0x18]
BDF92:  ADDS            R5, R2, #1
BDF94:  LDR             R3, [R7,#arg_1C]
BDF96:  LDRSH.W         R1, [R0,R2,LSL#1]
BDF9A:  LDRSH.W         R0, [R0,R5,LSL#1]
BDF9E:  STR             R2, [SP,#0x50+var_30]
BDFA0:  LDR.W           R2, [R3,R2,LSL#2]
BDFA4:  SUBS            R6, R0, R1
BDFA6:  ADDS            R0, R2, #1
BDFA8:  MOV             R1, R6
BDFAA:  BLX             sub_108874
BDFAE:  LSR.W           R0, R0, R10
BDFB2:  MOVS            R1, #0
BDFB4:  SUB.W           R1, R1, R0,LSL#7
BDFB8:  SBFX.W          R0, R1, #0xA, #6
BDFBC:  STR             R5, [SP,#0x50+var_50]
BDFBE:  CMP             R0, #0xE
BDFC0:  BLE             loc_BDFC8
BDFC2:  MOV.W           R0, #0x7F000000
BDFC6:  B               loc_BE028
BDFC8:  CMN.W           R0, #0xF
BDFCC:  BGE             loc_BDFD2
BDFCE:  MOVS            R0, #0
BDFD0:  B               loc_BE028
BDFD2:  MOV.W           R2, #0x3800
BDFD6:  AND.W           R1, R2, R1,LSL#4
BDFDA:  MOVS            R2, #0
BDFDC:  MOVW            R3, #0x4FB8
BDFE0:  MOVT            R2, #0x39E3
BDFE4:  SMLABB.W        R2, R1, R3, R2
BDFE8:  MOVS            R3, #0x7FFF0000
BDFEE:  LSRS            R2, R2, #0x10
BDFF0:  MULS            R2, R1
BDFF2:  AND.W           R2, R3, R2,LSL#1
BDFF6:  MOVS            R3, #0x59140000
BDFFC:  ADD             R2, R3
BDFFE:  SMULTB.W        R1, R2, R1
BE002:  MOVW            R2, #0xFFFF
BE006:  LSLS            R1, R1, #1
BE008:  BICS            R1, R2
BE00A:  MOVS            R2, #0x3FFF0000
BE010:  ADD             R1, R2
BE012:  MOV             R2, #0xFFFFFFFE
BE016:  SUBS            R2, R2, R0
BE018:  ASRS            R1, R1, #0x10
BE01A:  NEGS            R0, R2
BE01C:  CMP             R2, #0
BE01E:  LSL.W           R0, R1, R0
BE022:  IT GT
BE024:  ASRGT.W         R0, R1, R2
BE028:  LDR             R1, [SP,#0x50+var_30]
BE02A:  MOVW            R2, #0x7FFF
BE02E:  MULS            R1, R4
BE030:  STR             R1, [SP,#0x50+var_34]
BE032:  ASRS            R1, R0, #1
BE034:  CMP             R1, R2
BE036:  MOVW            R1, #0x7FFF
BE03A:  IT LT
BE03C:  ASRLT           R1, R0, #1
BE03E:  ASRS            R0, R1, #0x10
BE040:  UBFX.W          R1, R1, #1, #0xF
BE044:  ORR.W           R0, R1, R0,LSL#15
BE048:  STR             R0, [SP,#0x50+var_38]
BE04A:  LSL.W           R1, R6, R10
BE04E:  SXTH            R0, R0
BE050:  STR             R1, [SP,#0x50+var_44]
BE052:  STR             R0, [SP,#0x50+var_3C]
BE054:  CLZ.W           R0, R1
BE058:  RSB.W           R5, R0, #0x1F
BE05C:  MOVS            R0, #7
BE05E:  SUB.W           R0, R0, R5,ASR#1
BE062:  LSLS            R0, R0, #1
BE064:  LSL.W           R0, R1, R0
BE068:  BLX             j_celt_rsqrt_norm
BE06C:  STR             R0, [SP,#0x50+var_48]
BE06E:  ASRS            R0, R5, #1
BE070:  STR             R0, [SP,#0x50+var_4C]
BE072:  MOVS            R2, #0
BE074:  LDR.W           R12, [SP,#0x50+var_30]
BE078:  LDR             R0, [SP,#0x50+var_28]
BE07A:  LDR             R5, [R7,#arg_18]
BE07C:  LDR             R3, [R0,#8]
BE07E:  MOV             LR, R12
BE080:  STR             R2, [SP,#0x50+var_24]
BE082:  MOV             R0, R4
BE084:  CMP             R0, #1
BE086:  MLA.W           R2, R3, R2, R12
BE08A:  LDR.W           R12, [R7,#arg_14]
BE08E:  LDRSH.W         R4, [R5,R2,LSL#1]
BE092:  LDRSH.W         R1, [R12,R2,LSL#1]
BE096:  BNE             loc_BE0AE
BE098:  ADD             R3, LR
BE09A:  LDRSH.W         R5, [R5,R3,LSL#1]
BE09E:  LDRSH.W         R3, [R12,R3,LSL#1]
BE0A2:  CMP             R4, R5
BE0A4:  IT LE
BE0A6:  MOVLE           R4, R5
BE0A8:  CMP             R1, R3
BE0AA:  IT LE
BE0AC:  MOVLE           R1, R3
BE0AE:  LDR             R3, [R7,#arg_10]
BE0B0:  SXTH            R5, R1
BE0B2:  MOV             R12, LR
BE0B4:  LDR.W           LR, [SP,#0x50+var_2C]
BE0B8:  LDRSH.W         R2, [R3,R2,LSL#1]
BE0BC:  SXTH            R3, R4
BE0BE:  CMP             R5, R3
BE0C0:  IT LT
BE0C2:  MOVLT           R4, R1
BE0C4:  LDR             R5, [R7,#arg_18]
BE0C6:  SXTH            R1, R4
BE0C8:  SUBS            R1, R2, R1
BE0CA:  MOVS            R2, #0
BE0CC:  CMP             R1, #0
BE0CE:  IT LE
BE0D0:  MOVLE           R1, R2
BE0D2:  CMP.W           R1, #0x4000
BE0D6:  BGE             loc_BE15A
BE0D8:  NEGS            R1, R1
BE0DA:  SBFX.W          R3, R1, #0xA, #6
BE0DE:  CMP             R3, #0xE
BE0E0:  BLE             loc_BE0E8
BE0E2:  MOV.W           R3, #0x7F000000
BE0E6:  B               loc_BE148
BE0E8:  CMN.W           R3, #0xF
BE0EC:  BGE             loc_BE0F2
BE0EE:  MOVS            R3, #0
BE0F0:  B               loc_BE148
BE0F2:  MOVW            R2, #0x3FF0
BE0F6:  AND.W           R1, R2, R1,LSL#4
BE0FA:  MOVS            R2, #0
BE0FC:  MOVW            R4, #0x4FB8
BE100:  MOVT            R2, #0x39E3
BE104:  SMLABB.W        R2, R1, R4, R2
BE108:  MOVS            R4, #0x7FFF0000
BE10E:  LSRS            R2, R2, #0x10
BE110:  MULS            R2, R1
BE112:  AND.W           R2, R4, R2,LSL#1
BE116:  MOVS            R4, #0x59140000
BE11C:  ADD             R2, R4
BE11E:  SMULTB.W        R1, R2, R1
BE122:  MOVW            R2, #0xFFFF
BE126:  LSLS            R1, R1, #1
BE128:  BICS            R1, R2
BE12A:  MOVS            R2, #0x3FFF0000
BE130:  ADD             R1, R2
BE132:  MOV             R2, #0xFFFFFFFE
BE136:  SUBS            R2, R2, R3
BE138:  ASRS            R1, R1, #0x10
BE13A:  NEGS            R3, R2
BE13C:  CMP             R2, #0
BE13E:  LSL.W           R3, R1, R3
BE142:  IT GT
BE144:  ASRGT.W         R3, R1, R2
BE148:  ASRS            R1, R3, #1
BE14A:  MOVW            R2, #0x3FFF
BE14E:  CMP             R1, R2
BE150:  MOVW            R1, #0x3FFF
BE154:  IT LT
BE156:  ASRLT           R1, R3, #1
BE158:  LSLS            R2, R1, #1
BE15A:  CMP.W           R10, #3
BE15E:  BNE             loc_BE174
BE160:  SXTH            R1, R2
BE162:  CMP.W           R1, #0x5A80
BE166:  IT GT
BE168:  MOVWGT          R1, #0x5A81
BE16C:  MOVW            R2, #0x5A82
BE170:  MULS            R1, R2
BE172:  LSRS            R2, R1, #0xE
BE174:  LDR             R0, [SP,#0x50+var_28]
BE176:  CMP.W           R10, #0x1F
BE17A:  BEQ             loc_BE232
BE17C:  LDR             R1, [R7,#arg_4]
BE17E:  LDR             R4, [SP,#0x50+var_24]
BE180:  LDR             R3, [SP,#0x50+var_40]
BE182:  MUL.W           R5, R4, R1
BE186:  LDR             R1, [R0,#0x18]
BE188:  LDRSH.W         R1, [R1,R12,LSL#1]
BE18C:  ADD.W           R0, R3, R5,LSL#1
BE190:  LDR             R3, [SP,#0x50+var_3C]
BE192:  LSL.W           R1, R1, R10
BE196:  ADD.W           R0, R0, R1,LSL#1
BE19A:  SXTH            R1, R2
BE19C:  CMP             R3, R1
BE19E:  LDR             R1, [SP,#0x50+var_38]
BE1A0:  IT LT
BE1A2:  MOVLT           R2, R1
BE1A4:  LDR             R1, [SP,#0x50+var_34]
BE1A6:  CMP             R6, #1
BE1A8:  ADD.W           R12, R4, R1
BE1AC:  BLT             loc_BE1FC
BE1AE:  LDR             R1, [SP,#0x50+var_48]
BE1B0:  SXTH            R2, R2
BE1B2:  ASRS            R2, R2, #1
BE1B4:  MOVS            R3, #0
BE1B6:  MOVS            R5, #0
BE1B8:  SMULBB.W        R2, R2, R1
BE1BC:  LDR             R1, [SP,#0x50+var_4C]
BE1BE:  ASRS            R2, R2, #0xF
BE1C0:  ASRS            R2, R1
BE1C2:  SXTH            R2, R2
BE1C4:  LDRB.W          R1, [LR,R12]
BE1C8:  MOVS            R4, #1
BE1CA:  LSLS            R4, R5
BE1CC:  TST             R4, R1
BE1CE:  BNE             loc_BE1F2
BE1D0:  MOVS            R3, #0
BE1D2:  MLA.W           R8, R8, R11, R9
BE1D6:  LSL.W           R4, R3, R10
BE1DA:  MOV             R1, R2
BE1DC:  ADD             R4, R5
BE1DE:  ADDS            R3, #1
BE1E0:  TST.W           R8, #0x8000
BE1E4:  IT EQ
BE1E6:  NEGEQ           R1, R1
BE1E8:  CMP             R6, R3
BE1EA:  STRH.W          R1, [R0,R4,LSL#1]
BE1EE:  BNE             loc_BE1D2
BE1F0:  MOVS            R3, #1
BE1F2:  LDR             R1, [SP,#0x50+var_20]
BE1F4:  ADDS            R5, #1
BE1F6:  CMP             R5, R1
BE1F8:  BLT             loc_BE1C4
BE1FA:  B               loc_BE21C
BE1FC:  LDRB.W          R1, [LR,R12]
BE200:  MOVS            R3, #0
BE202:  LDR             R4, [SP,#0x50+var_20]
BE204:  MOVS            R2, #0
BE206:  MOV.W           R12, #1
BE20A:  LSL.W           R5, R12, R2
BE20E:  TST             R5, R1
BE210:  ADD.W           R2, R2, #1
BE214:  IT EQ
BE216:  MOVEQ           R3, #1
BE218:  CMP             R2, R4
BE21A:  BLT             loc_BE20A
BE21C:  CBZ             R3, loc_BE22A
BE21E:  LDR             R1, [SP,#0x50+var_44]
BE220:  MOVW            R2, #0x7FFF
BE224:  LDR             R3, [R7,#arg_24]
BE226:  BLX             j_renormalise_vector
BE22A:  LDR             R0, [SP,#0x50+var_28]
BE22C:  LDR.W           R12, [SP,#0x50+var_30]
BE230:  LDR             R5, [R7,#arg_18]
BE232:  LDR             R2, [SP,#0x50+var_24]
BE234:  LDR             R1, [R7,#arg_0]
BE236:  ADDS            R2, #1
BE238:  MOV             R4, R1
BE23A:  CMP             R2, R4
BE23C:  BLT.W           loc_BE07C
BE240:  LDR             R1, [R7,#arg_C]
BE242:  LDR             R2, [SP,#0x50+var_50]
BE244:  CMP             R2, R1
BE246:  BNE.W           loc_BDF90
BE24A:  ADD             SP, SP, #0x34 ; '4'
BE24C:  POP.W           {R8-R11}
BE250:  POP             {R4-R7,PC}
