; =========================================================
; Game Engine Function: silk_find_LTP_FIX
; Address            : 0x1AEF54 - 0x1AF39E
; =========================================================

1AEF54:  PUSH            {R4-R7,LR}
1AEF56:  ADD             R7, SP, #0xC
1AEF58:  PUSH.W          {R8-R11}
1AEF5C:  SUB             SP, SP, #0x34
1AEF5E:  MOV             R4, R0
1AEF60:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1AEF6C)
1AEF64:  LDR             R5, [R7,#arg_4]
1AEF66:  MOV             R6, R3
1AEF68:  ADD             R0, PC; __stack_chk_guard_ptr
1AEF6A:  MOV             R10, R2
1AEF6C:  MOV             R9, R1
1AEF6E:  CMP             R5, #1
1AEF70:  LDR             R0, [R0]; __stack_chk_guard
1AEF72:  LDR             R0, [R0]
1AEF74:  STR             R0, [SP,#0x50+var_20]
1AEF76:  BLT.W           loc_1AF384
1AEF7A:  LDR             R1, [R7,#arg_0]
1AEF7C:  LDR.W           R11, [R7,#arg_8]
1AEF80:  LSLS            R0, R1, #1
1AEF82:  STR             R0, [SP,#0x50+var_40]
1AEF84:  ADDS            R0, R1, #5
1AEF86:  STR             R0, [SP,#0x50+var_44]
1AEF88:  LDR             R3, [SP,#0x50+var_44]
1AEF8A:  ADD             R0, SP, #0x50+var_2C
1AEF8C:  ADD             R1, SP, #0x50+var_24
1AEF8E:  MOV             R2, R10
1AEF90:  LDR.W           R8, [R6]
1AEF94:  BLX             j_silk_sum_sqr_shift
1AEF98:  ADD             R0, SP, #0x50+var_30
1AEF9A:  STR             R0, [SP,#0x50+var_50]
1AEF9C:  ADD             R0, SP, #0x50+var_28
1AEF9E:  STRD.W          R0, R11, [SP,#0x50+var_4C]
1AEFA2:  SUB.W           R0, R10, R8,LSL#1
1AEFA6:  LDR             R1, [R7,#arg_0]
1AEFA8:  SUB.W           R8, R0, #4
1AEFAC:  MOVS            R2, #5
1AEFAE:  MOV             R3, R4
1AEFB0:  MOV             R0, R8
1AEFB2:  BLX             j_silk_corrMatrix_FIX
1AEFB6:  LDRD.W          R2, R12, [SP,#0x50+var_28]
1AEFBA:  STR             R6, [SP,#0x50+var_34]
1AEFBC:  SUB.W           R1, R12, R2
1AEFC0:  STR             R5, [SP,#0x50+var_3C]
1AEFC2:  CMP             R1, #1
1AEFC4:  BLT             loc_1AF074
1AEFC6:  LDM.W           R4, {R2,R3,R6}
1AEFCA:  LDRD.W          R5, R0, [R4,#0xC]
1AEFCE:  ASRS            R2, R1
1AEFD0:  LDR.W           LR, [R4,#0x14]
1AEFD4:  STR             R2, [R4]
1AEFD6:  ASR.W           R2, R3, R1
1AEFDA:  LDR             R3, [R4,#0x18]
1AEFDC:  ASRS            R0, R1
1AEFDE:  STR             R2, [R4,#4]
1AEFE0:  ASR.W           R2, R6, R1
1AEFE4:  LDR             R6, [R4,#0x20]
1AEFE6:  STR             R2, [R4,#8]
1AEFE8:  ASR.W           R2, R5, R1
1AEFEC:  LDR             R5, [R4,#0x24]
1AEFEE:  STR             R2, [R4,#0xC]
1AEFF0:  LDR             R2, [R4,#0x1C]
1AEFF2:  STR             R0, [R4,#0x10]
1AEFF4:  ASR.W           R0, LR, R1
1AEFF8:  STR             R0, [R4,#0x14]
1AEFFA:  ASR.W           R0, R3, R1
1AEFFE:  STR             R0, [R4,#0x18]
1AF000:  ASR.W           R0, R2, R1
1AF004:  STR             R0, [R4,#0x1C]
1AF006:  ASR.W           R0, R6, R1
1AF00A:  STR             R0, [R4,#0x20]
1AF00C:  ASR.W           R0, R5, R1
1AF010:  STR             R0, [R4,#0x24]
1AF012:  LDR             R0, [R4,#0x28]
1AF014:  ASRS            R0, R1
1AF016:  STR             R0, [R4,#0x28]
1AF018:  LDR             R0, [R4,#0x2C]
1AF01A:  ASRS            R0, R1
1AF01C:  STR             R0, [R4,#0x2C]
1AF01E:  LDR             R0, [R4,#0x30]
1AF020:  ASRS            R0, R1
1AF022:  STR             R0, [R4,#0x30]
1AF024:  LDR             R0, [R4,#0x34]
1AF026:  ASRS            R0, R1
1AF028:  STR             R0, [R4,#0x34]
1AF02A:  LDR             R0, [R4,#0x38]
1AF02C:  ASRS            R0, R1
1AF02E:  STR             R0, [R4,#0x38]
1AF030:  LDR             R0, [R4,#0x3C]
1AF032:  ASRS            R0, R1
1AF034:  STR             R0, [R4,#0x3C]
1AF036:  LDR             R0, [R4,#0x40]
1AF038:  ASRS            R0, R1
1AF03A:  STR             R0, [R4,#0x40]
1AF03C:  LDR             R0, [R4,#0x44]
1AF03E:  ASRS            R0, R1
1AF040:  STR             R0, [R4,#0x44]
1AF042:  LDR             R0, [R4,#0x48]
1AF044:  ASRS            R0, R1
1AF046:  STR             R0, [R4,#0x48]
1AF048:  LDR             R0, [R4,#0x4C]
1AF04A:  ASRS            R0, R1
1AF04C:  STR             R0, [R4,#0x4C]
1AF04E:  LDR             R0, [R4,#0x50]
1AF050:  ASRS            R0, R1
1AF052:  STR             R0, [R4,#0x50]
1AF054:  LDR             R0, [R4,#0x54]
1AF056:  ASRS            R0, R1
1AF058:  STR             R0, [R4,#0x54]
1AF05A:  LDR             R0, [R4,#0x58]
1AF05C:  ASRS            R0, R1
1AF05E:  STR             R0, [R4,#0x58]
1AF060:  LDR             R0, [R4,#0x5C]
1AF062:  ASRS            R0, R1
1AF064:  STR             R0, [R4,#0x5C]
1AF066:  LDR             R0, [R4,#0x60]
1AF068:  ASRS            R0, R1
1AF06A:  STR             R0, [R4,#0x60]
1AF06C:  LDR             R0, [SP,#0x50+var_30]
1AF06E:  ASRS            R0, R1
1AF070:  STR             R0, [SP,#0x50+var_30]
1AF072:  B               loc_1AF084
1AF074:  CMP.W           R1, #0xFFFFFFFF
1AF078:  BGT             loc_1AF084
1AF07A:  LDR             R0, [SP,#0x50+var_2C]
1AF07C:  NEGS            R1, R1
1AF07E:  MOV             R12, R2
1AF080:  ASRS            R0, R1
1AF082:  STR             R0, [SP,#0x50+var_2C]
1AF084:  LDR             R2, [R7,#arg_0]
1AF086:  MOV             R0, R8
1AF088:  MOV             R1, R10
1AF08A:  MOVS            R3, #5
1AF08C:  STRD.W          R9, R12, [SP,#0x50+var_50]
1AF090:  STR.W           R11, [SP,#0x50+var_48]
1AF094:  BLX             j_silk_corrVector_FIX
1AF098:  LDR             R0, [SP,#0x50+var_30]
1AF09A:  MOVW            R2, #0x7AE
1AF09E:  LDR.W           R11, [SP,#0x50+var_2C]
1AF0A2:  UXTH            R1, R0
1AF0A4:  SMULTB.W        R0, R0, R2
1AF0A8:  MULS            R1, R2
1AF0AA:  ORR.W           R0, R0, #1
1AF0AE:  ADD.W           R0, R0, R1,LSR#16
1AF0B2:  CMP             R0, R11
1AF0B4:  IT GT
1AF0B6:  MOVGT           R11, R0
1AF0B8:  LDM.W           R4, {R0,R6,R8}
1AF0BC:  MOV             R2, R11
1AF0BE:  LDR             R5, [R4,#0xC]
1AF0C0:  ASRS            R1, R0, #0x1F
1AF0C2:  STR.W           R10, [SP,#0x50+var_38]
1AF0C6:  LSLS            R1, R1, #0x11
1AF0C8:  MOV.W           R10, R11,ASR#31
1AF0CC:  ORR.W           R1, R1, R0,LSR#15
1AF0D0:  LSLS            R0, R0, #0x11
1AF0D2:  MOV             R3, R10
1AF0D4:  BLX             sub_221404
1AF0D8:  STR             R0, [R4]
1AF0DA:  ASRS            R0, R6, #0x1F
1AF0DC:  LSLS            R0, R0, #0x11
1AF0DE:  ORR.W           R1, R0, R6,LSR#15
1AF0E2:  LSLS            R0, R6, #0x11
1AF0E4:  MOV             R2, R11
1AF0E6:  MOV             R3, R10
1AF0E8:  BLX             sub_221404
1AF0EC:  STR             R0, [R4,#4]
1AF0EE:  MOV.W           R0, R8,ASR#31
1AF0F2:  LSLS            R0, R0, #0x11
1AF0F4:  ORR.W           R1, R0, R8,LSR#15
1AF0F8:  MOV.W           R0, R8,LSL#17
1AF0FC:  MOV             R2, R11
1AF0FE:  MOV             R3, R10
1AF100:  BLX             sub_221404
1AF104:  STR             R0, [R4,#8]
1AF106:  ASRS            R0, R5, #0x1F
1AF108:  LSLS            R0, R0, #0x11
1AF10A:  ORR.W           R1, R0, R5,LSR#15
1AF10E:  LSLS            R0, R5, #0x11
1AF110:  MOV             R2, R11
1AF112:  MOV             R3, R10
1AF114:  LDR             R5, [R4,#0x10]
1AF116:  BLX             sub_221404
1AF11A:  STR             R0, [R4,#0xC]
1AF11C:  ASRS            R0, R5, #0x1F
1AF11E:  LSLS            R0, R0, #0x11
1AF120:  ORR.W           R1, R0, R5,LSR#15
1AF124:  LSLS            R0, R5, #0x11
1AF126:  MOV             R2, R11
1AF128:  MOV             R3, R10
1AF12A:  LDR             R5, [R4,#0x14]
1AF12C:  BLX             sub_221404
1AF130:  STR             R0, [R4,#0x10]
1AF132:  ASRS            R0, R5, #0x1F
1AF134:  LSLS            R0, R0, #0x11
1AF136:  ORR.W           R1, R0, R5,LSR#15
1AF13A:  LSLS            R0, R5, #0x11
1AF13C:  MOV             R2, R11
1AF13E:  MOV             R3, R10
1AF140:  BLX             sub_221404
1AF144:  MOV             R5, R0
1AF146:  LDR             R0, [R4,#0x18]
1AF148:  MOV             R2, R11
1AF14A:  MOV             R3, R10
1AF14C:  ASRS            R1, R0, #0x1F
1AF14E:  LSLS            R1, R1, #0x11
1AF150:  ORR.W           R1, R1, R0,LSR#15
1AF154:  LSLS            R0, R0, #0x11
1AF156:  BLX             sub_221404
1AF15A:  LDR             R2, [R4,#0x1C]
1AF15C:  MOV             R3, R10
1AF15E:  STRD.W          R5, R0, [R4,#0x14]
1AF162:  ASRS            R0, R2, #0x1F
1AF164:  LSLS            R0, R0, #0x11
1AF166:  ORR.W           R1, R0, R2,LSR#15
1AF16A:  LSLS            R0, R2, #0x11
1AF16C:  MOV             R2, R11
1AF16E:  BLX             sub_221404
1AF172:  STR             R0, [R4,#0x1C]
1AF174:  MOV             R2, R11
1AF176:  LDR             R0, [R4,#0x20]
1AF178:  MOV             R3, R10
1AF17A:  ASRS            R1, R0, #0x1F
1AF17C:  LSLS            R1, R1, #0x11
1AF17E:  ORR.W           R1, R1, R0,LSR#15
1AF182:  LSLS            R0, R0, #0x11
1AF184:  BLX             sub_221404
1AF188:  STR             R0, [R4,#0x20]
1AF18A:  MOV             R2, R11
1AF18C:  LDR             R0, [R4,#0x24]
1AF18E:  MOV             R3, R10
1AF190:  ASRS            R1, R0, #0x1F
1AF192:  LSLS            R1, R1, #0x11
1AF194:  ORR.W           R1, R1, R0,LSR#15
1AF198:  LSLS            R0, R0, #0x11
1AF19A:  BLX             sub_221404
1AF19E:  STR             R0, [R4,#0x24]
1AF1A0:  MOV             R2, R11
1AF1A2:  LDR             R0, [R4,#0x28]
1AF1A4:  MOV             R3, R10
1AF1A6:  ASRS            R1, R0, #0x1F
1AF1A8:  LSLS            R1, R1, #0x11
1AF1AA:  ORR.W           R1, R1, R0,LSR#15
1AF1AE:  LSLS            R0, R0, #0x11
1AF1B0:  BLX             sub_221404
1AF1B4:  STR             R0, [R4,#0x28]
1AF1B6:  MOV             R2, R11
1AF1B8:  LDR             R0, [R4,#0x2C]
1AF1BA:  MOV             R3, R10
1AF1BC:  ASRS            R1, R0, #0x1F
1AF1BE:  LSLS            R1, R1, #0x11
1AF1C0:  ORR.W           R1, R1, R0,LSR#15
1AF1C4:  LSLS            R0, R0, #0x11
1AF1C6:  BLX             sub_221404
1AF1CA:  STR             R0, [R4,#0x2C]
1AF1CC:  MOV             R2, R11
1AF1CE:  LDR             R0, [R4,#0x30]
1AF1D0:  MOV             R3, R10
1AF1D2:  ASRS            R1, R0, #0x1F
1AF1D4:  LSLS            R1, R1, #0x11
1AF1D6:  ORR.W           R1, R1, R0,LSR#15
1AF1DA:  LSLS            R0, R0, #0x11
1AF1DC:  BLX             sub_221404
1AF1E0:  STR             R0, [R4,#0x30]
1AF1E2:  MOV             R2, R11
1AF1E4:  LDR             R0, [R4,#0x34]
1AF1E6:  MOV             R3, R10
1AF1E8:  ASRS            R1, R0, #0x1F
1AF1EA:  LSLS            R1, R1, #0x11
1AF1EC:  ORR.W           R1, R1, R0,LSR#15
1AF1F0:  LSLS            R0, R0, #0x11
1AF1F2:  BLX             sub_221404
1AF1F6:  STR             R0, [R4,#0x34]
1AF1F8:  MOV             R2, R11
1AF1FA:  LDR             R0, [R4,#0x38]
1AF1FC:  MOV             R3, R10
1AF1FE:  ASRS            R1, R0, #0x1F
1AF200:  LSLS            R1, R1, #0x11
1AF202:  ORR.W           R1, R1, R0,LSR#15
1AF206:  LSLS            R0, R0, #0x11
1AF208:  BLX             sub_221404
1AF20C:  STR             R0, [R4,#0x38]
1AF20E:  MOV             R2, R11
1AF210:  LDR             R0, [R4,#0x3C]
1AF212:  MOV             R3, R10
1AF214:  ASRS            R1, R0, #0x1F
1AF216:  LSLS            R1, R1, #0x11
1AF218:  ORR.W           R1, R1, R0,LSR#15
1AF21C:  LSLS            R0, R0, #0x11
1AF21E:  BLX             sub_221404
1AF222:  STR             R0, [R4,#0x3C]
1AF224:  MOV             R2, R11
1AF226:  LDR             R0, [R4,#0x40]
1AF228:  MOV             R3, R10
1AF22A:  ASRS            R1, R0, #0x1F
1AF22C:  LSLS            R1, R1, #0x11
1AF22E:  ORR.W           R1, R1, R0,LSR#15
1AF232:  LSLS            R0, R0, #0x11
1AF234:  BLX             sub_221404
1AF238:  STR             R0, [R4,#0x40]
1AF23A:  MOV             R2, R11
1AF23C:  LDR             R0, [R4,#0x44]
1AF23E:  MOV             R3, R10
1AF240:  ASRS            R1, R0, #0x1F
1AF242:  LSLS            R1, R1, #0x11
1AF244:  ORR.W           R1, R1, R0,LSR#15
1AF248:  LSLS            R0, R0, #0x11
1AF24A:  BLX             sub_221404
1AF24E:  STR             R0, [R4,#0x44]
1AF250:  MOV             R2, R11
1AF252:  LDR             R0, [R4,#0x48]
1AF254:  MOV             R3, R10
1AF256:  ASRS            R1, R0, #0x1F
1AF258:  LSLS            R1, R1, #0x11
1AF25A:  ORR.W           R1, R1, R0,LSR#15
1AF25E:  LSLS            R0, R0, #0x11
1AF260:  BLX             sub_221404
1AF264:  STR             R0, [R4,#0x48]
1AF266:  MOV             R2, R11
1AF268:  LDR             R0, [R4,#0x4C]
1AF26A:  MOV             R3, R10
1AF26C:  ASRS            R1, R0, #0x1F
1AF26E:  LSLS            R1, R1, #0x11
1AF270:  ORR.W           R1, R1, R0,LSR#15
1AF274:  LSLS            R0, R0, #0x11
1AF276:  BLX             sub_221404
1AF27A:  STR             R0, [R4,#0x4C]
1AF27C:  MOV             R2, R11
1AF27E:  LDR             R0, [R4,#0x50]
1AF280:  MOV             R3, R10
1AF282:  ASRS            R1, R0, #0x1F
1AF284:  LSLS            R1, R1, #0x11
1AF286:  ORR.W           R1, R1, R0,LSR#15
1AF28A:  LSLS            R0, R0, #0x11
1AF28C:  BLX             sub_221404
1AF290:  STR             R0, [R4,#0x50]
1AF292:  MOV             R2, R11
1AF294:  LDR             R0, [R4,#0x54]
1AF296:  MOV             R3, R10
1AF298:  ASRS            R1, R0, #0x1F
1AF29A:  LSLS            R1, R1, #0x11
1AF29C:  ORR.W           R1, R1, R0,LSR#15
1AF2A0:  LSLS            R0, R0, #0x11
1AF2A2:  BLX             sub_221404
1AF2A6:  STR             R0, [R4,#0x54]
1AF2A8:  MOV             R2, R11
1AF2AA:  LDR             R0, [R4,#0x58]
1AF2AC:  MOV             R3, R10
1AF2AE:  ASRS            R1, R0, #0x1F
1AF2B0:  LSLS            R1, R1, #0x11
1AF2B2:  ORR.W           R1, R1, R0,LSR#15
1AF2B6:  LSLS            R0, R0, #0x11
1AF2B8:  BLX             sub_221404
1AF2BC:  STR             R0, [R4,#0x58]
1AF2BE:  MOV             R2, R11
1AF2C0:  LDR             R0, [R4,#0x5C]
1AF2C2:  MOV             R3, R10
1AF2C4:  ASRS            R1, R0, #0x1F
1AF2C6:  LSLS            R1, R1, #0x11
1AF2C8:  ORR.W           R1, R1, R0,LSR#15
1AF2CC:  LSLS            R0, R0, #0x11
1AF2CE:  BLX             sub_221404
1AF2D2:  STR             R0, [R4,#0x5C]
1AF2D4:  MOV             R2, R11
1AF2D6:  LDR             R0, [R4,#0x60]
1AF2D8:  MOV             R3, R10
1AF2DA:  ASRS            R1, R0, #0x1F
1AF2DC:  LSLS            R1, R1, #0x11
1AF2DE:  ORR.W           R1, R1, R0,LSR#15
1AF2E2:  LSLS            R0, R0, #0x11
1AF2E4:  BLX             sub_221404
1AF2E8:  STR             R0, [R4,#0x60]
1AF2EA:  MOV             R2, R11
1AF2EC:  LDM.W           R9, {R0,R5,R6,R8}
1AF2F0:  MOV             R3, R10
1AF2F2:  ASRS            R1, R0, #0x1F
1AF2F4:  LSLS            R1, R1, #0x11
1AF2F6:  ORR.W           R1, R1, R0,LSR#15
1AF2FA:  LSLS            R0, R0, #0x11
1AF2FC:  BLX             sub_221404
1AF300:  STR.W           R0, [R9]
1AF304:  ASRS            R0, R5, #0x1F
1AF306:  LSLS            R0, R0, #0x11
1AF308:  ORR.W           R1, R0, R5,LSR#15
1AF30C:  LSLS            R0, R5, #0x11
1AF30E:  MOV             R2, R11
1AF310:  MOV             R3, R10
1AF312:  BLX             sub_221404
1AF316:  STR.W           R0, [R9,#4]
1AF31A:  ASRS            R0, R6, #0x1F
1AF31C:  LSLS            R0, R0, #0x11
1AF31E:  ORR.W           R1, R0, R6,LSR#15
1AF322:  LSLS            R0, R6, #0x11
1AF324:  MOV             R2, R11
1AF326:  MOV             R3, R10
1AF328:  BLX             sub_221404
1AF32C:  STR.W           R0, [R9,#8]
1AF330:  MOV.W           R0, R8,ASR#31
1AF334:  LSLS            R0, R0, #0x11
1AF336:  ORR.W           R1, R0, R8,LSR#15
1AF33A:  MOV.W           R0, R8,LSL#17
1AF33E:  MOV             R2, R11
1AF340:  MOV             R3, R10
1AF342:  LDR.W           R5, [R9,#0x10]
1AF346:  BLX             sub_221404
1AF34A:  STR.W           R0, [R9,#0xC]
1AF34E:  ASRS            R0, R5, #0x1F
1AF350:  LSLS            R0, R0, #0x11
1AF352:  ORR.W           R1, R0, R5,LSR#15
1AF356:  MOV             R2, R11
1AF358:  MOV             R3, R10
1AF35A:  LSLS            R0, R5, #0x11
1AF35C:  LDR.W           R11, [R7,#arg_8]
1AF360:  LDR.W           R10, [SP,#0x50+var_38]
1AF364:  BLX             sub_221404
1AF368:  STR.W           R0, [R9,#0x10]
1AF36C:  ADD.W           R9, R9, #0x14
1AF370:  LDR             R5, [SP,#0x50+var_3C]
1AF372:  ADDS            R4, #0x64 ; 'd'
1AF374:  LDR             R6, [SP,#0x50+var_34]
1AF376:  LDR             R0, [SP,#0x50+var_40]
1AF378:  SUBS            R5, #1
1AF37A:  ADD.W           R6, R6, #4
1AF37E:  ADD             R10, R0
1AF380:  BNE.W           loc_1AEF88
1AF384:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AF38C)
1AF386:  LDR             R1, [SP,#0x50+var_20]
1AF388:  ADD             R0, PC; __stack_chk_guard_ptr
1AF38A:  LDR             R0, [R0]; __stack_chk_guard
1AF38C:  LDR             R0, [R0]
1AF38E:  SUBS            R0, R0, R1
1AF390:  ITTT EQ
1AF392:  ADDEQ           SP, SP, #0x34 ; '4'
1AF394:  POPEQ.W         {R8-R11}
1AF398:  POPEQ           {R4-R7,PC}
1AF39A:  BLX             __stack_chk_fail
