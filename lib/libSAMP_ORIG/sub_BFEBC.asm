; =========================================================
; Game Engine Function: sub_BFEBC
; Address            : 0xBFEBC - 0xC0312
; =========================================================

BFEBC:  PUSH            {R4-R7,LR}
BFEBE:  ADD             R7, SP, #0xC
BFEC0:  PUSH.W          {R8-R11}
BFEC4:  SUB             SP, SP, #0x64
BFEC6:  MOV             R9, R0
BFEC8:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xBFED4)
BFECC:  MOV             R11, R3
BFECE:  MOV             LR, R1
BFED0:  ADD             R0, PC; __stack_chk_guard_ptr
BFED2:  LDR.W           R10, [R7,#arg_8]
BFED6:  LDR             R0, [R0]; __stack_chk_guard
BFED8:  LDR             R0, [R0]
BFEDA:  STR             R0, [SP,#0x80+var_20]
BFEDC:  STR.W           R11, [SP,#0x80+var_24]
BFEE0:  LDR.W           R3, [R9]
BFEE4:  LDRD.W          R0, R12, [R9,#8]
BFEE8:  LDR.W           R1, [R9,#0x14]
BFEEC:  STR             R1, [SP,#0x80+var_4C]
BFEEE:  ADDS.W          R1, R10, #1
BFEF2:  LDR             R6, [R0,#8]
BFEF4:  LDRD.W          R5, R0, [R0,#0x58]
BFEF8:  LDR             R4, [R7,#arg_10]
BFEFA:  MLA.W           R1, R6, R1, R12
BFEFE:  LDRSH.W         R1, [R5,R1,LSL#1]
BFF02:  LDR.W           R5, [R9,#0x1C]
BFF06:  LDRB            R6, [R0,R1]
BFF08:  ADD             R0, R1
BFF0A:  LDRD.W          R12, R8, [R7,#arg_0]
BFF0E:  STR.W           LR, [SP,#0x80+var_40]
BFF12:  BEQ             loc_BFF9C
BFF14:  CMP             R2, #3
BFF16:  BLT             loc_BFF9C
BFF18:  LDRB            R1, [R0,R6]
BFF1A:  ADDS            R1, #0xC
BFF1C:  CMP             R1, R11
BFF1E:  BGE             loc_BFF9C
BFF20:  LSRS            R6, R2, #1
BFF22:  ADD.W           R2, R12, #1
BFF26:  CMP.W           R12, #1
BFF2A:  ADD             R1, SP, #0x80+var_24
BFF2C:  ITTT EQ
BFF2E:  ANDEQ.W         R0, R4, #1
BFF32:  ORREQ.W         R0, R0, R4,LSL#1
BFF36:  STREQ           R0, [R7,#arg_10]
BFF38:  SUB.W           R11, R10, #1
BFF3C:  STRD.W          R6, R1, [SP,#0x80+var_80]
BFF40:  ASRS            R2, R2, #1
BFF42:  ADD.W           R0, R7, #0x18
BFF46:  MOV             R4, R12
BFF48:  ADD             R1, SP, #0x80+var_78
BFF4A:  STR             R2, [SP,#0x80+var_48]
BFF4C:  STM.W           R1, {R2,R4,R11}
BFF50:  MOVS            R5, #0
BFF52:  ADD.W           R3, LR, R6,LSL#1
BFF56:  ADD             R1, SP, #0x80+var_3C
BFF58:  STRD.W          R5, R0, [SP,#0x80+var_6C]
BFF5C:  MOV             R0, R9
BFF5E:  MOV             R2, LR
BFF60:  STR             R3, [SP,#0x80+var_44]
BFF62:  BL              sub_C040C
BFF66:  LDR             R0, [SP,#0x80+var_38]
BFF68:  CMP             R4, #2
BFF6A:  STR             R0, [SP,#0x80+var_54]
BFF6C:  LDRD.W          R1, R0, [SP,#0x80+var_34]
BFF70:  LDRD.W          R3, LR, [SP,#0x80+var_2C]
BFF74:  STRD.W          R1, R3, [SP,#0x80+var_50]
BFF78:  BLT.W           loc_C0168
BFF7C:  MOV             R2, R3
BFF7E:  BFC.W           R2, #0xE, #0x12
BFF82:  CMP             R2, #0
BFF84:  BEQ.W           loc_C0168
BFF88:  CMP.W           R3, #0x2000
BFF8C:  BLE.W           loc_C0158
BFF90:  RSB.W           R2, R10, #5
BFF94:  ASR.W           R2, R0, R2
BFF98:  SUBS            R0, R0, R2
BFF9A:  B               loc_C0168
BFF9C:  ADD.W           R10, R6, #1
BFFA0:  STRD.W          R4, R2, [SP,#0x80+var_48]
BFFA4:  STRD.W          R3, R5, [SP,#0x80+var_54]
BFFA8:  SUB.W           R5, R11, #1
BFFAC:  MOV.W           R1, R10,LSR#1
BFFB0:  LDRB.W          R12, [R0,R1]
BFFB4:  CMP             R5, R12
BFFB6:  IT GT
BFFB8:  MOVGT           R1, R6
BFFBA:  MOV.W           R6, #0
BFFBE:  IT GT
BFFC0:  MOVGT.W         R6, R10,LSR#1
BFFC4:  ADDS            R3, R6, R1
BFFC6:  ADD.W           R12, R3, #1
BFFCA:  MOV.W           R3, R12,LSR#1
BFFCE:  LDRB            R4, [R0,R3]
BFFD0:  CMP             R5, R4
BFFD2:  ITE LE
BFFD4:  MOVLE           R1, R3
BFFD6:  MOVGT.W         R6, R12,LSR#1
BFFDA:  ADDS            R3, R6, R1
BFFDC:  ADD.W           R12, R3, #1
BFFE0:  MOV.W           R4, R12,ASR#1
BFFE4:  LDRB            R3, [R0,R4]
BFFE6:  CMP             R5, R3
BFFE8:  ITE LE
BFFEA:  MOVLE           R1, R4
BFFEC:  MOVGT.W         R6, R12,ASR#1
BFFF0:  ADDS            R3, R6, R1
BFFF2:  ADD.W           R12, R3, #1
BFFF6:  MOV.W           R4, R12,ASR#1
BFFFA:  LDRB            R3, [R0,R4]
BFFFC:  CMP             R5, R3
BFFFE:  ITE LE
C0000:  MOVLE           R1, R4
C0002:  MOVGT.W         R6, R12,ASR#1
C0006:  ADDS            R3, R6, R1
C0008:  ADD.W           R12, R3, #1
C000C:  MOV.W           R4, R12,ASR#1
C0010:  LDRB            R3, [R0,R4]
C0012:  CMP             R5, R3
C0014:  ITE LE
C0016:  MOVLE           R1, R4
C0018:  MOVGT.W         R6, R12,ASR#1
C001C:  ADDS            R3, R6, R1
C001E:  ADD.W           R12, R3, #1
C0022:  MOV.W           R4, R12,ASR#1
C0026:  LDRB            R3, [R0,R4]
C0028:  CMP             R5, R3
C002A:  ITE LE
C002C:  MOVLE           R1, R4
C002E:  MOVGT.W         R6, R12,ASR#1
C0032:  CMP             R6, #0
C0034:  ITE NE
C0036:  LDRBNE.W        R10, [R0,R6]
C003A:  MOVEQ.W         R10, #0xFFFFFFFF
C003E:  LDRB            R3, [R0,R1]
C0040:  SUB.W           R4, R5, R10
C0044:  SUBS            R3, R3, R5
C0046:  CMP             R4, R3
C0048:  LDR             R4, [R7,#arg_0]
C004A:  IT GT
C004C:  MOVGT           R6, R1
C004E:  LDR             R2, [SP,#0x80+var_48]
C0050:  CBZ             R6, loc_C0076
C0052:  LDRB            R3, [R0,R6]
C0054:  CMP             R6, #1
C0056:  LDR.W           R1, [R9,#0x20]
C005A:  ADD.W           R3, R3, #1
C005E:  SUB.W           R5, R1, R3
C0062:  STR.W           R5, [R9,#0x20]
C0066:  BLT             loc_C00DE
C0068:  CMP.W           R5, #0xFFFFFFFF
C006C:  BGT             loc_C00DE
C006E:  SUBS            R6, #1
C0070:  STR.W           R1, [R9,#0x20]
C0074:  BNE             loc_C0052
C0076:  LDR.W           R0, [R9,#4]
C007A:  CMP             R0, #0
C007C:  BEQ             loc_C011E
C007E:  MOVS            R0, #1
C0080:  LSLS            R0, R4
C0082:  SUBS            R3, R0, #1
C0084:  ANDS.W          R10, R3, R2
C0088:  STR.W           R10, [R7,#arg_10]
C008C:  BEQ             loc_C0124
C008E:  MOVW            R12, #:lower16:unk_19660D
C0092:  MOVW            LR, #0xF35F
C0096:  MOVT            R12, #:upper16:unk_19660D
C009A:  MOVT            LR, #0x3C6E
C009E:  CMP.W           R8, #0
C00A2:  BEQ.W           loc_C02C0
C00A6:  LDR             R0, [SP,#0x80+var_44]
C00A8:  CMP             R0, #1
C00AA:  BLT             loc_C00D8
C00AC:  MOV             R5, R0
C00AE:  LDR.W           R3, [R9,#0x28]
C00B2:  LDR             R0, [SP,#0x80+var_40]
C00B4:  MOV.W           R6, #0x80000
C00B8:  MLA.W           R3, R3, R12, LR
C00BC:  LDRH.W          R4, [R8],#2
C00C0:  SUBS            R5, #1
C00C2:  AND.W           R1, R6, R3,LSL#4
C00C6:  SUB.W           R1, R1, #0x40000
C00CA:  ADD.W           R1, R4, R1,LSR#16
C00CE:  STRH.W          R1, [R0],#2
C00D2:  BNE             loc_C00B8
C00D4:  STR.W           R3, [R9,#0x28]
C00D8:  LDR.W           R8, [R7,#arg_C]
C00DC:  B               loc_C02E8
C00DE:  CMP             R6, #8
C00E0:  BLT             loc_C00F2
C00E2:  MOV.W           R0, #0xFFFFFFFF
C00E6:  MOVS            R1, #1
C00E8:  ADD.W           R0, R0, R6,LSR#3
C00EC:  BFI.W           R6, R1, #3, #0x1D
C00F0:  LSLS            R6, R0
C00F2:  LDR             R1, [SP,#0x80+var_54]
C00F4:  LDR             R0, [SP,#0x80+var_40]
C00F6:  LDR             R5, [R7,#arg_C]
C00F8:  CBZ             R1, loc_C0134
C00FA:  LDR.W           R1, [R9,#0x2C]
C00FE:  MOV             R2, R6
C0100:  LDR.W           R3, [R9,#4]
C0104:  STR             R4, [SP,#0x80+var_80]
C0106:  LDR             R4, [SP,#0x80+var_50]
C0108:  STRD.W          R4, R5, [SP,#0x80+var_7C]
C010C:  STRD.W          R3, R1, [SP,#0x80+var_74]
C0110:  LDR             R1, [SP,#0x80+var_44]
C0112:  LDR             R3, [SP,#0x80+var_4C]
C0114:  BLX             j_alg_quant
C0118:  LDR             R1, =(__stack_chk_guard_ptr - 0xC011E)
C011A:  ADD             R1, PC; __stack_chk_guard_ptr
C011C:  B               loc_C014A
C011E:  MOV.W           R10, #0
C0122:  B               loc_C02F6
C0124:  LDR             R0, [SP,#0x80+var_44]
C0126:  LSLS            R1, R0, #1; n
C0128:  LDR             R0, [SP,#0x80+var_40]; int
C012A:  BLX             sub_10967C
C012E:  MOV.W           R10, #0
C0132:  B               loc_C02F6
C0134:  LDR             R1, [SP,#0x80+var_50]
C0136:  MOV             R2, R6
C0138:  STR             R4, [SP,#0x80+var_80]
C013A:  STRD.W          R1, R5, [SP,#0x80+var_7C]
C013E:  LDR             R1, [SP,#0x80+var_44]
C0140:  LDR             R3, [SP,#0x80+var_4C]
C0142:  BLX             j_alg_unquant
C0146:  LDR             R1, =(__stack_chk_guard_ptr - 0xC014C)
C0148:  ADD             R1, PC; __stack_chk_guard_ptr
C014A:  LDR             R1, [R1]; __stack_chk_guard
C014C:  LDR             R2, [SP,#0x80+var_20]
C014E:  LDR             R1, [R1]
C0150:  SUBS            R1, R1, R2
C0152:  BEQ.W           loc_C0306
C0156:  B               loc_C030E
C0158:  RSB.W           R2, R10, #6
C015C:  LSLS            R3, R6, #3
C015E:  ASR.W           R2, R3, R2
C0162:  ADD             R0, R2
C0164:  AND.W           R0, R0, R0,ASR#31
C0168:  LDR             R3, [SP,#0x80+var_24]
C016A:  MOV             R10, R8
C016C:  LDR.W           R2, [R9,#0x20]
C0170:  MOV             R12, R11
C0172:  SUBS            R0, R3, R0
C0174:  SUB.W           R2, R2, LR
C0178:  ADD.W           R0, R0, R0,LSR#31
C017C:  MOV             R1, R2
C017E:  STR             R1, [SP,#0x80+var_58]
C0180:  CMP.W           R3, R0,ASR#1
C0184:  MOV             R1, R3
C0186:  STR.W           R2, [R9,#0x20]
C018A:  IT GE
C018C:  ASRGE           R1, R0, #1
C018E:  MOV             R2, R6
C0190:  CMP             R1, #0
C0192:  IT GT
C0194:  MOVGT           R5, R1
C0196:  CMP.W           R8, #0
C019A:  SUB.W           R4, R3, R5
C019E:  IT NE
C01A0:  ADDNE.W         R10, R10, R6,LSL#1
C01A4:  CMP             R5, R4
C01A6:  BGE             loc_C0232
C01A8:  LDR             R0, [SP,#0x80+var_50]
C01AA:  MOV.W           R6, #0x4000
C01AE:  LDR             R1, [R7,#arg_C]
C01B0:  MOV             R11, R12
C01B2:  LDR             R3, [R7,#arg_10]
C01B4:  SXTH            R0, R0
C01B6:  STR             R3, [SP,#0x80+var_60]
C01B8:  STRD.W          R10, R11, [SP,#0x80+var_7C]
C01BC:  SMLABB.W        R0, R0, R1, R6
C01C0:  LDR             R6, [SP,#0x80+var_48]
C01C2:  MOV             R10, R2
C01C4:  STR             R6, [SP,#0x80+var_80]
C01C6:  ASR.W           R1, R3, R6
C01CA:  MOV             R3, R4
C01CC:  STR             R1, [SP,#0x80+var_70]
C01CE:  SBFX.W          R0, R0, #0xF, #0x10
C01D2:  LDR             R1, [SP,#0x80+var_44]
C01D4:  STR             R0, [SP,#0x80+var_74]
C01D6:  MOV             R0, R9
C01D8:  BL              sub_BFEBC
C01DC:  LDR             R2, [SP,#0x80+var_54]
C01DE:  LDR             R3, [R7,#arg_C]
C01E0:  LDR             R1, [SP,#0x80+var_60]
C01E2:  LDR.W           R12, [R9,#0x20]
C01E6:  SXTH            R2, R2
C01E8:  STR             R1, [SP,#0x80+var_70]
C01EA:  MOV.W           R1, #0x4000
C01EE:  SMLABB.W        R2, R2, R3, R1
C01F2:  MOV             R3, R5
C01F4:  SBFX.W          R2, R2, #0xF, #0x10
C01F8:  STR             R2, [SP,#0x80+var_74]
C01FA:  LDR             R2, [R7,#arg_0]
C01FC:  STMEA.W         SP, {R6,R8,R11}
C0200:  ASRS            R2, R2, #1
C0202:  LSL.W           R8, R0, R2
C0206:  LDR             R0, [SP,#0x80+var_58]
C0208:  MOV             R2, R10
C020A:  SUB.W           R0, R12, R0
C020E:  ADD             R0, R4
C0210:  ADDS            R1, R5, R0
C0212:  CMP             R0, #0x18
C0214:  IT GT
C0216:  SUBGT.W         R3, R1, #0x18
C021A:  LDR             R0, [SP,#0x80+var_4C]
C021C:  CMP.W           R0, #0x4000
C0220:  MOV             R0, R9
C0222:  IT EQ
C0224:  MOVEQ           R3, R5
C0226:  LDR             R1, [SP,#0x80+var_40]
C0228:  BL              sub_BFEBC
C022C:  ORR.W           R10, R0, R8
C0230:  B               loc_C02F6
C0232:  LDR             R0, [SP,#0x80+var_54]
C0234:  MOV.W           R3, #0x4000
C0238:  LDR             R1, [R7,#arg_C]
C023A:  MOV             R6, R12
C023C:  LDR.W           R11, [R7,#arg_10]
C0240:  SXTH            R0, R0
C0242:  STR.W           R11, [SP,#0x80+var_70]
C0246:  SMLABB.W        R0, R0, R1, R3
C024A:  STRD.W          R8, R6, [SP,#0x80+var_7C]
C024E:  LDR.W           R8, [SP,#0x80+var_48]
C0252:  MOV             R3, R5
C0254:  STR.W           R8, [SP,#0x80+var_80]
C0258:  SBFX.W          R0, R0, #0xF, #0x10
C025C:  LDR             R1, [SP,#0x80+var_40]
C025E:  STR             R0, [SP,#0x80+var_74]
C0260:  MOV             R0, R9
C0262:  STR             R2, [SP,#0x80+var_5C]
C0264:  BL              sub_BFEBC
C0268:  STR             R0, [SP,#0x80+var_40]
C026A:  ASR.W           R0, R11, R8
C026E:  LDR.W           R1, [R9,#0x20]
C0272:  MOV.W           R3, #0x4000
C0276:  STR             R0, [SP,#0x80+var_70]
C0278:  LDR             R0, [SP,#0x80+var_50]
C027A:  LDR             R2, [R7,#arg_C]
C027C:  SXTH            R0, R0
C027E:  SMLABB.W        R0, R0, R2, R3
C0282:  MOV             R3, R4
C0284:  SBFX.W          R0, R0, #0xF, #0x10
C0288:  STRD.W          R6, R0, [SP,#0x80+var_78]
C028C:  STRD.W          R8, R10, [SP,#0x80+var_80]
C0290:  LDR             R0, [SP,#0x80+var_58]
C0292:  SUBS            R0, R1, R0
C0294:  ADD             R0, R5
C0296:  ADDS            R1, R4, R0
C0298:  CMP             R0, #0x18
C029A:  IT GT
C029C:  SUBGT.W         R3, R1, #0x18
C02A0:  LDR             R0, [SP,#0x80+var_4C]
C02A2:  CMP             R0, #0
C02A4:  MOV             R0, R9
C02A6:  IT EQ
C02A8:  MOVEQ           R3, R4
C02AA:  LDR             R1, [SP,#0x80+var_44]
C02AC:  LDR             R2, [SP,#0x80+var_5C]
C02AE:  BL              sub_BFEBC
C02B2:  LDR             R1, [R7,#arg_0]
C02B4:  ASRS            R1, R1, #1
C02B6:  LSLS            R0, R1
C02B8:  LDR             R1, [SP,#0x80+var_40]
C02BA:  ORR.W           R10, R0, R1
C02BE:  B               loc_C02F6
C02C0:  LDR             R1, [SP,#0x80+var_44]
C02C2:  LDR.W           R8, [R7,#arg_C]
C02C6:  CMP             R1, #1
C02C8:  BLT             loc_C02E6
C02CA:  LDR.W           R0, [R9,#0x28]
C02CE:  MOV             R6, R1
C02D0:  LDR             R5, [SP,#0x80+var_40]
C02D2:  MLA.W           R0, R0, R12, LR
C02D6:  SUBS            R6, #1
C02D8:  MOV.W           R4, R0,ASR#20
C02DC:  STRH.W          R4, [R5],#2
C02E0:  BNE             loc_C02D2
C02E2:  STR.W           R0, [R9,#0x28]
C02E6:  MOV             R10, R3
C02E8:  LDR.W           R3, [R9,#0x2C]
C02EC:  MOV             R2, R8
C02EE:  LDRD.W          R1, R0, [SP,#0x80+var_44]
C02F2:  BLX             j_renormalise_vector
C02F6:  LDR             R0, =(__stack_chk_guard_ptr - 0xC02FE)
C02F8:  LDR             R1, [SP,#0x80+var_20]
C02FA:  ADD             R0, PC; __stack_chk_guard_ptr
C02FC:  LDR             R0, [R0]; __stack_chk_guard
C02FE:  LDR             R0, [R0]
C0300:  SUBS            R0, R0, R1
C0302:  BNE             loc_C030E
C0304:  MOV             R0, R10
C0306:  ADD             SP, SP, #0x64 ; 'd'
C0308:  POP.W           {R8-R11}
C030C:  POP             {R4-R7,PC}
C030E:  BLX             __stack_chk_fail
