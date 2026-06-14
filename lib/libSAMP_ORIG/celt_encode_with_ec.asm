; =========================================================
; Game Engine Function: celt_encode_with_ec
; Address            : 0xD6FE0 - 0xD9876
; =========================================================

D6FE0:  PUSH            {R4-R7,LR}
D6FE2:  ADD             R7, SP, #0xC
D6FE4:  PUSH.W          {R8-R11}
D6FE8:  SUB             SP, SP, #0x16C
D6FEA:  MOV             R5, R1
D6FEC:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xD6FF8)
D6FF0:  MOV             R8, R3
D6FF2:  CMP             R5, #0
D6FF4:  ADD             R1, PC; __stack_chk_guard_ptr
D6FF6:  MOV             R6, SP
D6FF8:  LDR             R1, [R1]; __stack_chk_guard
D6FFA:  LDR             R1, [R1]
D6FFC:  STR.W           R1, [R7,#var_24]
D7000:  LDRD.W          R4, R1, [R0]
D7004:  STR.W           R1, [R7,#var_BC]
D7008:  MOV.W           R1, #0xF
D700C:  LDR.W           LR, [R0,#8]
D7010:  STR.W           R1, [R7,#var_8C]
D7014:  MOV.W           R1, #0
D7018:  STRH.W          R1, [R7,#var_8E]
D701C:  STRD.W          R1, R1, [R7,#var_98]
D7020:  STR.W           R1, [R7,#var_A4]
D7024:  LDRD.W          R12, R10, [R0,#0x20]
D7028:  LDR             R3, [R4,#4]
D702A:  STR.W           R3, [R7,#var_EC]
D702E:  LDR             R3, [R4,#8]
D7030:  STR.W           R3, [R7,#var_DC]
D7034:  STR.W           R4, [R7,#var_CC]
D7038:  LDR             R3, [R4,#0x18]
D703A:  STR.W           R3, [R7,#var_E8]
D703E:  MOV.W           R3, #0xFFFFFFFF
D7042:  STRH.W          R1, [R7,#var_9A]
D7046:  STR.W           R5, [R7,#n]
D704A:  BEQ.W           loc_D92DA
D704E:  LDR.W           R9, [R7,#arg_0]
D7052:  CMP.W           R9, #2
D7056:  BLT.W           loc_D92DA
D705A:  MOV             R1, R0
D705C:  STR.W           R1, [R7,#var_C0]
D7060:  LDR             R0, [R0,#0x1C]
D7062:  LDR.W           R1, [R7,#var_CC]
D7066:  MUL.W           R4, R0, R2
D706A:  LDR             R0, [R1,#0x1C]
D706C:  CMP             R0, #0
D706E:  BLT             loc_D7090
D7070:  LDR             R1, [R1,#0x24]
D7072:  MOVS            R2, #0
D7074:  LSL.W           R3, R1, R2
D7078:  CMP             R3, R4
D707A:  BEQ             loc_D70DE
D707C:  ADDS            R3, R2, #1
D707E:  CMP             R2, R0
D7080:  MOV             R2, R3
D7082:  BLT             loc_D7074
D7084:  CMP             R3, R0
D7086:  BLE             loc_D7096
D7088:  MOV.W           R3, #0xFFFFFFFF
D708C:  B.W             loc_D92DA
D7090:  MOVS            R3, #0
D7092:  CMP             R3, R0
D7094:  BGT             loc_D7088
D7096:  STR.W           LR, [R7,#var_C4]
D709A:  MOV             R5, R10
D709C:  STRD.W          R12, R3, [R7,#var_D8]
D70A0:  LDR.W           R0, [R7,#var_CC]
D70A4:  STR.W           R5, [R7,#var_C8]
D70A8:  LDR.W           R11, [R7,#arg_4]
D70AC:  LDR.W           R10, [R0,#0x24]
D70B0:  CMP.W           R11, #0
D70B4:  BEQ             loc_D70E6
D70B6:  MOV             R0, R11
D70B8:  BLX             j_ec_tell_frac
D70BC:  STR             R0, [R6,#0x14]
D70BE:  LDR.W           R1, [R11,#0x1C]
D70C2:  LDR.W           R0, [R11,#0x14]
D70C6:  CLZ.W           R1, R1
D70CA:  ADD             R0, R1
D70CC:  SUB.W           R1, R0, #0x20 ; ' '
D70D0:  SUBS            R0, #0x1C
D70D2:  STR.W           R1, [R7,#var_F8]
D70D6:  ASRS            R0, R0, #3
D70D8:  STR.W           R0, [R7,#var_A8]
D70DC:  B               loc_D70F6
D70DE:  MOV             R3, R2
D70E0:  CMP             R3, R0
D70E2:  BGT             loc_D7088
D70E4:  B               loc_D7096
D70E6:  MOVS            R0, #0
D70E8:  STR.W           R0, [R7,#var_A8]
D70EC:  MOVS            R0, #1
D70EE:  STR             R0, [R6,#0x14]
D70F0:  MOVS            R0, #1
D70F2:  STR.W           R0, [R7,#var_F8]
D70F6:  MOVW            R5, #0x4FB
D70FA:  CMP             R9, R5
D70FC:  IT LT
D70FE:  MOVLT           R5, R9
D7100:  LDR.W           R0, [R7,#var_C0]
D7104:  LDRD.W          R9, R0, [R0,#0x28]
D7108:  CMP             R0, #0
D710A:  BEQ             loc_D7136
D710C:  LDR.W           R12, [R7,#var_CC]
D7110:  ADDS.W          R0, R9, #1
D7114:  BEQ             loc_D717E
D7116:  MUL.W           R0, R9, R4
D711A:  LDR.W           R1, [R12]
D711E:  ADD.W           R0, R0, R1,ASR#4
D7122:  ASRS            R1, R1, #3
D7124:  BLX             sub_108848
D7128:  STR             R0, [R6,#0x6C]
D712A:  ASRS            R0, R0, #6
D712C:  LDR.W           R12, [R7,#var_CC]
D7130:  MOV             R4, R5
D7132:  STR             R0, [R6,#0x5C]
D7134:  B               loc_D7190
D7136:  LDR.W           R12, [R7,#var_CC]
D713A:  ADDS.W          R0, R9, #1
D713E:  BEQ             loc_D717E
D7140:  LDR.W           R2, [R7,#var_F8]
D7144:  MUL.W           R0, R9, R4
D7148:  LDR.W           R1, [R12]
D714C:  CMP             R2, #1
D714E:  IT GT
D7150:  MLAGT.W         R0, R9, R4, R2
D7154:  ADD.W           R0, R0, R1,LSL#2
D7158:  LSLS            R1, R1, #3
D715A:  BLX             sub_108848
D715E:  MOV             R4, R0
D7160:  LDR.W           R0, [R7,#var_C0]
D7164:  LDR.W           R12, [R7,#var_CC]
D7168:  LDR             R0, [R0,#0x30]
D716A:  CMP             R0, #0
D716C:  IT NE
D716E:  SUBNE           R4, #1
D7170:  CMP             R5, R4
D7172:  IT LT
D7174:  MOVLT           R4, R5
D7176:  CMP             R4, #2
D7178:  IT LE
D717A:  MOVLE           R4, #2
D717C:  B               loc_D7184
D717E:  MOV.W           R9, #0xFFFFFFFF
D7182:  MOV             R4, R5
D7184:  LDR.W           R0, [R7,#var_A8]
D7188:  SUBS            R0, R4, R0
D718A:  STR             R0, [R6,#0x5C]
D718C:  MOVS            R0, #0
D718E:  STR             R0, [R6,#0x6C]
D7190:  LDR.W           R2, [R7,#var_C4]
D7194:  MOV.W           R0, #0x190
D7198:  MUL.W           R1, R4, R0
D719C:  ADD.W           R3, R2, R2,LSL#2
D71A0:  MOVS            R2, #0x14
D71A2:  STR             R3, [R6,#8]
D71A4:  ADD.W           R3, R2, R3,LSL#3
D71A8:  LDR.W           R2, [R7,#var_D4]
D71AC:  LSRS            R0, R2
D71AE:  RSB.W           R2, R2, #3
D71B2:  SUBS            R0, #0x32 ; '2'
D71B4:  STR             R2, [R6,#0x3C]
D71B6:  ASRS            R1, R2
D71B8:  STRD.W          R4, R3, [R6,#0x84]
D71BC:  MLS.W           R2, R0, R3, R1
D71C0:  ADDS.W          R1, R9, #1
D71C4:  BEQ             loc_D71D2
D71C6:  MULS            R0, R3
D71C8:  SUB.W           R0, R9, R0
D71CC:  CMP             R2, R0
D71CE:  IT GE
D71D0:  MOVGE           R2, R0
D71D2:  LDR.W           R0, [R7,#var_EC]
D71D6:  CMP.W           R11, #0
D71DA:  STR             R2, [R6,#0x28]
D71DC:  ADD.W           R4, R0, #0x400
D71E0:  LDR.W           R0, [R7,#var_A8]
D71E4:  SUB.W           R0, R5, R0
D71E8:  STR             R0, [R6,#0x68]
D71EA:  BNE             loc_D7200
D71EC:  SUB.W           R11, R7, #-var_88
D71F0:  LDR.W           R2, [R6,#0x84]
D71F4:  MOV             R1, R8
D71F6:  MOV             R0, R11
D71F8:  BLX             j_ec_enc_init
D71FC:  LDR.W           R12, [R7,#var_CC]
D7200:  LDR.W           R0, [R7,#var_BC]
D7204:  LDR.W           R1, [R7,#var_C0]
D7208:  MUL.W           R9, R4, R0
D720C:  LDR.W           R0, [R7,#var_D4]
D7210:  ADD.W           R2, R1, #0xF4
D7214:  LSL.W           R3, R10, R0
D7218:  LDR             R0, [R6,#0x6C]
D721A:  STR.W           R3, [R7,#var_E4]
D721E:  CMP             R0, #1
D7220:  BLT             loc_D726E
D7222:  LDR             R0, [R1,#0x34]
D7224:  LDRD.W          R5, R8, [R7,#var_C8]
D7228:  CBZ             R0, loc_D7272
D722A:  LDR.W           R0, [R1,#0xD0]
D722E:  MOVS            R4, #0
D7230:  LDR.W           R1, [R7,#var_F8]
D7234:  CMP             R1, #1
D7236:  IT EQ
D7238:  MOVEQ           R4, #2
D723A:  LDR             R1, [R6,#0x6C]
D723C:  RSB.W           R0, R0, R1,LSL#1
D7240:  CMP.W           R4, R0,ASR#6
D7244:  IT LE
D7246:  ASRLE           R4, R0, #6
D7248:  LDR             R0, [R6,#0x68]
D724A:  CMP             R4, R0
D724C:  BGE             loc_D7272
D724E:  LDR.W           R0, [R7,#var_A8]
D7252:  MOV             R10, R2
D7254:  ADDS            R1, R4, R0
D7256:  MOV             R0, R11
D7258:  STR.W           R1, [R6,#0x84]
D725C:  BLX             j_ec_enc_shrink
D7260:  LDR.W           R3, [R7,#var_E4]
D7264:  MOV             R2, R10
D7266:  LDR.W           R12, [R7,#var_CC]
D726A:  STR             R4, [R6,#0x68]
D726C:  B               loc_D7272
D726E:  LDRD.W          R5, R8, [R7,#var_C8]
D7272:  LDR.W           R0, [R7,#var_BC]
D7276:  ADD.W           R10, R2, R9,LSL#2
D727A:  LDR.W           R1, [R7,#var_DC]
D727E:  STR.W           R2, [R7,#var_B0]
D7282:  LDR.W           R2, [R7,#var_EC]
D7286:  MULS            R1, R0
D7288:  LSLS            R0, R0, #2
D728A:  STR.W           R0, [R6,#0x80]
D728E:  STR.W           R11, [R7,#var_AC]
D7292:  STR.W           R9, [R6,#0x48]
D7296:  STR             R1, [R6,#0x7C]
D7298:  ADDS            R1, R3, R2
D729A:  STR.W           R1, [R7,#var_E0]
D729E:  MULS            R1, R0
D72A0:  SUBS            R0, R3, R2
D72A2:  LDR.W           R2, [R12,#0xC]
D72A6:  MUL.W           R0, R0, R8
D72AA:  STR             R2, [R6,#0x24]
D72AC:  CMP             R5, R2
D72AE:  IT GT
D72B0:  MOVGT           R5, R2
D72B2:  ADDS            R1, #7
D72B4:  STR             R5, [R6,#0x70]
D72B6:  BIC.W           R1, R1, #7
D72BA:  SUB.W           R1, SP, R1
D72BE:  STR.W           R1, [R7,#var_D0]
D72C2:  MOV             SP, R1
D72C4:  LDR.W           R1, [R7,#var_C0]
D72C8:  LDR.W           R8, [R1,#0x1C]
D72CC:  LDR.W           R9, [R1,#0xE0]
D72D0:  MOV             R1, R8
D72D2:  BLX             sub_108848
D72D6:  MOV             R11, R0
D72D8:  MOVS            R0, #0
D72DA:  CMP.W           R11, #1
D72DE:  BLT             loc_D7304
D72E0:  LDR.W           R1, [R7,#n]
D72E4:  MOV             R2, R11
D72E6:  MOVS            R3, #0
D72E8:  LDRSH.W         R4, [R1],#2
D72EC:  SXTH            R5, R0
D72EE:  CMP             R5, R4
D72F0:  SXTH            R5, R3
D72F2:  IT GE
D72F4:  MOVGE           R0, R4
D72F6:  CMP             R5, R4
D72F8:  IT LE
D72FA:  MOVLE           R3, R4
D72FC:  SUBS            R2, #1
D72FE:  BNE             loc_D72E8
D7300:  SXTH            R1, R3
D7302:  B               loc_D7306
D7304:  MOVS            R1, #0
D7306:  SXTH            R0, R0
D7308:  LDR             R3, [R6,#0x7C]
D730A:  NEGS            R0, R0
D730C:  CMP             R1, R0
D730E:  IT GT
D7310:  MOVGT           R0, R1
D7312:  LDR.W           R2, [R6,#0x84]
D7316:  ADD.W           R5, R10, R3,LSL#1
D731A:  CMP             R9, R0
D731C:  BGT             loc_D7364
D731E:  CMP.W           R11, #1
D7322:  BLT             loc_D7354
D7324:  LDR.W           R1, [R7,#n]
D7328:  MOV             R12, R5
D732A:  MOVS            R0, #0
D732C:  MOV             R2, R11
D732E:  MOVS            R3, #0
D7330:  LDRSH.W         R5, [R1],#2
D7334:  SXTH            R4, R0
D7336:  CMP             R4, R5
D7338:  SXTH            R4, R3
D733A:  IT GE
D733C:  MOVGE           R0, R5
D733E:  CMP             R4, R5
D7340:  IT LE
D7342:  MOVLE           R3, R5
D7344:  SUBS            R2, #1
D7346:  BNE             loc_D7330
D7348:  SXTH            R1, R3
D734A:  LDR.W           R2, [R6,#0x84]
D734E:  LDR             R3, [R6,#0x7C]
D7350:  MOV             R5, R12
D7352:  B               loc_D7358
D7354:  MOVS            R0, #0
D7356:  MOVS            R1, #0
D7358:  SXTH            R0, R0
D735A:  RSB.W           R9, R0, #0
D735E:  CMP             R1, R9
D7360:  IT GT
D7362:  MOVGT           R9, R1
D7364:  LDR.W           R0, [R7,#var_BC]
D7368:  LDR.W           R1, [R7,#var_EC]
D736C:  STR.W           R10, [R6,#0x78]
D7370:  STR             R5, [R6,#0x10]
D7372:  MUL.W           R10, R1, R0
D7376:  ADD.W           R0, R5, R3,LSL#1
D737A:  STR             R0, [R6,#0x40]
D737C:  LSLS            R0, R2, #3
D737E:  STR.W           R0, [R7,#var_F4]
D7382:  LDR.W           R0, [R7,#var_C4]
D7386:  MULS            R0, R1
D7388:  MOV             R1, R8
D738A:  BLX             sub_108848
D738E:  CMP             R0, #1
D7390:  BLT             loc_D73C6
D7392:  LDR.W           LR, [R7,#n]
D7396:  MOVS            R1, #0
D7398:  MOVS            R3, #0
D739A:  MOV.W           R12, #1
D739E:  ADD.W           R2, LR, R11,LSL#1
D73A2:  LDRSH.W         R5, [R2],#2
D73A6:  SXTH            R4, R1
D73A8:  CMP             R4, R5
D73AA:  SXTH            R4, R3
D73AC:  IT GE
D73AE:  MOVGE           R1, R5
D73B0:  CMP             R4, R5
D73B2:  IT LE
D73B4:  MOVLE           R3, R5
D73B6:  SUBS            R0, #1
D73B8:  BNE             loc_D73A2
D73BA:  LDR.W           R8, [R7,#var_AC]
D73BE:  SXTH            R0, R3
D73C0:  LDR.W           R2, [R7,#var_D4]
D73C4:  B               loc_D73DA
D73C6:  MOVS            R1, #0
D73C8:  MOVS            R0, #0
D73CA:  LDR.W           R8, [R7,#var_AC]
D73CE:  MOV.W           R12, #1
D73D2:  LDR.W           R2, [R7,#var_D4]
D73D6:  LDR.W           LR, [R7,#n]
D73DA:  LSL.W           R2, R12, R2
D73DE:  SXTH            R1, R1
D73E0:  STR             R2, [R6,#0x44]
D73E2:  NEGS            R4, R1
D73E4:  LDR.W           R2, [R7,#var_B0]
D73E8:  CMP             R0, R4
D73EA:  LDR             R3, [R6,#0x40]
D73EC:  ADD.W           R10, R2, R10,LSL#2
D73F0:  LDR             R2, [R6,#0x7C]
D73F2:  IT GT
D73F4:  MOVGT           R4, R0
D73F6:  LDR.W           R0, [R7,#var_C0]
D73FA:  CMP             R9, R4
D73FC:  ADD.W           R5, R3, R2,LSL#1
D7400:  STR.W           R4, [R0,#0xE0]
D7404:  MOV.W           R0, #0
D7408:  IT GT
D740A:  MOVGT           R4, R9
D740C:  STR             R0, [R6,#0x60]
D740E:  LDR.W           R0, [R7,#var_F8]
D7412:  STR             R5, [R6,#0x38]
D7414:  CMP             R0, #1
D7416:  STR.W           R10, [R7,#var_FC]
D741A:  BNE             loc_D7448
D741C:  CMP             R4, #0
D741E:  MOV.W           R1, #0
D7422:  IT EQ
D7424:  MOVEQ           R1, #1
D7426:  MOV             R0, R8
D7428:  MOVS            R2, #0xF
D742A:  BLX             j_ec_enc_bit_logp
D742E:  CBZ             R4, loc_D7456
D7430:  MOVS            R0, #1
D7432:  LDR.W           R3, [R7,#var_C0]
D7436:  STR.W           R0, [R7,#var_F8]
D743A:  LDR.W           R12, [R7,#var_CC]
D743E:  LDR.W           R4, [R7,#var_E4]
D7442:  LDR.W           LR, [R7,#n]
D7446:  B               loc_D74CC
D7448:  LDR.W           R3, [R7,#var_C0]
D744C:  LDR.W           R12, [R7,#var_CC]
D7450:  LDR.W           R4, [R7,#var_E4]
D7454:  B               loc_D74CC
D7456:  LDR             R0, [R6,#0x6C]
D7458:  CMP             R0, #1
D745A:  BLT             loc_D748C
D745C:  LDR.W           R0, [R7,#var_A8]
D7460:  ADDS            R4, R0, #2
D7462:  LDR.W           R0, [R6,#0x84]
D7466:  CMP             R0, R4
D7468:  IT LT
D746A:  MOVLT           R4, R0
D746C:  MOV             R0, R8
D746E:  MOV             R1, R4
D7470:  BLX             j_ec_enc_shrink
D7474:  LDR.W           R9, [R7,#var_C0]
D7478:  LSLS            R0, R4, #3
D747A:  LDR.W           R12, [R7,#var_CC]
D747E:  MOV             R3, R4
D7480:  STR.W           R0, [R7,#var_F4]
D7484:  MOVS            R0, #2
D7486:  STR             R0, [R6,#0x68]
D7488:  STR             R4, [R6,#0x5C]
D748A:  B               loc_D7498
D748C:  LDR.W           R9, [R7,#var_C0]
D7490:  LDR.W           R12, [R7,#var_CC]
D7494:  LDR.W           R3, [R6,#0x84]
D7498:  LDR.W           R0, [R8,#0x14]
D749C:  LDR.W           R1, [R8,#0x1C]
D74A0:  RSB.W           R2, R0, #0x20 ; ' '
D74A4:  LDR.W           R4, [R7,#var_E4]
D74A8:  ADD.W           R2, R2, R3,LSL#3
D74AC:  CLZ.W           R1, R1
D74B0:  SUBS            R1, R2, R1
D74B2:  LDR.W           LR, [R7,#n]
D74B6:  ADD             R0, R1
D74B8:  STR.W           R0, [R8,#0x14]
D74BC:  LSLS            R0, R3, #3
D74BE:  STR.W           R3, [R6,#0x84]
D74C2:  STR.W           R0, [R7,#var_F8]
D74C6:  MOVS            R0, #1
D74C8:  MOV             R3, R9
D74CA:  STR             R0, [R6,#0x60]
D74CC:  LDR.W           R0, [R7,#var_EC]
D74D0:  LDR.W           R1, [R7,#var_D0]
D74D4:  ADD.W           R8, R1, R0,LSL#2
D74D8:  LDR.W           R0, [R7,#var_E0]
D74DC:  MOVS            R1, #0
D74DE:  LSLS            R0, R0, #2
D74E0:  STR.W           R0, [R7,#var_B8]
D74E4:  LDR.W           R0, [R7,#var_BC]
D74E8:  MOV.W           R10, R0,LSL#1
D74EC:  LSLS            R0, R4, #2
D74EE:  STR.W           R0, [R7,#dest]
D74F2:  ADD.W           R2, R3, R1,LSL#2
D74F6:  LDR             R5, [R3,#0x1C]
D74F8:  LDRSH.W         R11, [R12,#0x10]
D74FC:  LDR.W           R9, [R2,#0xC0]!
D7500:  CMP             R5, #1
D7502:  STR.W           R1, [R7,#var_A8]
D7506:  STR.W           R2, [R7,#var_B0]
D750A:  ITT EQ
D750C:  LDRHEQ.W        R0, [R12,#0x12]
D7510:  CMPEQ           R0, #0
D7512:  BNE             loc_D753A
D7514:  CMP             R4, #1
D7516:  BLT             loc_D75B8
D7518:  MOV             R0, R8
D751A:  MOV             R1, R4
D751C:  MOV             R2, LR
D751E:  LDRSH.W         R3, [R2]
D7522:  ADD             R2, R10
D7524:  SUBS            R1, #1
D7526:  SMULBB.W        R5, R3, R11
D752A:  RSB.W           R3, R9, R3,LSL#12
D752E:  STR.W           R3, [R0],#4
D7532:  MOV.W           R9, R5,ASR#3
D7536:  BNE             loc_D751E
D7538:  B               loc_D75B8
D753A:  MOV             R0, R4
D753C:  MOV             R1, R5
D753E:  STR.W           LR, [R7,#n]
D7542:  BLX             sub_108848
D7546:  MOV             R4, R0
D7548:  CMP             R5, #1
D754A:  BEQ             loc_D756E
D754C:  LDR.W           R0, [R7,#var_E0]
D7550:  LDR.W           R1, [R7,#var_A8]
D7554:  MULS            R0, R1
D7556:  LDR.W           R1, [R7,#var_D0]
D755A:  ADD.W           R0, R1, R0,LSL#2
D755E:  LDR.W           R1, [R7,#var_EC]
D7562:  ADD.W           R0, R0, R1,LSL#2; int
D7566:  LDR.W           R1, [R7,#dest]; n
D756A:  BLX             sub_10967C
D756E:  LDR.W           LR, [R7,#n]
D7572:  CMP             R4, #1
D7574:  BLT             loc_D758C
D7576:  LSLS            R0, R5, #2
D7578:  MOVS            R1, #0
D757A:  MOVS            R2, #0
D757C:  LDRSH.W         R3, [LR,R1]
D7580:  ADD             R1, R10
D7582:  STR.W           R3, [R8,R2]
D7586:  ADD             R2, R0
D7588:  SUBS            R4, #1
D758A:  BNE             loc_D757C
D758C:  LDR.W           R4, [R7,#var_E4]
D7590:  LDR.W           R12, [R7,#var_CC]
D7594:  CMP             R4, #1
D7596:  BLT             loc_D75B8
D7598:  MOVS            R0, #0
D759A:  LDR.W           R1, [R8,R0,LSL#2]
D759E:  SXTH            R2, R1
D75A0:  LSLS            R1, R1, #0x10
D75A2:  SMULBB.W        R2, R2, R11
D75A6:  RSB.W           R1, R9, R1,ASR#4
D75AA:  STR.W           R1, [R8,R0,LSL#2]
D75AE:  ADDS            R0, #1
D75B0:  CMP             R4, R0
D75B2:  MOV.W           R9, R2,ASR#3
D75B6:  BNE             loc_D759A
D75B8:  LDR.W           R0, [R7,#var_B0]
D75BC:  ADD.W           LR, LR, #2
D75C0:  STR.W           R9, [R0]
D75C4:  LDR.W           R0, [R7,#var_B8]
D75C8:  LDR.W           R1, [R7,#var_A8]
D75CC:  ADD             R8, R0
D75CE:  LDR.W           R0, [R7,#var_BC]
D75D2:  LDR.W           R3, [R7,#var_C0]
D75D6:  ADDS            R1, #1
D75D8:  CMP             R1, R0
D75DA:  BLT             loc_D74F2
D75DC:  LDR             R0, [R6,#0x68]
D75DE:  CMP             R0, #4
D75E0:  BLT             loc_D75F8
D75E2:  LDR             R0, [R3,#0x40]
D75E4:  CBZ             R0, loc_D75F8
D75E6:  LDR.W           R0, [R7,#var_D8]
D75EA:  LDR             R1, [R6,#0x60]
D75EC:  LDR.W           R10, [R7,#var_AC]
D75F0:  ORRS            R0, R1
D75F2:  BEQ             loc_D761A
D75F4:  MOVS            R0, #0
D75F6:  B               loc_D762E
D75F8:  LDR.W           R0, [R7,#var_D8]
D75FC:  LDR             R1, [R6,#0x60]
D75FE:  ORRS            R0, R1
D7600:  MOV.W           R0, #0
D7604:  BNE             loc_D762A
D7606:  LDR.W           R1, [R7,#var_C4]
D760A:  LDR             R2, [R6,#0x68]
D760C:  LDR.W           R10, [R7,#var_AC]
D7610:  ADD.W           R1, R1, R1,LSL#1
D7614:  LSLS            R1, R1, #2
D7616:  CMP             R2, R1
D7618:  BLE             loc_D762E
D761A:  LDR             R1, [R3,#0x14]
D761C:  MOVS            R0, #0
D761E:  CBNZ            R1, loc_D762E
D7620:  LDR             R1, [R3,#0x18]
D7622:  CMP             R1, #4
D7624:  IT GT
D7626:  MOVGT           R0, #1
D7628:  B               loc_D762E
D762A:  LDR.W           R10, [R7,#var_AC]
D762E:  MOV             R1, R3
D7630:  LDR.W           R5, [R1,#0x64]!
D7634:  STR             R1, [R6,#4]
D7636:  SUB             SP, SP, #0x20 ; ' '
D7638:  SUB.W           R1, R7, #-var_8E
D763C:  SUB.W           R11, R7, #-var_58
D7640:  SUB.W           R2, R7, #-var_8C
D7644:  STRD.W          R4, R5, [SP,#0x1A8+var_1A8]; int
D7648:  STRD.W          R2, R1, [SP,#0x1A8+var_1A0]; int
D764C:  STRD.W          R11, R0, [SP,#0x1A8+var_198]; int
D7650:  LDR             R0, [R6,#0x68]
D7652:  STR             R0, [SP,#0x1A8+var_190]; int
D7654:  MOV             R0, R3; int
D7656:  LDR.W           R1, [R7,#var_D0]; int
D765A:  LDR.W           R2, [R7,#var_FC]; src
D765E:  LDR.W           R3, [R7,#var_BC]; int
D7662:  BL              sub_D9888
D7666:  ADD             SP, SP, #0x20 ; ' '
D7668:  LDR.W           LR, [R7,#var_D4]
D766C:  CMP             R0, #0
D766E:  STR             R0, [R6]
D7670:  BEQ             loc_D76D8
D7672:  MOV             R0, R10
D7674:  MOVS            R1, #1
D7676:  MOVS            R2, #1
D7678:  BLX             j_ec_enc_bit_logp
D767C:  LDR.W           R8, [R7,#var_8C]
D7680:  MOV             R11, R5
D7682:  MOV             R0, R10
D7684:  MOVS            R2, #6
D7686:  ADD.W           R5, R8, #1
D768A:  CLZ.W           R9, R5
D768E:  RSB.W           R4, R9, #0x1B
D7692:  MOV             R1, R4
D7694:  BLX             j_ec_enc_uint
D7698:  MOVS            R0, #0x10
D769A:  RSB.W           R2, R9, #0x1F
D769E:  LSLS            R0, R4
D76A0:  SUBS            R1, R5, R0
D76A2:  MOV             R0, R10
D76A4:  MOV             R5, R11
D76A6:  SUB.W           R11, R7, #-var_58
D76AA:  BLX             j_ec_enc_bits
D76AE:  LDR.W           R1, [R7,#var_58]
D76B2:  MOV             R0, R10
D76B4:  MOVS            R2, #3
D76B6:  STR.W           R8, [R7,#var_8C]
D76BA:  BLX             j_ec_enc_bits
D76BE:  LDR.W           R2, =(unk_5C988 - 0xD76CC)
D76C2:  MOV             R0, R10
D76C4:  MOV             R1, R5
D76C6:  MOVS            R3, #2
D76C8:  ADD             R2, PC; unk_5C988
D76CA:  BLX             j_ec_enc_icdf
D76CE:  LDR.W           LR, [R7,#var_D4]
D76D2:  LDRD.W          R4, R8, [R6,#0x7C]
D76D6:  B               loc_D76FE
D76D8:  LDR.W           R0, [R7,#var_D8]
D76DC:  LDRD.W          R4, R8, [R6,#0x7C]
D76E0:  CBNZ            R0, loc_D76FE
D76E2:  LDR.W           R0, [R7,#var_F8]
D76E6:  LDR.W           R1, [R7,#var_F4]
D76EA:  ADDS            R0, #0x10
D76EC:  CMP             R0, R1
D76EE:  BGT             loc_D76FE
D76F0:  MOV             R0, R10
D76F2:  MOVS            R1, #0
D76F4:  MOVS            R2, #1
D76F6:  BLX             j_ec_enc_bit_logp
D76FA:  LDR.W           LR, [R7,#var_D4]
D76FE:  LDR.W           R2, [R7,#var_C0]
D7702:  LDR             R0, [R2,#0x18]
D7704:  CMP             R0, #1
D7706:  BLT             loc_D775E
D7708:  LDR             R0, [R2,#0x40]
D770A:  LDR.W           R12, [R7,#var_CC]
D770E:  CMP             R0, #0
D7710:  MOV.W           R0, #0
D7714:  BNE             loc_D7764
D7716:  LDR.W           R1, [R7,#var_D8]
D771A:  CBZ             R1, loc_D772E
D771C:  LDR             R1, [R6,#0x5C]
D771E:  CMP             R1, #0xE
D7720:  BGT             loc_D772E
D7722:  LDR.W           R1, [R2,#0xB8]
D7726:  MOVS            R0, #0
D7728:  CMP             R1, #2
D772A:  IT NE
D772C:  MOVNE           R0, #1
D772E:  SUB             SP, SP, #0x10
D7730:  SUB.W           R2, R7, #-var_98
D7734:  STRD.W          R2, R0, [SP,#0x198+var_198]
D7738:  SUB.W           R1, R7, #-var_A4
D773C:  STR             R1, [SP,#0x198+var_190]
D773E:  LDR.W           R0, [R7,#var_D0]
D7742:  SUB.W           R3, R7, #-var_9A
D7746:  LDR.W           R1, [R7,#var_E0]
D774A:  LDR.W           R2, [R7,#var_BC]
D774E:  BL              sub_D9E18
D7752:  ADD             SP, SP, #0x10
D7754:  LDR.W           R12, [R7,#var_CC]
D7758:  LDR.W           LR, [R7,#var_D4]
D775C:  B               loc_D7764
D775E:  MOVS            R0, #0
D7760:  LDR.W           R12, [R7,#var_CC]
D7764:  STR.W           R0, [R7,#var_F8]
D7768:  CMP.W           LR, #1
D776C:  BLT             loc_D7786
D776E:  LDR.W           R1, [R10,#0x1C]
D7772:  LDR.W           R0, [R10,#0x14]
D7776:  CLZ.W           R1, R1
D777A:  ADD             R0, R1
D777C:  LDR.W           R1, [R7,#var_F4]
D7780:  SUBS            R0, #0x1D
D7782:  CMP             R0, R1
D7784:  BLE             loc_D7792
D7786:  MOVS            R0, #0
D7788:  MOVS            R2, #0
D778A:  STR.W           R0, [R7,#var_F8]
D778E:  MOVS            R0, #1
D7790:  B               loc_D77A0
D7792:  LDR.W           R0, [R7,#var_F8]
D7796:  LDR             R2, [R6,#0x44]
D7798:  CMP             R0, #0
D779A:  IT EQ
D779C:  MOVEQ           R2, R0
D779E:  MOVS            R0, #0
D77A0:  STR             R0, [R6,#0x2C]
D77A2:  LDR.W           R0, [R7,#var_E4]
D77A6:  MUL.W           R0, R8, R0
D77AA:  ADDS            R0, #7
D77AC:  BIC.W           R0, R0, #7
D77B0:  SUB.W           R3, SP, R0
D77B4:  MOVS            R0, #7
D77B6:  ADD.W           R1, R0, R4,LSL#2
D77BA:  STR.W           R3, [R7,#n]
D77BE:  BIC.W           R1, R1, #7
D77C2:  MOV             SP, R3
D77C4:  SUB.W           R9, SP, R1
D77C8:  ADD.W           R1, R0, R4,LSL#1
D77CC:  BIC.W           R1, R1, #7
D77D0:  MOV             SP, R9
D77D2:  SUB.W           R1, SP, R1
D77D6:  STR             R1, [R6,#0x74]
D77D8:  MOV             SP, R1
D77DA:  CMP             R2, #0
D77DC:  STR             R5, [R6,#0x34]
D77DE:  STR             R2, [R6,#0x4C]
D77E0:  BEQ             loc_D78AE
D77E2:  LDR.W           R1, [R7,#var_DC]
D77E6:  LDR.W           R8, [R7,#var_C4]
D77EA:  LDR.W           R3, [R7,#var_C0]
D77EE:  MUL.W           R5, R1, R8
D77F2:  LDR             R1, [R3,#0x18]
D77F4:  ADD.W           R0, R0, R5,LSL#1
D77F8:  MOV.W           R10, R5,LSL#1
D77FC:  BIC.W           R0, R0, #7
D7800:  SUB.W           R4, SP, R0
D7804:  MOV             SP, R4
D7806:  CMP             R1, #8
D7808:  STR             R5, [R6,#0x58]
D780A:  STR.W           R4, [R7,#dest]
D780E:  BLT             loc_D78D8
D7810:  STR.W           R10, [R6,#0x80]
D7814:  LDR             R0, [R3,#0x1C]
D7816:  LDR             R1, [R3,#0x48]
D7818:  SUB             SP, SP, #0x18
D781A:  LDR.W           R2, [R7,#var_BC]
D781E:  MOV             R5, LR
D7820:  STR.W           R8, [SP,#0x1A0+var_1A0]
D7824:  STRD.W          R2, LR, [SP,#0x1A0+var_19C]
D7828:  STRD.W          R0, R1, [SP,#0x1A0+var_194]
D782C:  MOV             R0, R12
D782E:  LDR.W           R10, [R7,#n]
D7832:  MOVS            R1, #0
D7834:  LDR.W           R2, [R7,#var_D0]
D7838:  MOV             R3, R10
D783A:  BL              sub_DA1F4
D783E:  ADD             SP, SP, #0x18
D7840:  LDR.W           R0, [R7,#var_C0]
D7844:  LDR             R0, [R0,#0x48]
D7846:  SUB             SP, SP, #0x10
D7848:  STRD.W          R8, R5, [SP,#0x198+var_198]
D784C:  MOV             R1, R10
D784E:  LDR.W           R10, [R6,#0x70]
D7852:  MOV             R2, R9
D7854:  LDR.W           R5, [R7,#var_CC]
D7858:  STR             R0, [SP,#0x198+var_190]
D785A:  MOV             R3, R10
D785C:  MOV             R0, R5
D785E:  BLX             j_compute_band_energies
D7862:  ADD             SP, SP, #0x10
D7864:  STRD.W          R4, R8, [SP,#0x188+var_190]!
D7868:  LDR.W           R2, [R7,#var_C8]
D786C:  MOV             R0, R5
D786E:  MOV             R1, R10
D7870:  MOV             R3, R9
D7872:  LDR             R4, [R6,#0x58]
D7874:  BLX             j_amp2Log2
D7878:  ADD             SP, SP, #8
D787A:  CMP             R4, #1
D787C:  BLT             loc_D78DE
D787E:  LDR.W           R2, [R7,#var_D4]
D7882:  MOVS            R1, #0
D7884:  LDR.W           R3, [R7,#dest]
D7888:  LSLS            R0, R2, #0x1A
D788A:  MOV             LR, R2
D788C:  ASRS            R0, R0, #0x11
D788E:  LDRH.W          R2, [R3,R1,LSL#1]
D7892:  ADD             R2, R0
D7894:  STRH.W          R2, [R3,R1,LSL#1]
D7898:  ADDS            R1, #1
D789A:  CMP             R4, R1
D789C:  BNE             loc_D788E
D789E:  LDR.W           R8, [R7,#var_C4]
D78A2:  MOVS            R0, #1
D78A4:  LDR.W           R12, [R7,#var_CC]
D78A8:  LDR             R2, [R6,#0x4C]
D78AA:  STR             R0, [R6,#0x54]
D78AC:  B               loc_D78F0
D78AE:  LDR.W           R1, [R7,#var_DC]
D78B2:  LDR.W           R8, [R7,#var_C4]
D78B6:  MUL.W           R1, R1, R8
D78BA:  STR             R1, [R6,#0x58]
D78BC:  ADD.W           R0, R0, R1,LSL#1
D78C0:  MOV.W           R10, R1,LSL#1
D78C4:  BIC.W           R0, R0, #7
D78C8:  SUB.W           R0, SP, R0
D78CC:  STR.W           R0, [R7,#dest]
D78D0:  MOV             SP, R0
D78D2:  MOVS            R0, #0
D78D4:  STR             R0, [R6,#0x54]
D78D6:  B               loc_D78F4
D78D8:  MOVS            R0, #0
D78DA:  STR             R0, [R6,#0x54]
D78DC:  B               loc_D78F8
D78DE:  MOVS            R0, #1
D78E0:  LDR.W           R8, [R7,#var_C4]
D78E4:  STR             R0, [R6,#0x54]
D78E6:  LDR.W           R12, [R7,#var_CC]
D78EA:  LDR             R2, [R6,#0x4C]
D78EC:  LDR.W           LR, [R7,#var_D4]
D78F0:  LDR.W           R10, [R6,#0x80]
D78F4:  LDR.W           R3, [R7,#var_C0]
D78F8:  LDR             R0, [R3,#0x1C]
D78FA:  LDR             R1, [R3,#0x48]
D78FC:  SUB             SP, SP, #0x18
D78FE:  LDR.W           R5, [R7,#var_BC]
D7902:  STR.W           R8, [SP,#0x1A0+var_1A0]
D7906:  STRD.W          R5, LR, [SP,#0x1A0+var_19C]
D790A:  STRD.W          R0, R1, [SP,#0x1A0+var_194]
D790E:  MOV             R1, R2
D7910:  LDR.W           R2, [R7,#var_D0]
D7914:  MOV             R0, R12
D7916:  LDR.W           R3, [R7,#n]
D791A:  BL              sub_DA1F4
D791E:  ADD             SP, SP, #0x18
D7920:  EOR.W           R0, R8, #1
D7924:  EOR.W           R1, R5, #2
D7928:  ORRS            R0, R1
D792A:  MOV.W           R4, #0
D792E:  MOV.W           R0, #0
D7932:  ITT EQ
D7934:  MOVEQ           R4, #1
D7936:  STREQ.W         R0, [R7,#var_98]
D793A:  LDR.W           R5, [R7,#var_C0]
D793E:  LDR             R0, [R5,#0x48]
D7940:  SUB             SP, SP, #0x10
D7942:  LDR.W           R1, [R7,#var_C4]
D7946:  MOV             R2, R9
D7948:  STR             R1, [SP,#0x198+var_198]
D794A:  LDR.W           R1, [R7,#var_D4]
D794E:  STRD.W          R1, R0, [SP,#0x198+var_194]; int
D7952:  LDR.W           R0, [R7,#var_CC]
D7956:  LDR.W           R1, [R7,#n]
D795A:  LDR             R3, [R6,#0x70]
D795C:  BLX             j_compute_band_energies
D7960:  ADD             SP, SP, #0x10
D7962:  LDR             R0, [R5,#0x40]
D7964:  CBZ             R0, loc_D79A6
D7966:  LDR.W           R0, [R7,#var_C8]
D796A:  CMP             R0, #3
D796C:  BLT             loc_D79A6
D796E:  LDR.W           R0, [R7,#var_C8]
D7972:  ADD.W           R1, R9, #8
D7976:  SUBS            R0, #2
D7978:  LDR.W           R2, [R9]
D797C:  LDR             R3, [R1]
D797E:  UXTH            R5, R2
D7980:  LSLS            R5, R5, #1
D7982:  UXTAH.W         R5, R5, R2
D7986:  ASRS            R2, R2, #0x10
D7988:  ADD.W           R2, R2, R2,LSL#1
D798C:  LSRS            R5, R5, #0xF
D798E:  ADD.W           R2, R5, R2,LSL#1
D7992:  CMP             R3, R2
D7994:  IT LT
D7996:  MOVLT           R2, R3
D7998:  CMP             R2, #1
D799A:  IT LE
D799C:  MOVLE           R2, #1
D799E:  SUBS            R0, #1
D79A0:  STR.W           R2, [R1],#4
D79A4:  BNE             loc_D7978
D79A6:  SUB             SP, SP, #8
D79A8:  LDR             R0, [R6,#0x74]
D79AA:  MOV             R3, R9
D79AC:  STR             R0, [SP,#0x190+var_190]
D79AE:  LDR.W           R0, [R7,#var_C4]
D79B2:  LDR.W           R5, [R7,#var_C8]
D79B6:  STR             R0, [SP,#0x190+var_18C]
D79B8:  LDR.W           R0, [R7,#var_CC]
D79BC:  LDR             R1, [R6,#0x70]
D79BE:  MOV             R2, R5
D79C0:  BLX             j_amp2Log2
D79C4:  ADD             SP, SP, #8
D79C6:  ADD.W           R0, R10, #7
D79CA:  BIC.W           R0, R0, #7
D79CE:  STR             R0, [R6,#0x64]
D79D0:  SUB.W           R0, SP, R0; int
D79D4:  MOV             SP, R0
D79D6:  LSLS            R1, R5, #1; n
D79D8:  STR.W           R0, [R7,#var_B8]
D79DC:  STR.W           R1, [R7,#var_FC]
D79E0:  BLX             sub_10967C
D79E4:  LDR.W           R0, [R7,#var_D8]
D79E8:  MOV             R8, #0xFFFFC000
D79F0:  STR.W           R9, [R6,#0x50]
D79F4:  CMP             R0, #0
D79F6:  STR             R4, [R6,#0x30]
D79F8:  STR.W           R10, [R6,#0x80]
D79FC:  BEQ             loc_D7A22
D79FE:  MOVS            R0, #0
D7A00:  LDR.W           R9, [R6,#0x74]
D7A04:  STR             R0, [R6,#0x18]
D7A06:  MOVS            R0, #0
D7A08:  STR             R0, [R6,#0xC]
D7A0A:  LDR.W           LR, [R7,#var_D4]
D7A0E:  LDR.W           R2, [R7,#var_C0]
D7A12:  MOV             R4, R2
D7A14:  LDR.W           R10, [R4,#0x40]
D7A18:  CMP.W           R10, #0
D7A1C:  BEQ             loc_D7A50
D7A1E:  MOVS            R5, #0
D7A20:  B               loc_D7C50
D7A22:  LDR.W           R2, [R7,#var_C0]
D7A26:  LDR.W           LR, [R7,#var_D4]
D7A2A:  LDR.W           R0, [R2,#0xEC]
D7A2E:  STR             R0, [R6,#0xC]
D7A30:  CMP             R0, #0
D7A32:  BEQ             loc_D7AD0
D7A34:  MOV             R0, R2
D7A36:  LDR.W           R9, [R6,#0x74]
D7A3A:  LDR.W           R10, [R0,#0x40]
D7A3E:  CMP.W           R10, #0
D7A42:  BEQ             loc_D7ADE
D7A44:  MOVS            R0, #0
D7A46:  MOVS            R5, #0
D7A48:  STR             R0, [R6,#0xC]
D7A4A:  MOVS            R0, #0
D7A4C:  STR             R0, [R6,#0x18]
D7A4E:  B               loc_D7C50
D7A50:  LDR             R1, [R6,#0x4C]
D7A52:  MOV.W           R0, LR,LSL#26
D7A56:  CMP             R1, #0
D7A58:  MOV             R12, R1
D7A5A:  IT NE
D7A5C:  MOVNE.W         R12, R0,ASR#17
D7A60:  LDR.W           R0, [R7,#var_D8]
D7A64:  LDR.W           R1, [R7,#var_C8]
D7A68:  CMP             R1, R0
D7A6A:  BLE             loc_D7ACC
D7A6C:  LDR.W           R0, [R7,#var_C4]
D7A70:  CMP             R0, #2
D7A72:  BNE.W           loc_D7BC2
D7A76:  LDR.W           R1, [R7,#var_D8]
D7A7A:  MOV             R5, R9
D7A7C:  LDR.W           R0, [R7,#var_C8]
D7A80:  ADD.W           R4, R8, #0x1800
D7A84:  SUBS            R3, R0, R1
D7A86:  LDR.W           R0, [R7,#var_DC]
D7A8A:  ADD.W           R9, R5, R1,LSL#1
D7A8E:  ADD             R0, R1
D7A90:  ADD.W           R5, R5, R0,LSL#1
D7A94:  MOVS            R0, #0
D7A96:  LDRSH.W         R1, [R9],#2
D7A9A:  SXTH            R4, R4
D7A9C:  SUB.W           R2, R4, #0x400
D7AA0:  LDRSH.W         LR, [R5],#2
D7AA4:  SUB.W           R8, R1, R12
D7AA8:  CMP             R2, R8
D7AAA:  MOV             R2, R12
D7AAC:  ITT GT
D7AAE:  MOVGT           R1, R4
D7AB0:  MOVGT.W         R2, #0x400
D7AB4:  SUB.W           R4, LR, R12
D7AB8:  SUBS            R1, R1, R2
D7ABA:  SXTH            R1, R1
D7ABC:  CMP             R1, R4
D7ABE:  IT GT
D7AC0:  MOVGT           R4, R1
D7AC2:  SUBS            R3, #1
D7AC4:  SXTAH.W         R0, R0, R4
D7AC8:  BNE             loc_D7A96
D7ACA:  B               loc_D7BFE
D7ACC:  MOVS            R0, #0
D7ACE:  B               loc_D7BFE
D7AD0:  MOVS            R0, #0
D7AD2:  LDR.W           R9, [R6,#0x74]
D7AD6:  STR             R0, [R6,#0x18]
D7AD8:  MOVS            R0, #0
D7ADA:  STR             R0, [R6,#0xC]
D7ADC:  B               loc_D7A12
D7ADE:  LDR.W           R12, [R0,#0x5C]
D7AE2:  MOVS            R4, #0
D7AE4:  CMP.W           R12, #2
D7AE8:  IT LE
D7AEA:  MOVLE.W         R12, #2
D7AEE:  LDR.W           R1, [R7,#var_C4]
D7AF2:  STR.W           R12, [R7,#var_A8]
D7AF6:  CMP             R1, #1
D7AF8:  BLT.W           loc_D844C
D7AFC:  CMP.W           R12, #1
D7B00:  MOV.W           R0, #0
D7B04:  MOV.W           R9, #0
D7B08:  BLT.W           loc_D8452
D7B0C:  MOV.W           R0, #0x10000
D7B10:  LDR.W           R8, [R7,#var_E8]
D7B14:  SUB.W           R0, R0, R12,LSL#16
D7B18:  STR             R0, [R6,#0x20]
D7B1A:  LDR.W           R0, [R7,#var_DC]
D7B1E:  MOVS            R2, #0
D7B20:  LDR             R3, [R6,#0xC]
D7B22:  MOV.W           R9, #0
D7B26:  MOVS            R4, #0
D7B28:  LSLS            R0, R0, #1
D7B2A:  STR             R0, [R6,#0x1C]
D7B2C:  LDRH.W          R0, [R8],#2
D7B30:  STR             R0, [R6,#0x18]
D7B32:  MOVS            R0, #0
D7B34:  LDR.W           LR, [R6,#0x20]
D7B38:  MOVS            R1, #0
D7B3A:  LDR.W           R10, [R6,#0x18]
D7B3E:  STR.W           R2, [R7,#var_E0]
D7B42:  STR.W           R3, [R7,#var_B0]
D7B46:  LDRSH.W         R11, [R3,R1,LSL#1]
D7B4A:  MOVW            R2, #0xF800
D7B4E:  LDRSH.W         R12, [R8,R1,LSL#1]
D7B52:  MOVT            R2, #0xFFFF
D7B56:  CMP.W           R11, #0x100
D7B5A:  SXTH.W          R5, R10
D7B5E:  IT GE
D7B60:  MOVGE.W         R11, #0x100
D7B64:  ADDS            R1, #1
D7B66:  CMN.W           R11, #0x800
D7B6A:  UXTH.W          R10, R12
D7B6E:  IT LE
D7B70:  MOVLE           R11, R2
D7B72:  MOV             R2, R9
D7B74:  CMP.W           R11, #0
D7B78:  MOV.W           R9, #0
D7B7C:  IT GT
D7B7E:  MOVGT.W         R9, #1
D7B82:  ASR.W           R3, R11, R9
D7B86:  MOV             R9, R2
D7B88:  MOV.W           R2, LR,ASR#16
D7B8C:  ADD.W           LR, LR, #0x20000
D7B90:  MLA.W           R0, R3, R2, R0
D7B94:  SUB.W           R2, R12, R5
D7B98:  LDR.W           R12, [R7,#var_A8]
D7B9C:  SXTH            R5, R2
D7B9E:  ADD             R9, R2
D7BA0:  MLA.W           R4, R3, R5, R4
D7BA4:  LDR.W           R3, [R7,#var_B0]
D7BA8:  CMP             R1, R12
D7BAA:  BLT             loc_D7B46
D7BAC:  LDR             R1, [R6,#0x1C]
D7BAE:  LDR.W           R2, [R7,#var_E0]
D7BB2:  ADD             R3, R1
D7BB4:  LDR.W           R1, [R7,#var_C4]
D7BB8:  ADDS            R2, #1
D7BBA:  CMP             R2, R1
D7BBC:  BNE             loc_D7B34
D7BBE:  B.W             loc_D8452
D7BC2:  LDR.W           R0, [R7,#var_D8]
D7BC6:  ADD.W           R5, R8, #0x1800
D7BCA:  LDR.W           R1, [R7,#var_C8]
D7BCE:  SUBS            R2, R1, R0
D7BD0:  ADD.W           R3, R9, R0,LSL#1
D7BD4:  MOVS            R0, #0
D7BD6:  LDRSH.W         R1, [R3],#2
D7BDA:  SXTH            R5, R5
D7BDC:  SUB.W           R4, R5, #0x400
D7BE0:  SUB.W           LR, R1, R12
D7BE4:  CMP             R4, LR
D7BE6:  IT GT
D7BE8:  MOVGT           R1, R5
D7BEA:  MOV             R5, R12
D7BEC:  IT GT
D7BEE:  MOVGT.W         R5, #0x400
D7BF2:  SUBS            R2, #1
D7BF4:  SUB.W           R5, R1, R5
D7BF8:  SXTAH.W         R0, R0, R5
D7BFC:  BNE             loc_D7BD6
D7BFE:  LDR.W           R1, [R7,#var_D8]
D7C02:  LDR.W           R2, [R7,#var_C8]
D7C06:  SUBS            R1, R2, R1
D7C08:  BLX             sub_108848
D7C0C:  LDR.W           R1, [R7,#var_C0]
D7C10:  MOV.W           R10, #0
D7C14:  MOV             R2, R1
D7C16:  LDRH.W          R1, [R2,#0xF0]
D7C1A:  SUBS            R0, R0, R1
D7C1C:  SXTH            R5, R0
D7C1E:  MOVW            R0, #0xF800
D7C22:  CMN.W           R5, #0x600
D7C26:  MOVT            R0, #0xFFFF
D7C2A:  IT LE
D7C2C:  ADDLE.W         R5, R0, #0x200
D7C30:  MOVW            R0, #0x28F
D7C34:  CMP.W           R5, #0xC00
D7C38:  IT GE
D7C3A:  MOVGE.W         R5, #0xC00
D7C3E:  MULS            R0, R5
D7C40:  ADD.W           R0, R1, R0,LSR#15
D7C44:  STRH.W          R0, [R2,#0xF0]
D7C48:  LDR.W           R9, [R6,#0x74]
D7C4C:  LDR.W           LR, [R7,#var_D4]
D7C50:  LDR             R0, [R6,#0x54]
D7C52:  CBNZ            R0, loc_D7C66
D7C54:  LDR.W           R0, [R7,#dest]; dest
D7C58:  MOV             R1, R9; src
D7C5A:  LDR.W           R2, [R6,#0x80]; n
D7C5E:  MOV             R4, LR
D7C60:  BLX             j_memcpy
D7C64:  MOV             LR, R4
D7C66:  LDR.W           R0, [R7,#var_CC]
D7C6A:  CMP.W           LR, #1
D7C6E:  STR             R5, [R6,#0x1C]
D7C70:  BLT             loc_D7D16
D7C72:  LDR.W           R1, [R7,#var_AC]
D7C76:  LDR.W           R2, [R7,#var_F8]
D7C7A:  LDR.W           R12, [R1,#0x14]
D7C7E:  CMP             R2, #0
D7C80:  LDR             R1, [R1,#0x1C]
D7C82:  BNE             loc_D7D08
D7C84:  CLZ.W           R2, R1
D7C88:  LDR.W           R3, [R7,#var_F4]
D7C8C:  ADD             R2, R12
D7C8E:  SUBS            R2, #0x1D
D7C90:  CMP             R2, R3
D7C92:  BGT             loc_D7D08
D7C94:  LDR.W           R2, [R7,#var_C0]
D7C98:  MOVS            R3, #0
D7C9A:  LDR             R2, [R2,#0x18]
D7C9C:  STR.W           R3, [R7,#var_F8]
D7CA0:  CMP             R2, #5
D7CA2:  BLT             loc_D7D08
D7CA4:  LDR.W           R3, [R7,#var_D8]
D7CA8:  ORRS.W          R2, R10, R3
D7CAC:  BNE             loc_D7D08
D7CAE:  LDR             R2, [R6,#0x78]
D7CB0:  LDR.W           R0, [R7,#var_C4]
D7CB4:  LDRSH.W         R5, [R2,R3,LSL#1]
D7CB8:  CMP             R0, #1
D7CBA:  BNE             loc_D7D38
D7CBC:  LDR.W           R0, [R7,#var_C8]
D7CC0:  ADDS            R1, R3, #1
D7CC2:  STRH.W          R5, [R11,R3,LSL#1]
D7CC6:  CMP             R1, R0
D7CC8:  BGE.W           loc_D7DCC
D7CCC:  LDR.W           R0, [R7,#var_C8]
D7CD0:  ADD.W           R1, R11, R1,LSL#1
D7CD4:  LDR             R3, [R6,#0x48]
D7CD6:  SUBS            R2, R0, #1
D7CD8:  LDR.W           R0, [R7,#var_D8]
D7CDC:  LSLS            R3, R3, #2
D7CDE:  SUBS            R2, R2, R0
D7CE0:  ADD.W           R3, R3, R0,LSL#1
D7CE4:  LDR.W           R0, [R7,#var_C0]
D7CE8:  ADD             R3, R0
D7CEA:  ADDS            R3, #0xF6
D7CEC:  SXTH            R5, R5
D7CEE:  LDRSH.W         R0, [R3],#2
D7CF2:  SUB.W           R5, R5, #0x400
D7CF6:  CMP             R5, R0
D7CF8:  IT GT
D7CFA:  MOVGT           R0, R5
D7CFC:  SUBS            R2, #1
D7CFE:  STRH.W          R0, [R1],#2
D7D02:  MOV             R5, R0
D7D04:  BNE             loc_D7CEC
D7D06:  B               loc_D7DCC
D7D08:  LDRD.W          R5, R4, [R7,#var_C4]
D7D0C:  LDR.W           R8, [R6,#0x70]
D7D10:  LDR.W           R10, [R7,#var_AC]
D7D14:  B               loc_D7F2E
D7D16:  LDRD.W          R5, R4, [R7,#var_C4]
D7D1A:  LDR.W           R1, [R7,#var_E4]
D7D1E:  LDR.W           R8, [R6,#0x70]
D7D22:  B               loc_D7F52
D7D24:  DCD __stack_chk_guard_ptr - 0xD6FF8
D7D28:  DCD unk_5C988 - 0xD76CC
D7D2C:  DCD tf_select_table_ptr - 0xD833C
D7D30:  DCD tf_select_table_ptr - 0xD83B0
D7D34:  DCD unk_5C98B - 0xD86CE
D7D38:  LDR.W           R0, [R7,#var_DC]
D7D3C:  ADD.W           LR, R3, #1
D7D40:  ADDS            R1, R3, R0
D7D42:  LDRSH.W         R0, [R2,R1,LSL#1]
D7D46:  CMP             R5, R0
D7D48:  MOV             R0, R1
D7D4A:  IT GT
D7D4C:  MOVGT           R0, R3
D7D4E:  LDRH.W          R5, [R2,R0,LSL#1]
D7D52:  LDR.W           R0, [R7,#var_C8]
D7D56:  STRH.W          R5, [R11,R3,LSL#1]
D7D5A:  CMP             LR, R0
D7D5C:  BGE             loc_D7DCC
D7D5E:  LDR.W           R0, [R7,#var_C8]
D7D62:  ADD.W           R9, R1, #1
D7D66:  LDR.W           R3, [R7,#var_D8]
D7D6A:  ADD.W           R12, R11, LR,LSL#1
D7D6E:  SUBS            R0, #1
D7D70:  LDR.W           R2, [R7,#var_C0]
D7D74:  SUB.W           R8, R0, R3
D7D78:  LDR             R0, [R6,#0x48]
D7D7A:  LSLS            R0, R0, #2
D7D7C:  ADD.W           R1, R0, R3,LSL#1
D7D80:  ADD             R1, R2
D7D82:  ADD.W           R10, R1, #0xF6
D7D86:  LDR.W           R1, [R7,#var_DC]
D7D8A:  ADD.W           R0, R0, R1,LSL#1
D7D8E:  ADD.W           R0, R0, R3,LSL#1
D7D92:  ADD             R0, R2
D7D94:  ADD.W           R1, R0, #0xF6
D7D98:  MOVS            R0, #0
D7D9A:  LDRSH.W         R2, [R1,R0,LSL#1]
D7D9E:  ADD.W           R4, R9, R0
D7DA2:  LDRSH.W         R3, [R10,R0,LSL#1]
D7DA6:  CMP             R3, R2
D7DA8:  SXTH            R3, R5
D7DAA:  IT GT
D7DAC:  ADDGT.W         R4, LR, R0
D7DB0:  LDR             R2, [R6,#0x78]
D7DB2:  SUB.W           R3, R3, #0x400
D7DB6:  LDRSH.W         R2, [R2,R4,LSL#1]
D7DBA:  CMP             R3, R2
D7DBC:  IT GT
D7DBE:  MOVGT           R2, R3
D7DC0:  STRH.W          R2, [R12,R0,LSL#1]
D7DC4:  ADDS            R0, #1
D7DC6:  CMP             R8, R0
D7DC8:  MOV             R5, R2
D7DCA:  BNE             loc_D7D9A
D7DCC:  LDR.W           R10, [R7,#var_C8]
D7DD0:  LDR.W           R5, [R7,#var_D8]
D7DD4:  SUB.W           R0, R10, #2
D7DD8:  CMP             R0, R5
D7DDA:  BLT             loc_D7DFE
D7DDC:  ADD.W           R1, R11, R0,LSL#1
D7DE0:  LDRSH.W         R3, [R1,#2]
D7DE4:  LDRSH.W         R2, [R1]
D7DE8:  SUB.W           R3, R3, #0x400
D7DEC:  CMP             R3, R2
D7DEE:  IT LT
D7DF0:  MOVLT           R3, R2
D7DF2:  SUBS            R2, R0, #1
D7DF4:  STRH            R3, [R1]
D7DF6:  SUBS            R1, #2
D7DF8:  CMP             R0, R5
D7DFA:  MOV             R0, R2
D7DFC:  BGT             loc_D7DE0
D7DFE:  CMP             R5, #2
D7E00:  MOV             LR, R5
D7E02:  IT LE
D7E04:  MOVLE.W         LR, #2
D7E08:  SUB.W           R9, R10, #1
D7E0C:  MOVS            R3, #0
D7E0E:  CMP             R9, LR
D7E10:  MOV.W           R0, #0
D7E14:  BLE             loc_D7E5C
D7E16:  LDR.W           R0, [R7,#var_DC]
D7E1A:  MOV.W           R8, #0
D7E1E:  LDR             R4, [R6,#0x74]
D7E20:  MOV.W           R12, R0,LSL#1
D7E24:  MOVS            R0, #0
D7E26:  MOV             R1, LR
D7E28:  LDRSH.W         R2, [R11,R1,LSL#1]
D7E2C:  LDRSH.W         R5, [R4,R1,LSL#1]
D7E30:  ADDS            R1, #1
D7E32:  CMP             R2, #0
D7E34:  IT LE
D7E36:  MOVLE           R2, R3
D7E38:  CMP             R5, #0
D7E3A:  IT LE
D7E3C:  MOVLE           R5, R3
D7E3E:  UXTH            R2, R2
D7E40:  UXTH            R5, R5
D7E42:  SUBS            R2, R5, R2
D7E44:  CMP             R2, #0
D7E46:  IT GT
D7E48:  ADDGT           R0, R0, R2
D7E4A:  CMP             R1, R9
D7E4C:  BLT             loc_D7E28
D7E4E:  LDR.W           R1, [R7,#var_C4]
D7E52:  ADD.W           R8, R8, #1
D7E56:  ADD             R4, R12
D7E58:  CMP             R8, R1
D7E5A:  BLT             loc_D7E26
D7E5C:  LDR.W           R5, [R7,#var_C4]
D7E60:  SUB.W           R1, R9, LR
D7E64:  MULS            R1, R5
D7E66:  BLX             sub_108848
D7E6A:  CMP.W           R0, #0x400
D7E6E:  BLE             loc_D7F10
D7E70:  LDR.W           R4, [R7,#var_C0]
D7E74:  LDR             R1, [R4,#0x48]
D7E76:  LDR             R0, [R4,#0x1C]
D7E78:  SUB             SP, SP, #0x18
D7E7A:  LDR.W           R2, [R7,#var_BC]
D7E7E:  LDR.W           R10, [R7,#var_D4]
D7E82:  STR             R5, [SP,#0x1A0+var_1A0]
D7E84:  STR             R2, [SP,#0x1A0+var_19C]
D7E86:  STRD.W          R10, R0, [SP,#0x1A0+var_198]
D7E8A:  LDR.W           R8, [R7,#var_CC]
D7E8E:  LDR.W           R9, [R7,#n]
D7E92:  STR             R1, [SP,#0x1A0+var_190]
D7E94:  LDR             R1, [R6,#0x44]
D7E96:  MOV             R0, R8
D7E98:  LDR.W           R2, [R7,#var_D0]
D7E9C:  MOV             R3, R9
D7E9E:  BL              sub_DA1F4
D7EA2:  ADD             SP, SP, #0x18
D7EA4:  LDR             R0, [R4,#0x48]
D7EA6:  SUB             SP, SP, #0x10
D7EA8:  STRD.W          R5, R10, [SP,#0x198+var_198]
D7EAC:  MOV             R1, R9
D7EAE:  LDR.W           R9, [R6,#0x50]
D7EB2:  LDR.W           R11, [R6,#0x70]
D7EB6:  STR             R0, [SP,#0x198+var_190]
D7EB8:  MOV             R0, R8
D7EBA:  MOV             R2, R9
D7EBC:  MOV             R3, R11
D7EBE:  BLX             j_compute_band_energies
D7EC2:  ADD             SP, SP, #0x10
D7EC4:  SUB             SP, SP, #8
D7EC6:  LDR             R0, [R6,#0x74]
D7EC8:  MOV             R1, R11
D7ECA:  STRD.W          R0, R5, [SP,#0x190+var_190]
D7ECE:  MOV             R0, R8
D7ED0:  LDR.W           R2, [R7,#var_C8]
D7ED4:  MOV             R3, R9
D7ED6:  BLX             j_amp2Log2
D7EDA:  ADD             SP, SP, #8
D7EDC:  LDR             R1, [R6,#0x58]
D7EDE:  CMP             R1, #1
D7EE0:  BLT             loc_D7EF8
D7EE2:  LDR.W           R2, [R7,#dest]
D7EE6:  MOV.W           R0, R10,LSL#26
D7EEA:  ASRS            R0, R0, #0x11
D7EEC:  LDRH            R3, [R2]
D7EEE:  SUBS            R1, #1
D7EF0:  ADD             R3, R0
D7EF2:  STRH.W          R3, [R2],#2
D7EF6:  BNE             loc_D7EEC
D7EF8:  MOVW            R0, #0xCCD
D7EFC:  LDR.W           R5, [R7,#var_C4]
D7F00:  STRH.W          R0, [R7,#var_9A]
D7F04:  MOVS            R0, #1
D7F06:  STR.W           R0, [R7,#var_F8]
D7F0A:  LDR             R0, [R6,#0x44]
D7F0C:  STR             R0, [R6,#0x4C]
D7F0E:  B               loc_D7F1A
D7F10:  MOVS            R0, #0
D7F12:  LDR.W           R4, [R7,#var_C0]
D7F16:  STR.W           R0, [R7,#var_F8]
D7F1A:  LDR.W           R10, [R7,#var_AC]
D7F1E:  LDR.W           R0, [R7,#var_CC]
D7F22:  LDR.W           R8, [R6,#0x70]
D7F26:  LDR.W           R12, [R10,#0x14]
D7F2A:  LDR.W           R1, [R10,#0x1C]
D7F2E:  CLZ.W           R1, R1
D7F32:  LDR.W           R2, [R7,#var_F4]
D7F36:  ADD             R1, R12
D7F38:  SUBS            R1, #0x1D
D7F3A:  CMP             R1, R2
D7F3C:  BGT             loc_D7F4E
D7F3E:  LDR.W           R1, [R7,#var_F8]
D7F42:  MOV             R0, R10
D7F44:  MOVS            R2, #3
D7F46:  BLX             j_ec_enc_bit_logp
D7F4A:  LDR.W           R0, [R7,#var_CC]
D7F4E:  LDR.W           R1, [R7,#var_E4]
D7F52:  MULS            R1, R5
D7F54:  MOV.W           R9, #7
D7F58:  ADD.W           R1, R9, R1,LSL#1
D7F5C:  BIC.W           R1, R1, #7
D7F60:  SUB.W           R2, SP, R1
D7F64:  MOV             SP, R2
D7F66:  SUB             SP, SP, #0x10
D7F68:  STRD.W          R8, R5, [SP,#0x198+var_198]
D7F6C:  LDR             R1, [R6,#0x44]
D7F6E:  STR             R1, [SP,#0x198+var_190]
D7F70:  LDR.W           R1, [R7,#n]
D7F74:  LDR             R3, [R6,#0x50]
D7F76:  STR.W           R2, [R6,#0x80]
D7F7A:  BLX             j_normalise_bands
D7F7E:  ADD             SP, SP, #0x10
D7F80:  LDR.W           R0, [R7,#var_D8]
D7F84:  MOVS            R2, #0
D7F86:  CBNZ            R0, loc_D7FA2
D7F88:  LDR             R1, [R6,#0x5C]
D7F8A:  RSB.W           R0, R5, R5,LSL#4
D7F8E:  CMP             R1, R0
D7F90:  ITTT GE
D7F92:  LDRGE           R0, [R4,#0x18]
D7F94:  MOVGE           R2, #0
D7F96:  CMPGE           R0, #2
D7F98:  BLT             loc_D7FA2
D7F9A:  LDR             R0, [R4,#0x40]
D7F9C:  CMP             R0, #0
D7F9E:  IT EQ
D7FA0:  MOVEQ           R2, #1
D7FA2:  LDR.W           R0, [R7,#var_DC]
D7FA6:  STR.W           R2, [R7,#var_B0]
D7FAA:  ADD.W           R0, R9, R0,LSL#2
D7FAE:  BIC.W           R10, R0, #7
D7FB2:  SUB.W           R3, SP, R10
D7FB6:  MOV             SP, R3
D7FB8:  SUB.W           R0, SP, R10
D7FBC:  MOV             SP, R0
D7FBE:  SUB.W           R1, SP, R10
D7FC2:  MOV             SP, R1
D7FC4:  LDR.W           R2, [R7,#var_CC]
D7FC8:  LDR.W           R11, [R4,#0x2C]
D7FCC:  LDR.W           R12, [R2,#0x30]
D7FD0:  LDR             R2, [R4,#0x34]
D7FD2:  LDRD.W          LR, R5, [R4,#0x3C]
D7FD6:  SUB             SP, SP, #0x40 ; '@'
D7FD8:  LDR.W           R4, [R7,#var_B8]
D7FDC:  STRD.W          R5, R4, [SP,#0x1C8+var_198]; int
D7FE0:  SUB.W           R5, R7, #-var_A0
D7FE4:  STR             R5, [SP,#0x1C8+var_19C]; int
D7FE6:  LDR.W           R9, [R6,#0x5C]
D7FEA:  LDR.W           R8, [R7,#var_D4]
D7FEE:  LDR.W           R5, [R7,#var_E8]
D7FF2:  STR.W           R9, [SP,#0x1C8+var_1A0]
D7FF6:  STR.W           R8, [SP,#0x1C8+var_1A4]
D7FFA:  STR             R5, [SP,#0x1C8+var_1A8]
D7FFC:  STRD.W          R11, R2, [SP,#0x1C8+var_1B0]
D8000:  LDR.W           R11, [R7,#var_F8]
D8004:  STR.W           R11, [SP,#0x1C8+var_1B4]
D8008:  STR             R1, [SP,#0x1C8+var_18C]
D800A:  STR.W           R1, [R7,#var_B8]
D800E:  STR.W           R0, [R7,#n]
D8012:  STR             R0, [SP,#0x1C8+var_190]; int
D8014:  STRD.W          LR, R12, [SP,#0x1C8+src]
D8018:  LDR.W           R0, [R7,#var_C4]
D801C:  LDR.W           R11, [R7,#var_C8]
D8020:  STR             R3, [SP,#0x1C8+var_1C0]
D8022:  STR             R0, [SP,#0x1C8+var_1C4]
D8024:  STR.W           R3, [R7,#var_A8]
D8028:  STR.W           R11, [SP,#0x1C8+var_1C8]
D802C:  LDR             R0, [R6,#0x74]
D802E:  LDR.W           R1, [R7,#dest]
D8032:  LDRD.W          R2, R5, [R7,#var_DC]
D8036:  MOV             R3, R5
D8038:  BL              sub_DA364
D803C:  ADD             SP, SP, #0x40 ; '@'
D803E:  SUB.W           R4, SP, R10
D8042:  MOV             R3, R0
D8044:  MOV             SP, R4
D8046:  LDR.W           R0, [R7,#var_B0]
D804A:  STR             R4, [R6,#0x54]
D804C:  CMP             R0, #1
D804E:  STR             R3, [R6,#0x20]
D8050:  BNE             loc_D80BA
D8052:  MOV.W           R0, #0x5000
D8056:  MOV             R1, R9
D8058:  BLX             sub_108848
D805C:  LDR.W           R2, [R7,#var_98]
D8060:  LDRSH.W         R1, [R7,#var_9A]
D8064:  SUB             SP, SP, #0x20 ; ' '
D8066:  ADDS            R3, R0, #2
D8068:  CMP             R0, #0x4E ; 'N'
D806A:  IT LT
D806C:  MOVLT           R3, #0x50 ; 'P'
D806E:  LDR.W           R0, [R6,#0x80]
D8072:  STR             R3, [SP,#0x1A8+var_1A8]
D8074:  MOV             R3, R4
D8076:  STR             R0, [SP,#0x1A8+var_1A4]
D8078:  LDR.W           R0, [R7,#var_E4]
D807C:  STRD.W          R0, R8, [SP,#0x1A8+var_1A0]
D8080:  STRD.W          R1, R2, [SP,#0x1A8+var_198]
D8084:  LDR.W           R0, [R7,#n]
D8088:  LDR             R5, [R6,#0x70]
D808A:  STR             R0, [SP,#0x1A8+var_190]
D808C:  LDR.W           R0, [R7,#var_CC]
D8090:  LDR.W           R2, [R7,#var_F8]
D8094:  MOV             R1, R5
D8096:  BL              sub_DACBC
D809A:  ADD             SP, SP, #0x20 ; ' '
D809C:  LDR             R2, [R6,#0x24]
D809E:  MOV             R9, R11
D80A0:  CMP             R11, R2
D80A2:  BLE             loc_D80EA
D80A4:  LDR.W           R10, [R7,#var_C4]
D80A8:  SUBS            R3, R5, #1
D80AA:  LDR.W           R1, [R4,R3,LSL#2]
D80AE:  STR.W           R1, [R4,R2,LSL#2]
D80B2:  ADDS            R2, #1
D80B4:  CMP             R2, R9
D80B6:  BLT             loc_D80AA
D80B8:  B               loc_D80EE
D80BA:  CMP             R5, #0
D80BC:  ITT NE
D80BE:  LDRNE.W         R0, [R7,#var_A4]
D80C2:  CMPNE           R0, #0
D80C4:  BEQ             loc_D80F6
D80C6:  LDR.W           R9, [R7,#var_C8]
D80CA:  LDR.W           R10, [R7,#var_C4]
D80CE:  LDR.W           R11, [R7,#var_D4]
D80D2:  CMP.W           R9, #1
D80D6:  LDR             R4, [R6,#0x64]
D80D8:  BLT             loc_D8132
D80DA:  LDR             R2, [R6,#0x54]
D80DC:  MOVS            R0, #1
D80DE:  MOV             R1, R9
D80E0:  STR.W           R0, [R2],#4
D80E4:  SUBS            R1, #1
D80E6:  BNE             loc_D80E0
D80E8:  B               loc_D8132
D80EA:  LDR.W           R10, [R7,#var_C4]
D80EE:  LDR.W           R11, [R7,#var_D4]
D80F2:  LDR             R4, [R6,#0x64]
D80F4:  B               loc_D8134
D80F6:  LDR.W           R0, [R7,#var_D8]
D80FA:  CMP             R0, #0
D80FC:  LDR.W           R0, [R7,#var_C0]
D8100:  LDRD.W          R9, R10, [R7,#var_C8]
D8104:  LDR.W           R11, [R7,#var_D4]
D8108:  LDR.W           R2, [R7,#var_F8]
D810C:  LDR             R1, [R6,#0x5C]
D810E:  LDR             R4, [R6,#0x64]
D8110:  BEQ             loc_D8120
D8112:  CMP             R1, #0xF
D8114:  BGE             loc_D8120
D8116:  LDR.W           R0, [R0,#0xB8]
D811A:  CMP             R0, #2
D811C:  BNE.W           loc_D8432
D8120:  CMP.W           R9, #1
D8124:  BLT             loc_D8132
D8126:  LDR             R1, [R6,#0x54]
D8128:  MOV             R0, R9
D812A:  STR.W           R2, [R1],#4
D812E:  SUBS            R0, #1
D8130:  BNE             loc_D812A
D8132:  MOVS            R0, #0
D8134:  STR.W           R0, [R7,#n]
D8138:  SUB.W           R0, SP, R4
D813C:  STR             R0, [R6,#0x64]
D813E:  MOV             SP, R0
D8140:  LDR.W           R0, [R7,#var_D8]
D8144:  CMP             R9, R0
D8146:  BLE             loc_D81CC
D8148:  LDR.W           R4, [R7,#var_DC]
D814C:  MOV.W           LR, #0
D8150:  LDR.W           R1, [R7,#var_EC]
D8154:  LDR             R2, [R6,#0x48]
D8156:  ADD.W           R0, R4, R4,LSL#1
D815A:  LDR.W           R3, [R7,#var_D8]
D815E:  LDR.W           R5, [R7,#var_C0]
D8162:  LSLS            R0, R0, #1
D8164:  LSLS            R2, R2, #2
D8166:  ADD.W           R0, R0, R1,LSL#2
D816A:  LDR.W           R1, [R7,#var_BC]
D816E:  ADD.W           R0, R0, #0x1000
D8172:  ADD.W           R2, R2, R3,LSL#1
D8176:  ADD             R2, R5
D8178:  MUL.W           R12, R1, R0
D817C:  LDR             R0, [R6,#0x74]
D817E:  SUB.W           R1, R9, R3
D8182:  ADD.W           R0, R0, R3,LSL#1
D8186:  ADDS            R2, #0xF4
D8188:  ADD.W           R3, R12, R3,LSL#1
D818C:  MOV.W           R12, R4,LSL#1
D8190:  ADD             R3, R5
D8192:  ADD.W           R8, R3, #0xF4
D8196:  MOVS            R5, #0
D8198:  LDRSH.W         R3, [R2,R5,LSL#1]
D819C:  LDRSH.W         R4, [R0,R5,LSL#1]
D81A0:  SUBS            R3, R4, R3
D81A2:  IT MI
D81A4:  NEGMI           R3, R3
D81A6:  CMP.W           R3, #0x800
D81AA:  BGE             loc_D81B8
D81AC:  LDRSH.W         R3, [R8,R5,LSL#1]
D81B0:  SUB.W           R3, R4, R3,LSR#2
D81B4:  STRH.W          R3, [R0,R5,LSL#1]
D81B8:  ADDS            R5, #1
D81BA:  CMP             R1, R5
D81BC:  BNE             loc_D8198
D81BE:  ADD.W           LR, LR, #1
D81C2:  ADD             R0, R12
D81C4:  ADD             R2, R12
D81C6:  ADD             R8, R12
D81C8:  CMP             LR, R10
D81CA:  BLT             loc_D8196
D81CC:  LDR.W           R5, [R7,#var_C0]
D81D0:  LDR             R0, [R5,#0xC]
D81D2:  LDR             R1, [R5,#0x18]
D81D4:  LDR             R2, [R5,#0x38]
D81D6:  LDR             R3, [R5,#0x40]
D81D8:  SUB             SP, SP, #0x38 ; '8'
D81DA:  ADDS            R5, #0x54 ; 'T'
D81DC:  CMP             R1, #3
D81DE:  MOV.W           R1, #0
D81E2:  MOV.W           R8, #0
D81E6:  IT GT
D81E8:  MOVGT           R1, #1
D81EA:  STRD.W          R0, R5, [SP,#0x1C0+var_1A0]; int
D81EE:  ADD             R0, SP, #0x1C0+var_198
D81F0:  STM             R0!, {R1-R3}
D81F2:  MOV             R2, R9; int
D81F4:  LDR             R0, [R6,#0x74]
D81F6:  STR             R0, [SP,#0x1C0+var_1C0]; int
D81F8:  LDR             R0, [R6,#0x78]
D81FA:  STR             R0, [SP,#0x1C0+src]; src
D81FC:  LDR.W           R0, [R7,#var_F4]
D8200:  STR             R0, [SP,#0x1C0+var_1B8]; int
D8202:  LDR             R0, [R6,#0x64]
D8204:  STR             R0, [SP,#0x1C0+var_1B4]; int
D8206:  LDR.W           R0, [R7,#var_AC]
D820A:  STRD.W          R0, R10, [SP,#0x1C0+var_1B0]; int
D820E:  STR.W           R11, [SP,#0x1C0+var_1A8]; int
D8212:  MOV             R5, R0
D8214:  LDR             R0, [R6,#0x68]
D8216:  STR             R0, [SP,#0x1C0+var_1A4]; int
D8218:  LDR.W           R0, [R7,#var_CC]; int
D821C:  LDR.W           R1, [R7,#var_D8]; int
D8220:  LDR             R3, [R6,#0x70]; int
D8222:  BLX             j_quant_coarse_energy
D8226:  ADD             SP, SP, #0x38 ; '8'
D8228:  LDR             R3, [R5,#0x1C]
D822A:  MOVS            R2, #4
D822C:  LDR.W           R4, [R7,#var_F8]
D8230:  LDR             R0, [R5,#0x14]
D8232:  CLZ.W           R3, R3
D8236:  LDR             R1, [R5,#4]
D8238:  ADD             R0, R3
D823A:  MOV             LR, R4
D823C:  CMP.W           LR, #0
D8240:  SUB.W           R0, R0, #0x20 ; ' '
D8244:  IT NE
D8246:  MOVNE           R2, #2
D8248:  LSLS            R1, R1, #3
D824A:  CMP.W           R11, #1
D824E:  BLT             loc_D8262
D8250:  ORR.W           R3, R2, #1
D8254:  ADD             R3, R0
D8256:  CMP             R3, R1
D8258:  IT LS
D825A:  MOVLS.W         R8, #1
D825E:  MOV             R4, R8
D8260:  B               loc_D8264
D8262:  MOVS            R4, #0
D8264:  LDR.W           R3, [R7,#var_D8]
D8268:  LDR.W           R12, [R7,#var_CC]
D826C:  CMP             R9, R3
D826E:  STR.W           R4, [R7,#var_B0]
D8272:  BLE             loc_D829C
D8274:  MOV             R3, R5
D8276:  MOVS            R5, #5
D8278:  CMP.W           LR, #0
D827C:  SUB.W           R10, R1, R4
D8280:  IT NE
D8282:  MOVNE           R5, #4
D8284:  LDR.W           R8, [R6,#0x54]
D8288:  ADDS            R1, R0, R2
D828A:  CMP             R1, R10
D828C:  BLS             loc_D82A2
D828E:  LDR.W           R3, [R7,#var_D8]
D8292:  MOV.W           R9, #0
D8296:  STR.W           R9, [R8,R3,LSL#2]
D829A:  B               loc_D82C8
D829C:  MOV.W           R9, #0
D82A0:  B               loc_D8322
D82A2:  LDR.W           R9, [R7,#var_D8]
D82A6:  MOV             R4, R3
D82A8:  MOV             R0, R4
D82AA:  LDR.W           R1, [R8,R9,LSL#2]
D82AE:  BLX             j_ec_enc_bit_logp
D82B2:  LDR             R1, [R4,#0x1C]
D82B4:  MOV             R3, R9
D82B6:  LDR             R0, [R4,#0x14]
D82B8:  CLZ.W           R1, R1
D82BC:  LDR.W           R12, [R7,#var_CC]
D82C0:  ADD             R0, R1
D82C2:  LDR.W           R9, [R8,R3,LSL#2]
D82C6:  SUBS            R0, #0x20 ; ' '
D82C8:  LDR.W           R2, [R7,#var_C8]
D82CC:  ADDS            R1, R3, #1
D82CE:  CMP             R1, R2
D82D0:  BEQ             loc_D8322
D82D2:  SUBS            R1, R2, #1
D82D4:  SUBS            R4, R1, R3
D82D6:  ADD.W           R1, R8, R3,LSL#2
D82DA:  LDR.W           R8, [R7,#var_AC]
D82DE:  ADD.W           R11, R1, #4
D82E2:  MOV             R1, R9
D82E4:  ADDS            R2, R0, R5
D82E6:  CMP             R2, R10
D82E8:  BLS             loc_D82F0
D82EA:  STR.W           R1, [R11]
D82EE:  B               loc_D831A
D82F0:  LDR.W           R0, [R11]
D82F4:  MOV             R2, R5
D82F6:  EORS            R1, R0
D82F8:  MOV             R0, R8
D82FA:  BLX             j_ec_enc_bit_logp
D82FE:  LDR.W           R2, [R8,#0x1C]
D8302:  LDR.W           R0, [R8,#0x14]
D8306:  LDR.W           R1, [R11]
D830A:  CLZ.W           R2, R2
D830E:  ADD             R0, R2
D8310:  LDR.W           R12, [R7,#var_CC]
D8314:  ORR.W           R9, R9, R1
D8318:  SUBS            R0, #0x20 ; ' '
D831A:  ADD.W           R11, R11, #4
D831E:  SUBS            R4, #1
D8320:  BNE             loc_D82E4
D8322:  LDR.W           R0, [R7,#var_B0]
D8326:  LDR.W           R10, [R7,#var_AC]
D832A:  CMP             R0, #1
D832C:  BNE             loc_D836A
D832E:  LDR.W           R0, =(tf_select_table_ptr - 0xD833C)
D8332:  MOVS            R1, #2
D8334:  LDR.W           R2, [R7,#var_F8]
D8338:  ADD             R0, PC; tf_select_table_ptr
D833A:  LDR.W           R11, [R7,#var_D4]
D833E:  LDR.W           R8, [R7,#var_C0]
D8342:  LDR             R0, [R0]; tf_select_table
D8344:  ORR.W           R1, R1, R2,LSL#2
D8348:  ADD             R1, R9
D834A:  ADD.W           R2, R9, R2,LSL#2
D834E:  ADD.W           R0, R0, R11,LSL#3
D8352:  LDR.W           R9, [R7,#var_C8]
D8356:  LDR.W           R4, [R7,#var_D8]
D835A:  LDRB            R1, [R0,R1]
D835C:  LDRB            R0, [R0,R2]
D835E:  CMP             R0, R1
D8360:  BNE             loc_D837E
D8362:  MOVS            R2, #0
D8364:  CMP             R9, R4
D8366:  BGT             loc_D8396
D8368:  B               loc_D83C2
D836A:  MOVS            R2, #0
D836C:  LDR.W           R8, [R7,#var_C0]
D8370:  LDR.W           R9, [R7,#var_C8]
D8374:  LDRD.W          R4, R11, [R7,#var_D8]
D8378:  CMP             R9, R4
D837A:  BGT             loc_D8396
D837C:  B               loc_D83C2
D837E:  LDR.W           R5, [R7,#n]
D8382:  MOV             R0, R10
D8384:  MOVS            R2, #1
D8386:  MOV             R1, R5
D8388:  BLX             j_ec_enc_bit_logp
D838C:  LDR.W           R12, [R7,#var_CC]
D8390:  LSLS            R2, R5, #1
D8392:  CMP             R9, R4
D8394:  BLE             loc_D83C2
D8396:  LDR.W           R3, [R7,#var_F8]
D839A:  SUB.W           R1, R9, R4
D839E:  LDR             R0, [R6,#0x54]
D83A0:  ADD.W           R2, R2, R3,LSL#2
D83A4:  LDR.W           R3, =(tf_select_table_ptr - 0xD83B0)
D83A8:  ADD.W           R0, R0, R4,LSL#2
D83AC:  ADD             R3, PC; tf_select_table_ptr
D83AE:  LDR             R3, [R3]; tf_select_table
D83B0:  ADD.W           R3, R3, R11,LSL#3
D83B4:  LDR             R5, [R0]
D83B6:  SUBS            R1, #1
D83B8:  ADD             R5, R2
D83BA:  LDRSB           R5, [R3,R5]
D83BC:  STR.W           R5, [R0],#4
D83C0:  BNE             loc_D83B4
D83C2:  LDR.W           R1, [R10,#0x1C]
D83C6:  LDR.W           R0, [R10,#0x14]
D83CA:  CLZ.W           R1, R1
D83CE:  ADD             R0, R1
D83D0:  LDR.W           R1, [R7,#var_F4]
D83D4:  SUBS            R0, #0x1C
D83D6:  CMP             R0, R1
D83D8:  BGT.W           loc_D86D4
D83DC:  LDR.W           R0, [R8,#0x40]
D83E0:  CBZ             R0, loc_D83F0
D83E2:  MOVS            R1, #2
D83E4:  MOVS            R0, #0
D83E6:  STR.W           R1, [R8,#0x50]
D83EA:  STR.W           R0, [R8,#0x64]
D83EE:  B               loc_D86C2
D83F0:  CBZ             R4, loc_D8402
D83F2:  LDR.W           R0, [R8,#0x18]
D83F6:  CBZ             R0, loc_D842A
D83F8:  LDR.W           R0, [R7,#var_F8]
D83FC:  MOVS            R1, #3
D83FE:  CMP             R0, #0
D8400:  B               loc_D8420
D8402:  LDR             R0, [R6,#0x4C]
D8404:  CBNZ            R0, loc_D841A
D8406:  LDR             R0, [R6,#8]
D8408:  LDR             R1, [R6,#0x68]
D840A:  CMP.W           R1, R0,LSL#1
D840E:  ITT GE
D8410:  LDRGE.W         R0, [R8,#0x18]
D8414:  CMPGE           R0, #2
D8416:  BGT.W           loc_D867E
D841A:  LDR.W           R1, [R8,#0x18]
D841E:  CMP             R1, #0
D8420:  IT NE
D8422:  MOVNE           R1, #2
D8424:  STR.W           R1, [R8,#0x50]
D8428:  B               loc_D86C2
D842A:  MOVS            R1, #0
D842C:  STR.W           R1, [R8,#0x50]
D8430:  B               loc_D86C2
D8432:  CMP.W           R9, #1
D8436:  MOV             R0, R2
D8438:  BLT.W           loc_D8134
D843C:  LDR             R0, [R6,#0x54]; int
D843E:  MOV.W           R1, R9,LSL#2; n
D8442:  BLX             sub_10967C
D8446:  LDR.W           R0, [R7,#var_F8]
D844A:  B               loc_D8134
D844C:  MOVS            R0, #0
D844E:  MOV.W           R9, #0
D8452:  MUL.W           R1, R12, R1
D8456:  SUB.W           R2, R12, #1
D845A:  ADD.W           R0, R0, R0,LSL#1
D845E:  MOV             R10, R12
D8460:  LSLS            R0, R0, #1
D8462:  MULS            R1, R2
D8464:  ADD.W           R2, R12, #1
D8468:  MULS            R1, R2
D846A:  BLX             sub_108848
D846E:  ASRS            R1, R0, #1
D8470:  MOV             R3, R9
D8472:  CMP             R1, #0x20 ; ' '
D8474:  MOV.W           R9, #0x20 ; ' '
D8478:  IT LT
D847A:  MOVLT.W         R9, R0,ASR#1
D847E:  MOV             R2, R4
D8480:  CMN.W           R9, #0x20 ; ' '
D8484:  STR.W           R9, [R7,#var_B0]
D8488:  IT LE
D848A:  MOVLE           R9, #0xFFFFFFE0
D848E:  SXTH            R1, R3
D8490:  MOV             R0, R2
D8492:  MOVW            R11, #0xFE32
D8496:  SUB.W           R5, R11, R9
D849A:  BLX             sub_108848
D849E:  MOV             R2, R0
D84A0:  MOVS            R0, #0xFF320000
D84A6:  SXTH            R4, R2
D84A8:  MOV             R1, R0
D84AA:  SUB.W           R0, R1, R9,LSL#16
D84AE:  SUBS            R3, R5, R4
D84B0:  SUB.W           R5, R0, R2,LSL#16
D84B4:  SUB.W           R0, R11, R4
D84B8:  STR.W           R4, [R7,#var_E0]
D84BC:  LDR.W           R4, [R7,#var_E8]
D84C0:  SUB.W           R1, R1, R2,LSL#16
D84C4:  LSLS            R2, R2, #0x10
D84C6:  MOV.W           R11, R9,LSL#16
D84CA:  STR             R2, [R6,#0x20]
D84CC:  LDRH.W          R2, [R4,R10,LSL#1]
D84D0:  ADDS            R4, #2
D84D2:  ADD.W           R2, R2, R2,LSR#15
D84D6:  SXTH            R2, R2
D84D8:  MOV.W           LR, R2,ASR#1
D84DC:  LDRSH.W         R2, [R4],#2
D84E0:  MOV             R12, R0
D84E2:  MOV             R8, R1
D84E4:  ADD             R3, R9
D84E6:  ADD             R5, R11
D84E8:  ADD.W           R1, R8, R11
D84EC:  ADD.W           R0, R12, R9
D84F0:  CMP             R2, LR
D84F2:  BLT             loc_D84DC
D84F4:  LDR.W           R0, [R7,#var_B0]
D84F8:  CMN.W           R0, #0x20 ; ' '
D84FC:  IT LE
D84FE:  MOVLE           R0, #0xFFFFFFE0
D8502:  STR.W           R0, [R7,#var_B0]
D8506:  LDR.W           R0, [R7,#var_E0]
D850A:  ADD.W           R1, R0, #0xCD
D850E:  LDR.W           R0, [R7,#var_A8]
D8512:  CMP             R0, #1
D8514:  BLT             loc_D859C
D8516:  LDR.W           R0, [R7,#var_C4]
D851A:  STR             R1, [R6,#0x1C]
D851C:  CMP             R0, #2
D851E:  BNE             loc_D85B8
D8520:  LDR.W           R0, [R7,#var_DC]
D8524:  MOVS            R5, #0
D8526:  LDR             R4, [R6,#0xC]
D8528:  MOV.W           LR, #0
D852C:  ADD.W           R9, R4, R0,LSL#1
D8530:  LDR.W           R0, [R7,#var_B0]
D8534:  MOV.W           R10, R0,LSL#16
D8538:  LDRSH.W         R0, [R9,R5,LSL#1]
D853C:  LDRSH.W         R2, [R4,R5,LSL#1]
D8540:  LDR.W           R1, [R7,#var_DC]
D8544:  CMP             R2, R0
D8546:  MOV             R0, R5
D8548:  IT LE
D854A:  ADDLE           R0, R0, R1
D854C:  MOVS            R1, #0
D854E:  LDRSH.W         R0, [R4,R0,LSL#1]
D8552:  MOVT            R1, #0xFF32
D8556:  ADD.W           R3, R1, #0xCD0000
D855A:  MVNS            R2, R0
D855C:  CMP.W           R2, #0xFFFFFFFF
D8560:  IT LE
D8562:  MOVLE.W         R2, #0xFFFFFFFF
D8566:  MLA.W           R2, R2, R3, R8
D856A:  CMP.W           R2, #0x1000000
D856E:  BLE             loc_D8584
D8570:  LDR.W           R1, [R7,#var_B8]
D8574:  AND.W           R0, R0, R0,ASR#31
D8578:  ADD.W           LR, LR, #1
D857C:  ADD             R0, R12
D857E:  ADDS            R0, #1
D8580:  STRH.W          R0, [R1,R5,LSL#1]
D8584:  LDR.W           R0, [R7,#var_B0]
D8588:  SUB.W           R8, R8, R10
D858C:  ADDS            R5, #1
D858E:  SUB.W           R12, R12, R0
D8592:  LDR.W           R0, [R7,#var_A8]
D8596:  CMP             R5, R0
D8598:  BLT             loc_D8538
D859A:  B               loc_D860E
D859C:  MOVW            R8, #0xC000
D85A0:  LDR.W           R2, [R7,#var_C0]
D85A4:  LDR.W           LR, [R7,#var_D4]
D85A8:  SUB.W           R11, R7, #-var_58
D85AC:  MOVT            R8, #0xFFFF
D85B0:  LDR.W           R9, [R6,#0x74]
D85B4:  B.W             loc_D93A8
D85B8:  LDR.W           R12, [R6,#0xC]
D85BC:  MOVS            R0, #0
D85BE:  MOV.W           LR, #0
D85C2:  LDRSH.W         R2, [R12,R0,LSL#1]
D85C6:  MOVS            R1, #0xFFFF0000
D85D0:  MVNS            R4, R2
D85D2:  CMP.W           R4, #0xFFFFFFFF
D85D6:  IT LE
D85D8:  MOVLE.W         R4, #0xFFFFFFFF
D85DC:  MLA.W           R1, R4, R1, R5
D85E0:  CMP.W           R1, #0x1000000
D85E4:  BLE             loc_D85FA
D85E6:  AND.W           R1, R2, R2,ASR#31
D85EA:  LDR.W           R2, [R7,#var_B8]
D85EE:  ADD.W           LR, LR, #1
D85F2:  ADD             R1, R3
D85F4:  ADDS            R1, #1
D85F6:  STRH.W          R1, [R2,R0,LSL#1]
D85FA:  LDR.W           R2, [R7,#var_B0]
D85FE:  SUB.W           R5, R5, R11
D8602:  LDR.W           R1, [R7,#var_A8]
D8606:  ADDS            R0, #1
D8608:  SUBS            R3, R3, R2
D860A:  CMP             R0, R1
D860C:  BLT             loc_D85C2
D860E:  CMP.W           LR, #3
D8612:  BLT             loc_D8660
D8614:  MOVS            R0, #0
D8616:  LDR             R1, [R6,#0x20]
D8618:  MOVT            R0, #0xFD2F
D861C:  LDR.W           R2, [R7,#var_C0]
D8620:  ADD.W           R0, R0, #0x1040000
D8624:  LDR.W           LR, [R7,#var_D4]
D8628:  CMP             R1, R0
D862A:  LDR.W           R9, [R6,#0x74]
D862E:  LDR.W           R0, [R7,#var_B8]; int
D8632:  MOVW            R8, #0xC000
D8636:  SUB.W           R11, R7, #-var_58
D863A:  MOVT            R8, #0xFFFF
D863E:  BLE.W           loc_D9374
D8642:  LDR.W           R1, [R7,#var_A8]
D8646:  MOV             R10, LR
D8648:  MOV             R5, R2
D864A:  LSLS            R1, R1, #1; n
D864C:  BLX             sub_10967C
D8650:  MOVS            R0, #0
D8652:  MOV             R2, R5
D8654:  MOV             LR, R10
D8656:  MOVS            R1, #0
D8658:  STR.W           R0, [R7,#var_B0]
D865C:  B.W             loc_D93A8
D8660:  MOVW            R8, #0xC000
D8664:  LDR.W           R2, [R7,#var_C0]
D8668:  LDR.W           LR, [R7,#var_D4]
D866C:  SUB.W           R11, R7, #-var_58
D8670:  MOVT            R8, #0xFFFF
D8674:  LDR.W           R9, [R6,#0x74]
D8678:  LDR             R1, [R6,#0x1C]
D867A:  B.W             loc_D93A8
D867E:  LDR.W           R3, [R8,#0x50]
D8682:  SUB             SP, SP, #0x20 ; ' '
D8684:  LDR             R1, [R6]
D8686:  ADD.W           R0, R8, #0x60 ; '`'
D868A:  ADD.W           R2, R8, #0x58 ; 'X'
D868E:  CMP             R1, #0
D8690:  IT NE
D8692:  MOVNE           R1, #1
D8694:  STR             R0, [SP,#0x1A8+var_1A8]
D8696:  LDR             R0, [R6,#4]
D8698:  STRD.W          R0, R1, [SP,#0x1A8+var_1A4]
D869C:  LDR             R0, [R6,#0x70]
D869E:  STR             R0, [SP,#0x1A8+var_19C]
D86A0:  LDR.W           R0, [R7,#var_C4]
D86A4:  STR             R0, [SP,#0x1A8+var_198]
D86A6:  LDR             R0, [R6,#0x44]
D86A8:  LDR.W           R1, [R6,#0x80]
D86AC:  STR             R0, [SP,#0x1A8+var_194]
D86AE:  LDR.W           R0, [R7,#var_B8]
D86B2:  STR             R0, [SP,#0x1A8+var_190]
D86B4:  MOV             R0, R12
D86B6:  BLX             j_spreading_decision
D86BA:  ADD             SP, SP, #0x20 ; ' '
D86BC:  MOV             R1, R0
D86BE:  STR.W           R1, [R8,#0x50]
D86C2:  LDR.W           R2, =(unk_5C98B - 0xD86CE)
D86C6:  MOV             R0, R10
D86C8:  MOVS            R3, #5
D86CA:  ADD             R2, PC; unk_5C98B
D86CC:  BLX             j_ec_enc_icdf
D86D0:  LDR.W           R12, [R7,#var_CC]
D86D4:  LDR.W           R0, [R7,#var_DC]
D86D8:  LDR.W           R1, [R8,#0x40]
D86DC:  LSLS            R0, R0, #2
D86DE:  CBZ             R1, loc_D86FE
D86E0:  LDR             R2, [R6,#0x5C]
D86E2:  MOV             R1, #0x55555556
D86EA:  CMP             R2, #0x1A
D86EC:  SMMUL.W         R1, R2, R1
D86F0:  ADD.W           R1, R1, R1,LSR#31
D86F4:  IT GT
D86F6:  MOVGT           R1, #8
D86F8:  LDR.W           R2, [R7,#var_A8]
D86FC:  STR             R1, [R2]
D86FE:  ADDS            R0, #7
D8700:  BIC.W           R0, R0, #7
D8704:  STR             R0, [R6,#0x70]
D8706:  SUB.W           R1, SP, R0
D870A:  MOV             SP, R1
D870C:  LDR.W           R3, [R7,#var_C4]
D8710:  MOV             R0, R12
D8712:  MOV             R2, R11
D8714:  STR.W           R1, [R7,#var_B8]
D8718:  BLX             j_init_caps
D871C:  LDR.W           R0, [R7,#var_F4]
D8720:  LSLS            R0, R0, #3
D8722:  STR.W           R0, [R7,#dest]
D8726:  MOV             R0, R10
D8728:  BLX             j_ec_tell_frac
D872C:  CMP             R9, R4
D872E:  LDR.W           R9, [R6,#0x88]
D8732:  MOV             LR, R0
D8734:  MOV.W           R8, #0
D8738:  BLE.W           loc_D884A
D873C:  LDR.W           R2, [R7,#var_C4]
D8740:  MOVS            R3, #6
D8742:  MOV             R5, R4
D8744:  LDR.W           R1, [R7,#var_E8]
D8748:  MOV             R4, R5
D874A:  ADDS            R5, R4, #1
D874C:  LDRSH.W         R0, [R1,R4,LSL#1]
D8750:  STR.W           R5, [R7,#var_E0]
D8754:  LDRSH.W         R1, [R1,R5,LSL#1]
D8758:  SUBS            R0, R1, R0
D875A:  LDR.W           R1, [R7,#var_D4]
D875E:  MULS            R0, R2
D8760:  LSL.W           R2, R0, R1
D8764:  CMP             R2, #0x30 ; '0'
D8766:  MOV             R5, R2
D8768:  MOV.W           R1, R2,LSL#3
D876C:  IT LE
D876E:  MOVLE           R5, #0x30 ; '0'
D8770:  CMP             R1, R5
D8772:  MOV             R0, R5
D8774:  IT LT
D8776:  LSLLT           R0, R2, #3
D8778:  LDR.W           R2, [R7,#dest]
D877C:  STR.W           R0, [R7,#var_B0]
D8780:  SUB.W           R10, R2, R8
D8784:  ADD.W           R2, LR, R3,LSL#3
D8788:  CMP             R2, R10
D878A:  STR.W           R3, [R7,#var_D0]
D878E:  BGE             loc_D8802
D8790:  MVNS            R0, R5
D8792:  MVNS            R1, R1
D8794:  CMP             R0, R1
D8796:  STR.W           R8, [R7,#var_F4]
D879A:  IT GT
D879C:  MOVGT           R1, R0
D879E:  MOV.W           R8, #0
D87A2:  MOV.W           R11, #0
D87A6:  MOV             R2, R3
D87A8:  ADDS            R0, R1, #1
D87AA:  STR.W           R0, [R7,#n]
D87AE:  LDR.W           R0, [R7,#var_B8]
D87B2:  LDR.W           R0, [R0,R4,LSL#2]
D87B6:  CMP             R11, R0
D87B8:  BGE             loc_D880C
D87BA:  LDR.W           R0, [R7,#var_A8]
D87BE:  MOVS            R1, #0
D87C0:  LDR.W           R5, [R0,R4,LSL#2]
D87C4:  CMP             R8, R5
D87C6:  IT LT
D87C8:  MOVLT           R1, #1
D87CA:  LDR.W           R9, [R7,#var_AC]
D87CE:  MOV             R0, R9
D87D0:  BLX             j_ec_enc_bit_logp
D87D4:  MOV             R0, R9
D87D6:  BLX             j_ec_tell_frac
D87DA:  MOV             LR, R0
D87DC:  CMP             R8, R5
D87DE:  BGE             loc_D880C
D87E0:  LDR.W           R0, [R7,#n]
D87E4:  ADD.W           R8, R8, #1
D87E8:  MOVS            R2, #1
D87EA:  ADD             R10, R0
D87EC:  LDR.W           R0, [R7,#var_B0]
D87F0:  ADD             R11, R0
D87F2:  ADD.W           R0, LR, #8
D87F6:  CMP             R0, R10
D87F8:  BLT             loc_D87AE
D87FA:  LDR.W           R8, [R7,#var_F4]
D87FE:  ADD             R8, R11
D8800:  B               loc_D881A
D8802:  MOV.W           R11, #0
D8806:  LDRD.W          R0, R2, [R7,#var_C8]
D880A:  B               loc_D8832
D880C:  LDR.W           R0, [R7,#var_F4]
D8810:  CMP.W           R8, #0
D8814:  ADD             R0, R11
D8816:  MOV             R8, R0
D8818:  BEQ             loc_D882A
D881A:  LDR.W           R0, [R7,#var_D0]
D881E:  SUBS            R0, #1
D8820:  CMP             R0, #2
D8822:  IT LE
D8824:  MOVLE           R0, #2
D8826:  STR.W           R0, [R7,#var_D0]
D882A:  LDRD.W          R0, R2, [R7,#var_C8]
D882E:  LDR.W           R9, [R6,#0x88]
D8832:  LDR.W           R5, [R7,#var_E0]
D8836:  LDR.W           R1, [R7,#var_A8]
D883A:  LDR.W           R3, [R7,#var_D0]
D883E:  CMP             R5, R0
D8840:  STR.W           R11, [R1,R4,LSL#2]
D8844:  BNE.W           loc_D8744
D8848:  B               loc_D884E
D884A:  LDR.W           R2, [R7,#var_C4]
D884E:  LDR.W           R11, [R7,#var_C0]
D8852:  CMP             R2, #2
D8854:  LDR.W           R10, [R7,#var_AC]
D8858:  LDR.W           R4, [R7,#var_D8]
D885C:  STR.W           R8, [R7,#var_F4]
D8860:  BNE.W           loc_D89AE
D8864:  LDR.W           R0, [R7,#var_D4]
D8868:  STR.W           LR, [R7,#var_B0]
D886C:  CMP             R0, #0
D886E:  BEQ             loc_D8964
D8870:  LDR.W           R0, [R7,#var_CC]
D8874:  MOV.W           R8, #0
D8878:  MOV.W           R9, #1
D887C:  LDR.W           R12, [R0,#0x18]
D8880:  MOVS            R0, #1
D8882:  LDRH.W          LR, [R12]
D8886:  ADD.W           R8, R8, #1
D888A:  LDR.W           R2, [R7,#var_D4]
D888E:  SXTH.W          R1, LR
D8892:  LDRSH.W         R3, [R12,R8,LSL#1]
D8896:  LSLS            R1, R2
D8898:  LSL.W           R2, R3, R2
D889C:  UXTH.W          LR, R3
D88A0:  CMP             R1, R2
D88A2:  BGE             loc_D88E6
D88A4:  LDR.W           R4, [R6,#0x80]
D88A8:  SUBS            R3, R2, R1
D88AA:  LDR.W           R2, [R7,#var_E4]
D88AE:  ADD.W           R10, R4, R1,LSL#1
D88B2:  ADD             R1, R2
D88B4:  ADD.W           R11, R4, R1,LSL#1
D88B8:  LDRSH.W         R5, [R11],#2
D88BC:  LDRSH.W         R4, [R10],#2
D88C0:  SUBS            R2, R4, R5
D88C2:  IT MI
D88C4:  NEGMI           R2, R2
D88C6:  ADDS            R1, R5, R4
D88C8:  IT MI
D88CA:  NEGMI           R1, R1
D88CC:  CMP             R4, #0
D88CE:  IT MI
D88D0:  NEGMI           R4, R4
D88D2:  CMP             R5, #0
D88D4:  ADD             R2, R9
D88D6:  IT MI
D88D8:  NEGMI           R5, R5
D88DA:  ADD             R0, R4
D88DC:  ADD.W           R9, R2, R1
D88E0:  ADD             R0, R5
D88E2:  SUBS            R3, #1
D88E4:  BNE             loc_D88B8
D88E6:  CMP.W           R8, #0xD
D88EA:  BNE             loc_D8886
D88EC:  UXTH.W          R1, R9
D88F0:  MOVW            R2, #0x5A82
D88F4:  MULS            R1, R2
D88F6:  MOV.W           R2, R9,ASR#16
D88FA:  MOVW            R5, #0xB504
D88FE:  MULS            R2, R5
D8900:  LDR.W           R4, [R7,#var_D4]
D8904:  LDRSH.W         R5, [R12,#0x1A]
D8908:  CMP             R4, #2
D890A:  MOV.W           R3, #0xD
D890E:  ADD.W           R4, R4, #1
D8912:  IT LT
D8914:  MOVLT           R3, #5
D8916:  LSLS            R5, R4
D8918:  ADD.W           R1, R2, R1,LSR#15
D891C:  ADD             R3, R5
D891E:  SXTH            R4, R5
D8920:  UXTH            R2, R1
D8922:  SXTH.W          R12, R3
D8926:  SMULTB.W        R1, R1, R3
D892A:  MUL.W           R12, R12, R2
D892E:  UXTH            R2, R0
D8930:  MULS            R2, R4
D8932:  SMULTB.W        R0, R0, R5
D8936:  MOV.W           R3, R12,ASR#15
D893A:  ADD.W           R1, R3, R1,LSL#1
D893E:  ASRS            R2, R2, #0xF
D8940:  ADD.W           R0, R2, R0,LSL#1
D8944:  MOVS            R2, #0
D8946:  CMP             R1, R0
D8948:  IT GT
D894A:  MOVGT           R2, #1
D894C:  LDR.W           R11, [R7,#var_C0]
D8950:  LDR.W           R10, [R7,#var_AC]
D8954:  LDR.W           R4, [R7,#var_D8]
D8958:  LDR.W           R9, [R6,#0x88]
D895C:  LDR.W           R8, [R7,#var_F4]
D8960:  STR.W           R2, [R7,#var_94]
D8964:  LDR             R1, [R6,#0x28]
D8966:  MOV             R0, #0x10624DD3
D896E:  LDR.W           R2, =(unk_5C9BA - 0xD8982)
D8972:  LDR.W           R3, [R11,#0xE8]
D8976:  SMMUL.W         R0, R1, R0
D897A:  LDR.W           R1, =(unk_5C990 - 0xD8984)
D897E:  ADD             R2, PC; unk_5C9BA
D8980:  ADD             R1, PC; unk_5C990
D8982:  SUB             SP, SP, #8
D8984:  STR             R3, [SP,#0x190+var_190]
D8986:  LSRS            R3, R0, #6
D8988:  ADD.W           R0, R3, R0,LSR#31
D898C:  MOVS            R3, #0x15
D898E:  SXTH            R0, R0
D8990:  BLX             j_hysteresis_decision
D8994:  ADD             SP, SP, #8
D8996:  CMP             R4, R0
D8998:  IT GT
D899A:  MOVGT           R0, R4
D899C:  LDR.W           R1, [R7,#var_C8]
D89A0:  CMP             R1, R0
D89A2:  IT LT
D89A4:  MOVLT           R0, R1
D89A6:  STR.W           R0, [R11,#0xE8]
D89AA:  LDR.W           LR, [R7,#var_B0]
D89AE:  LDR.W           R0, [R7,#dest]
D89B2:  MOV             R5, R9
D89B4:  MOVW            R9, #:lower16:(elf_hash_chain+0x2258)
D89B8:  ADD.W           R1, LR, #0x30 ; '0'
D89BC:  SUB.W           R0, R0, R8
D89C0:  MOVT            R9, #:upper16:(elf_hash_chain+0x2258)
D89C4:  CMP             R1, R0
D89C6:  BLE             loc_D89D0
D89C8:  MOVS            R0, #5
D89CA:  STR.W           R0, [R7,#n]
D89CE:  B               loc_D8A00
D89D0:  CMP             R4, #0
D89D2:  BGT             loc_D89DE
D89D4:  LDR.W           R0, [R11,#0x40]
D89D8:  CMP             R0, #0
D89DA:  BEQ.W           loc_D8CAE
D89DE:  MOVS            R0, #0
D89E0:  MOVS            R1, #5
D89E2:  STRH.W          R0, [R11,#0xE4]
D89E6:  LDR.W           R2, =(unk_5C9E4 - 0xD89F6)
D89EA:  MOV             R0, R10
D89EC:  MOVS            R3, #7
D89EE:  STR.W           R1, [R7,#n]
D89F2:  ADD             R2, PC; unk_5C9E4
D89F4:  BLX             j_ec_enc_icdf
D89F8:  MOV             R0, R10
D89FA:  BLX             j_ec_tell_frac
D89FE:  MOV             LR, R0
D8A00:  LDR             R0, [R6,#0x6C]
D8A02:  LDR.W           R2, [R7,#var_CC]
D8A06:  CMP             R0, #1
D8A08:  BLT             loc_D8A48
D8A0A:  LDR             R1, [R6,#0x3C]
D8A0C:  MOVW            R0, #0x4FB
D8A10:  LSR.W           R3, R0, R1
D8A14:  LDR.W           R1, [R6,#0x84]
D8A18:  LDR             R0, [R2,#0x1C]
D8A1A:  CMP             R1, R3
D8A1C:  IT LT
D8A1E:  MOVLT           R3, R1
D8A20:  CMP             R4, #0
D8A22:  STR.W           R3, [R7,#var_B0]
D8A26:  BEQ             loc_D8A4E
D8A28:  LDR.W           R1, [R7,#var_C4]
D8A2C:  LDR             R3, [R6,#0x6C]
D8A2E:  ADD.W           R1, R1, R1,LSL#3
D8A32:  NEGS            R1, R1
D8A34:  ADD.W           R1, R3, R1,LSL#3
D8A38:  SUB.W           R8, R1, #0x20 ; ' '
D8A3C:  CMP.W           R8, #0
D8A40:  IT LE
D8A42:  MOVLE.W         R8, #0
D8A46:  B               loc_D8A54
D8A48:  LDR.W           R5, [R6,#0x84]
D8A4C:  B               loc_D8DF2
D8A4E:  LDR             R1, [R6,#0x6C]
D8A50:  SUB.W           R8, R1, R5,LSL#3
D8A54:  LDR.W           R1, [R7,#var_D4]
D8A58:  LDR.W           R12, [R11,#0x34]
D8A5C:  SUBS            R1, R0, R1
D8A5E:  CMP.W           R12, #0
D8A62:  ITTT NE
D8A64:  LDRNE.W         R0, [R11,#0xD8]
D8A68:  ASRNE           R0, R1
D8A6A:  ADDNE           R8, R0
D8A6C:  CMP             R4, #0
D8A6E:  STR.W           R1, [R7,#var_D0]
D8A72:  BEQ             loc_D8AE4
D8A74:  MOV             R9, R12
D8A76:  LDRSH.W         R12, [R7,#var_9A]
D8A7A:  LDR             R1, [R6,#0x3C]
D8A7C:  MOVS            R0, #0x60 ; '`'
D8A7E:  LDR.W           R3, [R11,#0xBC]
D8A82:  LSR.W           R2, R0, R1
D8A86:  MOV.W           R0, #0xF0000000
D8A8A:  ADD.W           R5, R0, R12,LSL#16
D8A8E:  MOV.W           R0, #0x190
D8A92:  CMP             R3, #0x64 ; 'd'
D8A94:  MOVW            R3, #0x2CCD
D8A98:  SMULTB.W        R5, R5, R0
D8A9C:  IT LT
D8A9E:  ADDLT           R8, R2
D8AA0:  MOV.W           R2, #0x90
D8AA4:  LSR.W           R2, R2, R1
D8AA8:  IT GT
D8AAA:  SUBGT.W         R8, R8, R2
D8AAE:  ADD.W           R2, R8, R5,ASR#14
D8AB2:  CMP.W           R2, #0x190
D8AB6:  IT GT
D8AB8:  MOVGT           R0, R2
D8ABA:  CMP             R12, R3
D8ABC:  IT LE
D8ABE:  MOVLE           R0, R2
D8AC0:  LDR.W           R3, [R7,#var_F4]
D8AC4:  MOVS            R2, #2
D8AC6:  MOV             R12, R9
D8AC8:  ADD.W           R1, R3, LR
D8ACC:  ADDS            R1, #0x3F ; '?'
D8ACE:  ADD.W           R4, R2, R1,ASR#6
D8AD2:  LDR             R1, [R6,#0x14]
D8AD4:  ADD             R1, R3
D8AD6:  ADDW            R1, R1, #0x167
D8ADA:  CMP.W           R4, R1,ASR#6
D8ADE:  IT LE
D8AE0:  ASRLE           R4, R1, #6
D8AE2:  B               loc_D8D08
D8AE4:  LDR.W           R1, [R11,#0xEC]
D8AE8:  LDR.W           R0, [R11,#0x5C]
D8AEC:  LDR.W           R10, [R11,#0x40]
D8AF0:  STR.W           R1, [R7,#var_E0]
D8AF4:  CMP             R0, #0
D8AF6:  LDR             R5, [R2,#8]
D8AF8:  LDR             R1, [R2,#0x18]
D8AFA:  IT EQ
D8AFC:  MOVEQ           R0, R5
D8AFE:  STR.W           R1, [R7,#var_E8]
D8B02:  LDRSH.W         R1, [R1,R0,LSL#1]
D8B06:  LDR.W           R4, [R7,#var_D4]
D8B0A:  LDRH.W          R2, [R7,#var_9A]
D8B0E:  LSLS            R1, R4
D8B10:  STR.W           R1, [R7,#dest]
D8B14:  LDR.W           R1, [R7,#var_A0]
D8B18:  STR.W           R1, [R6,#0x88]
D8B1C:  LDR.W           R1, [R7,#var_C4]
D8B20:  CMP             R1, #2
D8B22:  MOV             R1, R8
D8B24:  BNE             loc_D8BB4
D8B26:  LDR.W           R9, [R7,#var_C0]
D8B2A:  MOV             R11, LR
D8B2C:  LDR.W           R1, [R9,#0xE8]
D8B30:  CMP             R0, R1
D8B32:  IT GT
D8B34:  MOVGT           R0, R1
D8B36:  LDR.W           R1, [R7,#var_E8]
D8B3A:  LDRSH.W         R1, [R1,R0,LSL#1]
D8B3E:  STR             R5, [R6,#0x74]
D8B40:  STR             R2, [R6,#0x68]
D8B42:  MOVW            R2, #0x6666
D8B46:  STR.W           R12, [R6,#0x84]
D8B4A:  LSLS            R1, R4
D8B4C:  SUBS            R5, R1, R0
D8B4E:  SXTH            R0, R5
D8B50:  SMULBB.W        R0, R0, R2
D8B54:  LDR.W           R2, [R7,#dest]
D8B58:  ADD             R2, R1
D8B5A:  STR.W           R2, [R7,#dest]
D8B5E:  SXTH            R1, R2
D8B60:  BLX             sub_108848
D8B64:  LDRSH.W         R1, [R9,#0xE4]
D8B68:  MOVW            R12, #0
D8B6C:  LSLS            R2, R5, #0x13
D8B6E:  SXTH            R3, R0
D8B70:  CMP.W           R1, #0x100
D8B74:  UXTH.W          R5, R8
D8B78:  IT GE
D8B7A:  MOVGE.W         R1, #0x100
D8B7E:  MOVT            R12, #0xFFE6
D8B82:  ADD.W           R1, R12, R1,LSL#16
D8B86:  MULS            R3, R5
D8B88:  LDR             R5, [R6,#0x74]
D8B8A:  SMULTB.W        R0, R8, R0
D8B8E:  LDR.W           R12, [R6,#0x84]
D8B92:  SMULTT.W        R1, R2, R1
D8B96:  MOVW            R9, #:lower16:(elf_hash_chain+0x2258)
D8B9A:  MOV             LR, R11
D8B9C:  MOVT            R9, #:upper16:(elf_hash_chain+0x2258)
D8BA0:  ASRS            R2, R3, #0xF
D8BA2:  ADD.W           R0, R2, R0,LSL#1
D8BA6:  LDR             R2, [R6,#0x68]
D8BA8:  CMP.W           R0, R1,ASR#8
D8BAC:  IT GE
D8BAE:  ASRGE           R0, R1, #8
D8BB0:  SUB.W           R1, R8, R0
D8BB4:  MOVS            R3, #0x13
D8BB6:  MOVS            R0, #0
D8BB8:  LSLS            R3, R4
D8BBA:  LDR.W           R4, [R6,#0x88]
D8BBE:  MOVT            R0, #0xFD2F
D8BC2:  MOV             R11, R2
D8BC4:  SUBS            R3, R4, R3
D8BC6:  ADD.W           R0, R0, R2,LSL#16
D8BCA:  ADD             R1, R3
D8BCC:  ASRS            R2, R0, #0x10
D8BCE:  ASRS            R0, R0, #0xF
D8BD0:  UXTH            R3, R1
D8BD2:  MULS            R2, R3
D8BD4:  ASRS            R3, R1, #0x10
D8BD6:  MULS            R0, R3
D8BD8:  ADD.W           R0, R0, R2,ASR#15
D8BDC:  LDR.W           R2, [R7,#var_E0]
D8BE0:  ADD.W           R1, R1, R0,LSL#1
D8BE4:  MOVS            R0, #0
D8BE6:  CMP             R2, #0
D8BE8:  IT EQ
D8BEA:  MOVEQ           R0, #1
D8BEC:  CMP.W           R10, #0
D8BF0:  IT NE
D8BF2:  MOVNE.W         R10, #1
D8BF6:  ORRS.W          R3, R10, R0
D8BFA:  BNE             loc_D8C1A
D8BFC:  LDR.W           R0, [R7,#dest]
D8C00:  LDR             R2, [R6,#0x18]
D8C02:  LSLS            R0, R0, #0x13
D8C04:  SMULTB.W        R0, R0, R2
D8C08:  ASRS            R2, R1, #0x1F
D8C0A:  ADD.W           R2, R1, R2,LSR#30
D8C0E:  ADD.W           R1, R1, R0,ASR#10
D8C12:  ASRS            R0, R2, #2
D8C14:  CMP             R0, R1
D8C16:  IT GT
D8C18:  ASRGT           R1, R2, #2
D8C1A:  LDR.W           R0, [R7,#var_E8]
D8C1E:  SXTH.W          R2, R11
D8C22:  ADD.W           R0, R0, R5,LSL#1
D8C26:  LDR.W           R5, [R7,#var_D4]
D8C2A:  LDRSH.W         R0, [R0,#-4]
D8C2E:  LSLS            R0, R5
D8C30:  LDR.W           R5, [R7,#var_C4]
D8C34:  MULS            R0, R5
D8C36:  LDR             R5, [R6,#0x20]
D8C38:  LSLS            R0, R0, #0x13
D8C3A:  SMULTB.W        R5, R0, R5
D8C3E:  ASRS            R0, R1, #2
D8C40:  ASRS            R4, R5, #0xA
D8C42:  CMP.W           R4, R1,ASR#2
D8C46:  IT GT
D8C48:  ASRGT           R0, R5, #0xA
D8C4A:  CMP             R1, R0
D8C4C:  IT LT
D8C4E:  MOVLT           R0, R1
D8C50:  CMP.W           R12, #0
D8C54:  MOV             R1, R12
D8C56:  IT NE
D8C58:  MOVNE           R1, #1
D8C5A:  ANDS            R1, R3
D8C5C:  CMP             R1, #1
D8C5E:  BNE             loc_D8C7A
D8C60:  SUB.W           R0, R0, R8
D8C64:  MOVW            R3, #0x55C3
D8C68:  UXTH            R1, R0
D8C6A:  ASRS            R0, R0, #0x10
D8C6C:  MULS            R1, R3
D8C6E:  MOVW            R3, #0xAB86
D8C72:  MLA.W           R0, R0, R3, R8
D8C76:  ADD.W           R0, R0, R1,LSR#15
D8C7A:  MOVW            R1, #0xCCC
D8C7E:  CMP             R2, R1
D8C80:  LDR             R2, [R6,#0x28]
D8C82:  BGT             loc_D8CEA
D8C84:  LDR.W           R1, [R7,#var_E0]
D8C88:  CBNZ            R1, loc_D8CEA
D8C8A:  ADD.W           R1, R9, #0x3E80
D8C8E:  SUBS            R1, R1, R2
D8C90:  CMP.W           R1, #0x7D00
D8C94:  IT GE
D8C96:  MOVGE.W         R1, #0x7D00
D8C9A:  CMP             R1, #0
D8C9C:  BLT             loc_D8CCE
D8C9E:  SXTH            R1, R1
D8CA0:  MOVW            R2, #0xD01
D8CA4:  SMULBB.W        R1, R1, R2
D8CA8:  SBFX.W          R1, R1, #0xF, #0x10
D8CAC:  B               loc_D8CD0
D8CAE:  LDR.W           R0, [R11,#0xE8]
D8CB2:  STR.W           R0, [R7,#var_B0]
D8CB6:  LDR             R0, [R6,#0x28]
D8CB8:  LDRSH.W         R3, [R7,#var_9A]
D8CBC:  CMP.W           R0, #0xFA00
D8CC0:  BGE.W           loc_D9300
D8CC4:  MOV.W           R0, #0x400
D8CC8:  LDR.W           R2, [R7,#var_CC]
D8CCC:  B               loc_D931C
D8CCE:  MOVS            R1, #0
D8CD0:  LDR             R2, [R6,#0x1C]
D8CD2:  UXTH            R3, R0
D8CD4:  MULS            R1, R2
D8CD6:  SBFX.W          R2, R1, #0xA, #0x10
D8CDA:  LSLS            R1, R1, #6
D8CDC:  SMULTT.W        R1, R0, R1
D8CE0:  MULS            R2, R3
D8CE2:  ADD.W           R0, R0, R1,LSL#1
D8CE6:  ADD.W           R0, R0, R2,ASR#15
D8CEA:  MOV.W           R1, R8,LSL#1
D8CEE:  CMP             R1, R0
D8CF0:  IT LT
D8CF2:  MOVLT.W         R0, R8,LSL#1
D8CF6:  LDR.W           R1, [R7,#var_F4]
D8CFA:  LDR.W           R11, [R7,#var_C0]
D8CFE:  MOVS            R2, #2
D8D00:  ADD             R1, LR
D8D02:  ADDS            R1, #0x3F ; '?'
D8D04:  ADD.W           R4, R2, R1,ASR#6
D8D08:  ADD.W           R1, R0, LR
D8D0C:  LDR.W           R0, [R11,#0xDC]
D8D10:  ADD.W           R2, R1, #0x20 ; ' '
D8D14:  CMP.W           R4, R2,ASR#6
D8D18:  IT LE
D8D1A:  ASRLE           R4, R2, #6
D8D1C:  LDR.W           R2, [R7,#var_B0]
D8D20:  CMP             R2, R4
D8D22:  IT LT
D8D24:  MOVLT           R4, R2
D8D26:  LDR             R2, [R6,#0x60]
D8D28:  MOV             R10, R4
D8D2A:  MOV.W           R8, R4,LSL#6
D8D2E:  CMP             R2, #0
D8D30:  IT NE
D8D32:  MOVNE.W         R10, #2
D8D36:  IT NE
D8D38:  MOVNE.W         R8, #0x80
D8D3C:  LDR             R2, [R6,#0x6C]
D8D3E:  SUB.W           R5, R1, R2
D8D42:  MOVW            R1, #0x3C9
D8D46:  IT NE
D8D48:  MOVNE           R5, #0
D8D4A:  CMP             R0, R1
D8D4C:  BGT             loc_D8D6C
D8D4E:  ADDS            R1, R0, #1
D8D50:  STR.W           R1, [R11,#0xDC]
D8D54:  MOV.W           R1, #0x150000
D8D58:  ADD.W           R0, R1, R0,LSL#16
D8D5C:  BLX             j_celt_rcp
D8D60:  LDR.W           R12, [R11,#0x34]
D8D64:  CMP.W           R12, #0
D8D68:  BNE             loc_D8D74
D8D6A:  B               loc_D8DD6
D8D6C:  MOVS            R0, #0x21 ; '!'
D8D6E:  CMP.W           R12, #0
D8D72:  BEQ             loc_D8DD6
D8D74:  LDR.W           R1, [R7,#var_C0]
D8D78:  MOV             R2, R1
D8D7A:  LDRD.W          R12, LR, [R2,#0xD0]
D8D7E:  LDR.W           R1, [R7,#var_D0]
D8D82:  LDR.W           R3, [R2,#0xD8]
D8D86:  ADDS            R2, #0xD0
D8D88:  LSLS            R5, R1
D8D8A:  SUBS            R3, R5, R3
D8D8C:  SUB.W           R3, R3, LR
D8D90:  SXTH            R1, R0
D8D92:  LSLS            R0, R0, #0x10
D8D94:  UXTH            R5, R3
D8D96:  ASRS            R3, R3, #0x10
D8D98:  MULS            R1, R5
D8D9A:  ASRS            R0, R0, #0xF
D8D9C:  ADD.W           R1, LR, R1,ASR#15
D8DA0:  MLA.W           R1, R0, R3, R1
D8DA4:  LDR             R0, [R6,#0x6C]
D8DA6:  SUB.W           R0, R8, R0
D8DAA:  ADD             R0, R12
D8DAC:  CMP.W           R0, #0xFFFFFFFF
D8DB0:  RSB.W           R3, R1, #0
D8DB4:  STM             R2!, {R0,R1,R3}
D8DB6:  BGT             loc_D8DD6
D8DB8:  LDR.W           R2, [R7,#var_C0]
D8DBC:  MOVS            R1, #0
D8DBE:  STR.W           R1, [R2,#0xD0]
D8DC2:  ASRS            R1, R0, #0x1F
D8DC4:  ADD.W           R0, R0, R1,LSR#26
D8DC8:  SUB.W           R10, R4, R0,ASR#6
D8DCC:  LDR             R0, [R6,#0x60]
D8DCE:  CMP             R0, #0
D8DD0:  IT NE
D8DD2:  MOVNE.W         R10, #2
D8DD6:  LDR.W           R0, [R7,#var_B0]
D8DDA:  MOV             R5, R10
D8DDC:  CMP             R0, R5
D8DDE:  IT LT
D8DE0:  MOVLT           R5, R0
D8DE2:  LDR.W           R10, [R7,#var_AC]
D8DE6:  MOV             R1, R5
D8DE8:  MOV             R0, R10
D8DEA:  BLX             j_ec_enc_shrink
D8DEE:  LDR.W           R11, [R7,#var_C0]
D8DF2:  LDR             R0, [R6,#0x70]
D8DF4:  SUB.W           R1, SP, R0
D8DF8:  STR.W           R1, [R7,#var_B0]
D8DFC:  MOV             SP, R1
D8DFE:  SUB.W           R8, SP, R0
D8E02:  MOV             SP, R8
D8E04:  SUB.W           R9, SP, R0
D8E08:  MOV             SP, R9
D8E0A:  MOV             R0, R10
D8E0C:  BLX             j_ec_tell_frac
D8E10:  RSB.W           R0, R0, R5,LSL#6
D8E14:  MOVS            R4, #0
D8E16:  SUB.W           R12, R0, #1
D8E1A:  LDR.W           R0, [R7,#var_D4]
D8E1E:  STR.W           R5, [R6,#0x84]
D8E22:  CMP             R0, #2
D8E24:  BLT             loc_D8E4C
D8E26:  LDR.W           R0, [R7,#var_F8]
D8E2A:  CMP             R0, #0
D8E2C:  LDRD.W          R0, R10, [R7,#var_CC]
D8E30:  LDR             R3, [R6,#0x7C]
D8E32:  LDR.W           LR, [R7,#n]
D8E36:  BEQ             loc_D8E56
D8E38:  LDR.W           R2, [R7,#var_D4]
D8E3C:  MOVS            R1, #0x10
D8E3E:  MOVS            R4, #0
D8E40:  ADD.W           R1, R1, R2,LSL#3
D8E44:  CMP             R12, R1
D8E46:  IT GE
D8E48:  MOVGE           R4, #1
D8E4A:  B               loc_D8E56
D8E4C:  LDRD.W          R0, R10, [R7,#var_CC]
D8E50:  LDR             R3, [R6,#0x7C]
D8E52:  LDR.W           LR, [R7,#n]
D8E56:  LSLS            R1, R3, #1
D8E58:  SUB.W           R3, R10, #1
D8E5C:  STR.W           R1, [R7,#n]
D8E60:  LDR.W           R1, [R6,#0x84]
D8E64:  LSLS            R1, R1, #6
D8E66:  STR.W           R1, [R7,#var_E8]
D8E6A:  LDR.W           R1, [R11,#0x40]
D8E6E:  LDR.W           R2, [R11,#0x5C]
D8E72:  CMP             R1, #0
D8E74:  IT NE
D8E76:  MOVNE           R3, #1
D8E78:  SUB             SP, SP, #0x40 ; '@'
D8E7A:  LDR.W           R5, [R7,#var_C4]
D8E7E:  MOVS            R1, #1
D8E80:  STR.W           R9, [SP,#0x1C8+var_1A8]
D8E84:  CMP             R4, #0
D8E86:  STR             R5, [SP,#0x1C8+var_1A4]
D8E88:  LDR.W           R5, [R7,#var_D4]
D8E8C:  STR             R5, [SP,#0x1C8+var_1A0]
D8E8E:  LDR.W           R5, [R7,#var_AC]
D8E92:  STR.W           R9, [R7,#var_D0]
D8E96:  STRD.W          R5, R1, [SP,#0x1C8+var_19C]
D8E9A:  STRD.W          R2, R3, [SP,#0x1C8+var_194]
D8E9E:  ADD.W           R2, R11, #0xE8
D8EA2:  STR.W           R4, [R7,#var_E0]
D8EA6:  IT NE
D8EA8:  MOVNE           R4, #8
D8EAA:  SUB.W           R3, R12, R4
D8EAE:  SUB.W           R12, R7, #-var_94
D8EB2:  LDR.W           R1, [R7,#var_B8]
D8EB6:  STRD.W          R1, LR, [SP,#0x1C8+var_1C8]
D8EBA:  SUB.W           R1, R7, #-var_58
D8EBE:  STRD.W          R2, R12, [SP,#0x1C8+var_1C0]
D8EC2:  MOV             R2, R10
D8EC4:  STR             R3, [SP,#0x1C8+var_1B8]
D8EC6:  STR             R1, [SP,#0x1C8+var_1B4]
D8EC8:  LDR.W           R1, [R7,#var_B0]
D8ECC:  STR.W           R8, [SP,#0x1C8+var_1B0]
D8ED0:  STR             R1, [SP,#0x1C8+var_1AC]
D8ED2:  LDR.W           R1, [R7,#var_D8]
D8ED6:  LDR.W           R3, [R7,#var_A8]
D8EDA:  STR.W           R8, [R7,#var_B8]
D8EDE:  BLX             j_clt_compute_allocation
D8EE2:  ADD             SP, SP, #0x40 ; '@'
D8EE4:  LDR.W           R1, [R11,#0x5C]
D8EE8:  MOV             R9, R0
D8EEA:  CBZ             R1, loc_D8F00
D8EEC:  SUBS            R2, R1, #1
D8EEE:  MOV             R0, R9
D8EF0:  CMP             R2, R9
D8EF2:  ADD.W           R1, R1, #1
D8EF6:  IT GT
D8EF8:  MOVGT           R0, R2
D8EFA:  CMP             R1, R0
D8EFC:  IT LT
D8EFE:  MOVLT           R0, R1
D8F00:  LDR.W           R1, [R6,#0x84]
D8F04:  LDR.W           R8, [R7,#var_C0]
D8F08:  LSLS            R1, R1, #3
D8F0A:  STR.W           R1, [R7,#var_A8]
D8F0E:  STR.W           R0, [R8,#0x5C]
D8F12:  SUB             SP, SP, #0x10
D8F14:  LDR             R0, [R6,#0x64]
D8F16:  MOV             R2, R10
D8F18:  STR             R0, [SP,#0x198+var_198]
D8F1A:  LDR.W           R0, [R7,#var_B0]
D8F1E:  STR             R0, [SP,#0x198+var_194]
D8F20:  LDR.W           R11, [R7,#var_AC]
D8F24:  LDR.W           R0, [R7,#var_C4]
D8F28:  STR.W           R11, [SP,#0x198+var_190]
D8F2C:  STR             R0, [SP,#0x198+var_18C]
D8F2E:  LDR.W           R0, [R7,#var_CC]
D8F32:  LDR.W           R1, [R7,#var_D8]
D8F36:  LDR             R3, [R6,#0x78]
D8F38:  BLX             j_quant_fine_energy
D8F3C:  ADD             SP, SP, #0x10
D8F3E:  LDR             R0, [R6,#0x58]
D8F40:  ADDS            R0, #7
D8F42:  BIC.W           R0, R0, #7
D8F46:  SUB.W           R0, SP, R0
D8F4A:  MOV             SP, R0
D8F4C:  LDR.W           R1, [R8,#0x18]
D8F50:  LDRD.W          R2, R3, [R8,#0x44]
D8F54:  LDR.W           R5, [R8,#0xE8]
D8F58:  LDR.W           R10, [R7,#var_58]
D8F5C:  LDR.W           R12, [R8,#0x50]
D8F60:  LDR.W           LR, [R7,#var_94]
D8F64:  SUB             SP, SP, #0x50 ; 'P'
D8F66:  STRD.W          R1, R3, [SP,#0x1D8+var_198]
D8F6A:  ADD.W           R1, R8, #0x4C ; 'L'
D8F6E:  STR             R2, [SP,#0x1D8+var_190]
D8F70:  LDR.W           R2, [R7,#var_E8]
D8F74:  LDR             R3, [R6,#0x54]
D8F76:  SUBS            R2, R2, R4
D8F78:  STR             R5, [SP,#0x1D8+var_1B8]
D8F7A:  MOVS            R5, #0
D8F7C:  STRD.W          R3, R2, [SP,#0x1D8+var_1B4]
D8F80:  LDR.W           R2, [R7,#var_D4]
D8F84:  STR.W           R10, [SP,#0x1D8+var_1AC]
D8F88:  LDR.W           R10, [R7,#var_C8]
D8F8C:  STR.W           R11, [SP,#0x1D8+var_1A8]
D8F90:  STRD.W          R2, R9, [SP,#0x1D8+var_1A4]
D8F94:  STR             R1, [SP,#0x1D8+var_19C]
D8F96:  LDR.W           R1, [R7,#var_C4]
D8F9A:  LDR.W           R2, [R7,#var_E4]
D8F9E:  LDR.W           R3, [R6,#0x80]
D8FA2:  CMP             R1, #2
D8FA4:  MOV.W           R1, #0
D8FA8:  IT EQ
D8FAA:  ADDEQ.W         R1, R3, R2,LSL#1
D8FAE:  STRD.W          R3, R1, [SP,#0x1D8+var_1D8]
D8FB2:  ADD             R1, SP, #0x1D8+var_1C4
D8FB4:  STR             R0, [SP,#0x1D8+var_1D0]
D8FB6:  MOV             R3, R10
D8FB8:  LDR             R0, [R6,#0x50]
D8FBA:  STR             R0, [SP,#0x1D8+var_1CC]
D8FBC:  LDR.W           R0, [R7,#var_B8]
D8FC0:  STR             R0, [SP,#0x1D8+var_1C8]
D8FC2:  LDR             R0, [R6,#0x4C]
D8FC4:  STM.W           R1, {R0,R12,LR}
D8FC8:  MOVS            R0, #1
D8FCA:  LDR.W           R1, [R7,#var_CC]
D8FCE:  LDR.W           R2, [R7,#var_D8]
D8FD2:  BLX             j_quant_all_bands
D8FD6:  ADD             SP, SP, #0x50 ; 'P'
D8FD8:  LDR.W           R0, [R7,#var_E0]
D8FDC:  CMP             R0, #1
D8FDE:  BNE             loc_D8FF6
D8FE0:  LDR.W           R0, [R7,#var_C0]
D8FE4:  MOVS            R2, #1
D8FE6:  LDR             R0, [R0,#0x74]
D8FE8:  CMP             R0, #2
D8FEA:  MOV             R0, R11
D8FEC:  IT LT
D8FEE:  MOVLT           R5, #1
D8FF0:  MOV             R1, R5
D8FF2:  BLX             j_ec_enc_bits
D8FF6:  LDR.W           R0, [R11,#0x14]
D8FFA:  LDR.W           R1, [R11,#0x1C]
D8FFE:  SUB             SP, SP, #0x18
D9000:  LDR.W           R2, [R7,#var_A8]
D9004:  CLZ.W           R1, R1
D9008:  LDR             R5, [R6,#0x64]
D900A:  ADDS            R2, #0x20 ; ' '
D900C:  STR             R5, [SP,#0x1A0+var_1A0]
D900E:  SUBS            R0, R2, R0
D9010:  MOV             R2, R10
D9012:  SUBS            R0, R0, R1
D9014:  LDR.W           R1, [R7,#var_B0]
D9018:  STR             R1, [SP,#0x1A0+var_19C]
D901A:  LDR.W           R1, [R7,#var_D0]
D901E:  STRD.W          R1, R0, [SP,#0x1A0+var_198]
D9022:  STR.W           R11, [SP,#0x1A0+var_190]
D9026:  LDR.W           R0, [R7,#var_C4]
D902A:  LDR.W           R11, [R7,#var_D8]
D902E:  STR             R0, [SP,#0x1A0+var_18C]
D9030:  LDR.W           R0, [R7,#var_CC]
D9034:  LDR             R3, [R6,#0x78]
D9036:  MOV             R1, R11
D9038:  BLX             j_quant_energy_finalise
D903C:  ADD             SP, SP, #0x18
D903E:  LDR             R0, [R6,#0x38]; int
D9040:  LDR.W           R1, [R7,#n]; n
D9044:  BLX             sub_10967C
D9048:  CMP             R10, R11
D904A:  BLE             loc_D90BC
D904C:  LDR.W           R2, [R7,#var_DC]
D9050:  MOVW            R9, #0xC000
D9054:  LDR.W           R1, [R7,#var_EC]
D9058:  ADD.W           R8, R5, R11,LSL#1
D905C:  SUB.W           R12, R10, R11
D9060:  MOVS            R5, #0
D9062:  ADD.W           R0, R2, R2,LSL#1
D9066:  MOV.W           LR, R2,LSL#1
D906A:  MOVT            R9, #0xFFFF
D906E:  LSLS            R0, R0, #1
D9070:  ADD.W           R0, R0, R1,LSL#2
D9074:  LDR.W           R1, [R7,#var_BC]
D9078:  ADD.W           R0, R0, #0x1000
D907C:  MULS            R0, R1
D907E:  LDR.W           R1, [R7,#var_C0]
D9082:  ADD.W           R0, R0, R11,LSL#1
D9086:  ADD             R0, R1
D9088:  ADD.W           R1, R0, #0xF4
D908C:  MOV             R0, R8
D908E:  MOV             R2, R1
D9090:  MOV             R3, R12
D9092:  LDRSH.W         R4, [R0],#2
D9096:  CMP.W           R4, #0x4000
D909A:  IT GE
D909C:  MOVGE.W         R4, #0x4000
D90A0:  CMP             R4, R9
D90A2:  IT LE
D90A4:  MOVLE           R4, R9
D90A6:  SUBS            R3, #1
D90A8:  STRH.W          R4, [R2],#2
D90AC:  BNE             loc_D9092
D90AE:  LDR.W           R0, [R7,#var_C4]
D90B2:  ADDS            R5, #1
D90B4:  ADD             R8, LR
D90B6:  ADD             R1, LR
D90B8:  CMP             R5, R0
D90BA:  BLT             loc_D908C
D90BC:  LDR             R2, [R6,#0x58]
D90BE:  MOVS            R0, #0
D90C0:  CMP             R2, #0
D90C2:  IT GT
D90C4:  MOVGT           R0, #1
D90C6:  LDR             R1, [R6,#0x60]
D90C8:  LDR.W           R4, [R7,#var_C0]
D90CC:  LDR.W           R9, [R6,#0x48]
D90D0:  ANDS            R0, R1
D90D2:  CMP             R0, #1
D90D4:  BNE             loc_D90E8
D90D6:  ADD.W           R0, R4, R9,LSL#2
D90DA:  MOV.W           R1, #0x9000
D90DE:  ADDS            R0, #0xF4
D90E0:  STRH.W          R1, [R0],#2
D90E4:  SUBS            R2, #1
D90E6:  BNE             loc_D90E0
D90E8:  LDR.W           R0, [R7,#var_8C]
D90EC:  STR             R0, [R4,#0x68]
D90EE:  LDRH.W          R0, [R7,#var_8E]
D90F2:  LDR             R1, [R6,#0x34]
D90F4:  STR             R1, [R4,#0x70]
D90F6:  STRH.W          R0, [R4,#0x6C]
D90FA:  LDR             R0, [R6,#0x30]
D90FC:  LDR             R5, [R6,#0x7C]
D90FE:  CMP             R0, #1
D9100:  BNE             loc_D9112
D9102:  LDR.W           R2, [R7,#var_DC]
D9106:  LDR             R1, [R6,#0x78]; src
D9108:  ADD.W           R0, R1, R2,LSL#1; dest
D910C:  LSLS            R2, R2, #1; n
D910E:  BLX             j_memcpy
D9112:  LDR.W           R0, [R7,#var_F8]
D9116:  CMP             R0, #0
D9118:  BEQ             loc_D91FC
D911A:  CMP             R5, #1
D911C:  BLT             loc_D9156
D911E:  LDR.W           R0, [R7,#var_EC]
D9122:  LDR.W           R1, [R7,#var_DC]
D9126:  LSLS            R0, R0, #2
D9128:  ADD.W           R0, R0, R1,LSL#1
D912C:  LDR.W           R1, [R7,#var_BC]
D9130:  ADD.W           R0, R0, #0x1000
D9134:  MLA.W           R1, R1, R0, R4
D9138:  ADD.W           R0, R4, R9,LSL#2
D913C:  ADDS            R0, #0xF4
D913E:  ADDS            R1, #0xF4
D9140:  LDRSH.W         R2, [R0],#2
D9144:  LDRSH.W         R3, [R1]
D9148:  CMP             R3, R2
D914A:  IT LT
D914C:  MOVLT           R2, R3
D914E:  SUBS            R5, #1
D9150:  STRH.W          R2, [R1],#2
D9154:  BNE             loc_D9140
D9156:  CMP.W           R11, #1
D915A:  BLT             loc_D921C
D915C:  LDR.W           R0, [R7,#var_EC]
D9160:  MOV.W           LR, #0
D9164:  LDR.W           R5, [R7,#var_DC]
D9168:  LDR.W           R2, [R7,#var_BC]
D916C:  LSLS            R0, R0, #2
D916E:  SUB.W           R8, R5, R10
D9172:  ADD.W           R1, R0, R5,LSL#1
D9176:  ADD.W           R0, R0, R5,LSL#2
D917A:  ADD.W           R0, R0, #0x1000
D917E:  ADD.W           R1, R1, #0x1000
D9182:  MOV.W           R12, R5,LSL#1
D9186:  MOV.W           R5, #0x9000
D918A:  MLA.W           R3, R2, R1, R4
D918E:  ADD.W           R1, R4, R9,LSL#2
D9192:  ADDS            R1, #0xF4
D9194:  MLA.W           R0, R2, R0, R4
D9198:  MOV.W           R9, #0
D919C:  ADDS            R3, #0xF4
D919E:  ADD.W           R2, R0, #0xF4
D91A2:  MOVS            R0, #0
D91A4:  STRH.W          R9, [R1,R0,LSL#1]
D91A8:  STRH.W          R5, [R2,R0,LSL#1]
D91AC:  STRH.W          R5, [R3,R0,LSL#1]
D91B0:  ADDS            R0, #1
D91B2:  CMP             R11, R0
D91B4:  BNE             loc_D91A4
D91B6:  LDR.W           R0, [R7,#var_DC]
D91BA:  CMP             R10, R0
D91BC:  BGE             loc_D91E0
D91BE:  LDR.W           R0, [R7,#var_FC]
D91C2:  MOVS            R4, #0
D91C4:  ADD.W           R10, R1, R0
D91C8:  ADD.W           R11, R2, R0
D91CC:  ADD             R0, R3
D91CE:  STRH.W          R9, [R10,R4,LSL#1]
D91D2:  STRH.W          R5, [R11,R4,LSL#1]
D91D6:  STRH.W          R5, [R0,R4,LSL#1]
D91DA:  ADDS            R4, #1
D91DC:  CMP             R8, R4
D91DE:  BNE             loc_D91CE
D91E0:  LDR.W           R0, [R7,#var_BC]
D91E4:  ADD.W           LR, LR, #1
D91E8:  LDR.W           R10, [R7,#var_C8]
D91EC:  ADD             R1, R12
D91EE:  LDR.W           R11, [R7,#var_D8]
D91F2:  ADD             R2, R12
D91F4:  ADD             R3, R12
D91F6:  CMP             LR, R0
D91F8:  BLT             loc_D91A2
D91FA:  B               loc_D92A2
D91FC:  LDR             R5, [R6,#0x10]
D91FE:  LDR.W           R8, [R7,#n]
D9202:  LDR             R0, [R6,#0x40]; dest
D9204:  MOV             R1, R5; src
D9206:  MOV             R2, R8; n
D9208:  BLX             j_memcpy
D920C:  LDR             R1, [R6,#0x78]; src
D920E:  MOV             R0, R5; dest
D9210:  MOV             R2, R8; n
D9212:  BLX             j_memcpy
D9216:  CMP.W           R11, #1
D921A:  BGE             loc_D915C
D921C:  LDR.W           R0, [R7,#var_DC]
D9220:  CMP             R10, R0
D9222:  BGE             loc_D92A2
D9224:  LDR.W           R0, [R7,#var_EC]
D9228:  MOV.W           R8, #0
D922C:  LDR.W           R4, [R7,#var_DC]
D9230:  MOV.W           LR, #0
D9234:  LDR.W           R3, [R7,#var_BC]
D9238:  LSLS            R0, R0, #2
D923A:  LDR.W           R5, [R7,#var_C0]
D923E:  ADD.W           R1, R0, R4,LSL#1
D9242:  ADD.W           R0, R0, R4,LSL#2
D9246:  ADD.W           R0, R0, #0x1000
D924A:  MOV.W           R12, R4,LSL#1
D924E:  MUL.W           R2, R3, R0
D9252:  ADD.W           R0, R1, #0x1000
D9256:  MOV.W           R1, R9,LSL#2
D925A:  MULS            R3, R0
D925C:  ADD.W           R1, R1, R10,LSL#1
D9260:  ADD             R1, R5
D9262:  SUB.W           R0, R4, R10
D9266:  ADDS            R1, #0xF4
D9268:  ADD.W           R2, R2, R10,LSL#1
D926C:  ADD             R2, R5
D926E:  ADD.W           R3, R3, R10,LSL#1
D9272:  ADDS            R2, #0xF4
D9274:  ADD             R3, R5
D9276:  MOV.W           R5, #0x9000
D927A:  ADDS            R3, #0xF4
D927C:  MOVS            R4, #0
D927E:  STRH.W          R8, [R1,R4,LSL#1]
D9282:  STRH.W          R5, [R2,R4,LSL#1]
D9286:  STRH.W          R5, [R3,R4,LSL#1]
D928A:  ADDS            R4, #1
D928C:  CMP             R0, R4
D928E:  BNE             loc_D927E
D9290:  LDR.W           R4, [R7,#var_BC]
D9294:  ADD.W           LR, LR, #1
D9298:  ADD             R1, R12
D929A:  ADD             R2, R12
D929C:  ADD             R3, R12
D929E:  CMP             LR, R4
D92A0:  BLT             loc_D927C
D92A2:  LDR             R0, [R6,#0x2C]
D92A4:  LDR.W           R1, [R7,#var_F8]
D92A8:  ORRS            R0, R1
D92AA:  BEQ             loc_D92B6
D92AC:  LDR.W           R1, [R7,#var_C0]
D92B0:  LDR             R0, [R1,#0x74]
D92B2:  ADDS            R0, #1
D92B4:  B               loc_D92BC
D92B6:  MOVS            R0, #0
D92B8:  LDR.W           R1, [R7,#var_C0]
D92BC:  LDR.W           R4, [R7,#var_AC]
D92C0:  STR             R0, [R1,#0x74]
D92C2:  LDR             R0, [R4,#0x1C]
D92C4:  STR             R0, [R1,#0x4C]
D92C6:  MOV             R0, R4
D92C8:  BLX             j_ec_enc_done
D92CC:  LDR             R0, [R4,#0x2C]
D92CE:  LDR.W           R3, [R6,#0x84]
D92D2:  CMP             R0, #0
D92D4:  IT NE
D92D6:  MOVNE           R3, #0xFFFFFFFD
D92DA:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xD92E6)
D92DE:  LDR.W           R1, [R7,#var_24]
D92E2:  ADD             R0, PC; __stack_chk_guard_ptr
D92E4:  LDR             R0, [R0]; __stack_chk_guard
D92E6:  LDR             R0, [R0]
D92E8:  SUBS            R0, R0, R1
D92EA:  ITTTT EQ
D92EC:  MOVEQ           R0, R3
D92EE:  SUBEQ.W         R4, R7, #-var_1C
D92F2:  MOVEQ           SP, R4
D92F4:  POPEQ.W         {R8-R11}
D92F8:  IT EQ
D92FA:  POPEQ           {R4-R7,PC}
D92FC:  BLX             __stack_chk_fail
D9300:  LDR.W           R2, [R7,#var_CC]
D9304:  CMP             R0, R9
D9306:  BGE             loc_D9318
D9308:  SUB.W           R0, R0, #0xFA00
D930C:  MOV.W           R1, #0x400
D9310:  ASRS            R0, R0, #0xA
D9312:  ADD.W           R0, R1, R0,LSL#4
D9316:  B               loc_D931C
D9318:  MOV.W           R0, #0x500
D931C:  STR.W           R0, [R7,#n]
D9320:  LDR.W           R0, [R7,#var_C4]
D9324:  STR.W           R3, [R7,#var_D0]
D9328:  CMP             R0, #2
D932A:  BNE.W           loc_D979E
D932E:  LDR.W           R9, [R2,#0x18]
D9332:  LDR.W           R11, [R7,#var_D4]
D9336:  LDRSH.W         R1, [R9]
D933A:  LDRSH.W         R12, [R9,#2]
D933E:  SUB.W           R0, R12, R1
D9342:  LSL.W           R0, R0, R11
D9346:  CMP             R0, #1
D9348:  BLT             loc_D93BA
D934A:  LDR.W           R2, [R7,#var_E4]
D934E:  LSL.W           R1, R1, R11
D9352:  ADDS            R3, R1, R2
D9354:  LDR.W           R2, [R6,#0x80]
D9358:  ADD.W           R5, R2, R1,LSL#1
D935C:  ADD.W           R1, R2, R3,LSL#1
D9360:  MOVS            R3, #0
D9362:  LDRSH.W         R4, [R5],#2
D9366:  SUBS            R0, #1
D9368:  LDRSH.W         R2, [R1],#2
D936C:  SMLABB.W        R3, R2, R4, R3
D9370:  BNE             loc_D9362
D9372:  B               loc_D93BC
D9374:  LDR.W           R1, [R7,#var_E0]
D9378:  LDR.W           R5, [R7,#var_A8]
D937C:  ADDW            R1, R1, #0x1CD
D9380:  CMP             R5, #1
D9382:  BLT             loc_D93A8
D9384:  MOV             R10, R1
D9386:  MOV             R12, R2
D9388:  MOVS            R3, #0
D938A:  LDRSH.W         R1, [R0,R3,LSL#1]
D938E:  ADD.W           R2, R1, #0xFF00
D9392:  CMP.W           R1, #0x100
D9396:  IT LT
D9398:  MOVLT           R2, #0
D939A:  STRH.W          R2, [R0,R3,LSL#1]
D939E:  ADDS            R3, #1
D93A0:  CMP             R3, R5
D93A2:  BLT             loc_D938A
D93A4:  MOV             R2, R12
D93A6:  MOV             R1, R10
D93A8:  ADD.W           R0, R1, #0xCD
D93AC:  STR             R0, [R6,#0x18]
D93AE:  LDR.W           R0, [R7,#var_B0]
D93B2:  LSLS            R0, R0, #6
D93B4:  STR             R0, [R6,#0xC]
D93B6:  B.W             loc_D7A12
D93BA:  MOVS            R3, #0
D93BC:  LDRSH.W         R8, [R9,#4]
D93C0:  MOV.W           LR, R3,ASR#18
D93C4:  SUB.W           R1, R8, R12
D93C8:  LSL.W           R5, R1, R11
D93CC:  CMP             R5, #1
D93CE:  BLT             loc_D93FA
D93D0:  LDR.W           R0, [R7,#var_E4]
D93D4:  LSL.W           R1, R12, R11
D93D8:  ADDS            R4, R1, R0
D93DA:  LDR.W           R0, [R6,#0x80]
D93DE:  ADD.W           R2, R0, R1,LSL#1
D93E2:  ADD.W           R1, R0, R4,LSL#1
D93E6:  MOVS            R4, #0
D93E8:  LDRSH.W         R3, [R2],#2
D93EC:  SUBS            R5, #1
D93EE:  LDRSH.W         R0, [R1],#2
D93F2:  SMLABB.W        R4, R0, R3, R4
D93F6:  BNE             loc_D93E8
D93F8:  B               loc_D93FC
D93FA:  MOVS            R4, #0
D93FC:  LDRSH.W         R10, [R9,#6]
D9400:  ADD.W           R12, LR, R4,ASR#18
D9404:  SUB.W           R0, R10, R8
D9408:  LSL.W           R5, R0, R11
D940C:  CMP             R5, #1
D940E:  BLT             loc_D943A
D9410:  LDR.W           R1, [R7,#var_E4]
D9414:  LSL.W           R0, R8, R11
D9418:  LDR.W           R2, [R6,#0x80]
D941C:  MOVS            R4, #0
D941E:  ADD             R1, R0
D9420:  ADD.W           R0, R2, R0,LSL#1
D9424:  ADD.W           R1, R2, R1,LSL#1
D9428:  LDRSH.W         R3, [R0],#2
D942C:  SUBS            R5, #1
D942E:  LDRSH.W         R2, [R1],#2
D9432:  SMLABB.W        R4, R2, R3, R4
D9436:  BNE             loc_D9428
D9438:  B               loc_D943C
D943A:  MOVS            R4, #0
D943C:  LDRSH.W         LR, [R9,#8]
D9440:  ADD.W           R12, R12, R4,ASR#18
D9444:  SUB.W           R1, LR, R10
D9448:  LSL.W           R5, R1, R11
D944C:  CMP             R5, #1
D944E:  BLT             loc_D947A
D9450:  LDR.W           R0, [R7,#var_E4]
D9454:  LSL.W           R1, R10, R11
D9458:  MOVS            R4, #0
D945A:  ADDS            R2, R1, R0
D945C:  LDR.W           R0, [R6,#0x80]
D9460:  ADD.W           R1, R0, R1,LSL#1
D9464:  ADD.W           R2, R0, R2,LSL#1
D9468:  LDRSH.W         R3, [R1],#2
D946C:  SUBS            R5, #1
D946E:  LDRSH.W         R0, [R2],#2
D9472:  SMLABB.W        R4, R0, R3, R4
D9476:  BNE             loc_D9468
D9478:  B               loc_D947C
D947A:  MOVS            R4, #0
D947C:  LDRSH.W         R8, [R9,#0xA]
D9480:  ADD.W           R12, R12, R4,ASR#18
D9484:  SUB.W           R0, R8, LR
D9488:  LSL.W           R5, R0, R11
D948C:  CMP             R5, #1
D948E:  BLT             loc_D94BA
D9490:  LDR.W           R1, [R7,#var_E4]
D9494:  LSL.W           R0, LR, R11
D9498:  LDR.W           R2, [R6,#0x80]
D949C:  MOVS            R4, #0
D949E:  ADD             R1, R0
D94A0:  ADD.W           R0, R2, R0,LSL#1
D94A4:  ADD.W           R1, R2, R1,LSL#1
D94A8:  LDRSH.W         R3, [R0],#2
D94AC:  SUBS            R5, #1
D94AE:  LDRSH.W         R2, [R1],#2
D94B2:  SMLABB.W        R4, R2, R3, R4
D94B6:  BNE             loc_D94A8
D94B8:  B               loc_D94BC
D94BA:  MOVS            R4, #0
D94BC:  LDRSH.W         LR, [R9,#0xC]
D94C0:  ADD.W           R12, R12, R4,ASR#18
D94C4:  SUB.W           R1, LR, R8
D94C8:  LSL.W           R5, R1, R11
D94CC:  CMP             R5, #1
D94CE:  BLT             loc_D94FC
D94D0:  LDR.W           R0, [R7,#var_E4]
D94D4:  LSL.W           R1, R8, R11
D94D8:  ADDS            R2, R1, R0
D94DA:  LDR.W           R0, [R6,#0x80]
D94DE:  ADD.W           R4, R0, R2,LSL#1
D94E2:  ADD.W           R1, R0, R1,LSL#1
D94E6:  MOVS            R2, #0
D94E8:  LDRSH.W         R3, [R1],#2
D94EC:  SUBS            R5, #1
D94EE:  LDRSH.W         R0, [R4],#2
D94F2:  SMLABB.W        R2, R0, R3, R2
D94F6:  BNE             loc_D94E8
D94F8:  ASRS            R1, R2, #0x12
D94FA:  B               loc_D94FE
D94FC:  MOVS            R1, #0
D94FE:  LDRSH.W         R8, [R9,#0xE]
D9502:  ADD             R12, R1
D9504:  SUB.W           R0, R8, LR
D9508:  LSL.W           R5, R0, R11
D950C:  CMP             R5, #1
D950E:  BLT             loc_D953C
D9510:  LDR.W           R1, [R7,#var_E4]
D9514:  LSL.W           R0, LR, R11
D9518:  LDR.W           R2, [R6,#0x80]
D951C:  ADD             R1, R0
D951E:  ADD.W           R0, R2, R0,LSL#1
D9522:  ADD.W           R4, R2, R1,LSL#1
D9526:  MOVS            R1, #0
D9528:  LDRSH.W         R3, [R0],#2
D952C:  SUBS            R5, #1
D952E:  LDRSH.W         R2, [R4],#2
D9532:  SMLABB.W        R1, R2, R3, R1
D9536:  BNE             loc_D9528
D9538:  ASRS            R1, R1, #0x12
D953A:  B               loc_D953E
D953C:  MOVS            R1, #0
D953E:  LDRSH.W         LR, [R9,#0x10]
D9542:  ADD             R12, R1
D9544:  SUB.W           R1, LR, R8
D9548:  LSL.W           R5, R1, R11
D954C:  CMP             R5, #1
D954E:  BLT             loc_D957C
D9550:  LDR.W           R0, [R7,#var_E4]
D9554:  LSL.W           R1, R8, R11
D9558:  ADDS            R2, R1, R0
D955A:  LDR.W           R0, [R6,#0x80]
D955E:  ADD.W           R4, R0, R2,LSL#1
D9562:  ADD.W           R1, R0, R1,LSL#1
D9566:  MOVS            R2, #0
D9568:  LDRSH.W         R3, [R1],#2
D956C:  SUBS            R5, #1
D956E:  LDRSH.W         R0, [R4],#2
D9572:  SMLABB.W        R2, R0, R3, R2
D9576:  BNE             loc_D9568
D9578:  ASRS            R1, R2, #0x12
D957A:  B               loc_D957E
D957C:  MOVS            R1, #0
D957E:  ADD.W           R0, R12, R1
D9582:  LSLS            R1, R0, #0x10
D9584:  SBFX.W          R0, R0, #3, #0xD
D9588:  ADD.W           R0, R0, R1,ASR#31
D958C:  EOR.W           R11, R0, R1,ASR#31
D9590:  CMP.W           R11, #0x400
D9594:  MOV             R3, R11
D9596:  IT GE
D9598:  MOVGE.W         R3, #0x400
D959C:  LDR.W           R0, [R7,#var_B0]
D95A0:  CMP             R0, #9
D95A2:  BLT             loc_D9608
D95A4:  UXTH.W          R0, LR
D95A8:  MOV.W           R10, #8
D95AC:  ADD.W           R10, R10, #1
D95B0:  LDR.W           R4, [R7,#var_D4]
D95B4:  SXTH            R1, R0
D95B6:  LDRSH.W         R5, [R9,R10,LSL#1]
D95BA:  SUBS            R0, R5, R1
D95BC:  LSL.W           R2, R0, R4
D95C0:  UXTH            R0, R5
D95C2:  LDR.W           R5, [R7,#var_E4]
D95C6:  CMP             R2, #1
D95C8:  BLT             loc_D95EE
D95CA:  LSLS            R1, R4
D95CC:  ADD             R5, R1
D95CE:  LDR.W           R4, [R6,#0x80]
D95D2:  ADD.W           R8, R4, R5,LSL#1
D95D6:  ADD.W           R1, R4, R1,LSL#1
D95DA:  MOVS            R5, #0
D95DC:  LDRSH.W         R12, [R1],#2
D95E0:  SUBS            R2, #1
D95E2:  LDRSH.W         LR, [R8],#2
D95E6:  SMLABB.W        R5, LR, R12, R5
D95EA:  BNE             loc_D95DC
D95EC:  B               loc_D95F0
D95EE:  MOVS            R5, #0
D95F0:  ASRS            R1, R5, #0x12
D95F2:  ADD.W           R1, R1, R5,ASR#31
D95F6:  EOR.W           R1, R1, R5,ASR#31
D95FA:  CMP             R1, R3
D95FC:  IT LE
D95FE:  MOVLE           R3, R1
D9600:  LDR.W           R1, [R7,#var_B0]
D9604:  CMP             R10, R1
D9606:  BNE             loc_D95AC
D9608:  MOVW            R0, #:lower16:(loc_100418+1)
D960C:  SXTH            R2, R3
D960E:  CMP             R2, #0
D9610:  MOVW            R2, #0x419
D9614:  IT LT
D9616:  NEGLT           R3, R3
D9618:  CMP.W           R11, #0x400
D961C:  MOVT            R0, #:upper16:(loc_100418+1)
D9620:  MOVW            R4, #0x8001
D9624:  IT LT
D9626:  MLSLT.W         R2, R11, R11, R0
D962A:  MOVW            R1, #0xF50E
D962E:  MOVW            R12, #0
D9632:  MOVW            R9, #0
D9636:  MOVW            R8, #0
D963A:  MOVT            R4, #0xFFFF
D963E:  MOVT            R1, #0xFFFF
D9642:  MOVT            R12, #0xE577
D9646:  MOVT            R9, #0x3D82
D964A:  MOVT            R8, #0x9F1
D964E:  SXTH.W          R10, R3
D9652:  MOV             R11, R0
D9654:  CMP             R2, #0
D9656:  MOV             LR, R4
D9658:  BEQ             loc_D96BE
D965A:  CLZ.W           R5, R2
D965E:  MOV             LR, R1
D9660:  RSB.W           R1, R5, #0x10
D9664:  RSB.W           R5, R5, #0x1F
D9668:  RSB.W           R0, R5, #0xF
D966C:  CMP             R5, #0xF
D966E:  LSL.W           R0, R2, R0
D9672:  IT GT
D9674:  ASRGT.W         R0, R2, R1
D9678:  MOV.W           R1, #0x40000000
D967C:  ADD.W           R0, R1, R0,LSL#16
D9680:  MOVS            R2, #0xFFFF0000
D9686:  SMLABT.W        R1, LR, R0, R8
D968A:  SMULTT.W        R1, R1, R0
D968E:  AND.W           R1, R2, R1,LSL#1
D9692:  ADD             R1, R12
D9694:  ADD.W           R1, R1, #0x6280000
D9698:  SMULTT.W        R1, R1, R0
D969C:  AND.W           R1, R2, R1,LSL#1
D96A0:  ADD             R1, R9
D96A2:  SMULTT.W        R0, R1, R0
D96A6:  LSLS            R1, R5, #0x1A
D96A8:  AND.W           R0, R2, R0,LSL#1
D96AC:  ADD             R0, R12
D96AE:  ASRS            R0, R0, #0x14
D96B0:  ADD.W           R0, R1, R0,LSL#16
D96B4:  MOV             R1, LR
D96B6:  ADD.W           R0, R0, #0xCC000000
D96BA:  MOV.W           LR, R0,ASR#16
D96BE:  MLS.W           R2, R10, R10, R11
D96C2:  CMP.W           R3, #0x400
D96C6:  IT GT
D96C8:  MOVWGT          R2, #0x419
D96CC:  MOVW            R11, #0x8000
D96D0:  MOV             R12, R1
D96D2:  MOV.W           R5, LR,ASR#1
D96D6:  MOVT            R11, #0xFA00
D96DA:  CBZ             R2, loc_D9742
D96DC:  CLZ.W           R0, R2
D96E0:  MOVS            R4, #0
D96E2:  RSB.W           R1, R0, #0x10
D96E6:  RSB.W           R0, R0, #0x1F
D96EA:  RSB.W           R3, R0, #0xF
D96EE:  CMP             R0, #0xF
D96F0:  MOVT            R4, #0xE577
D96F4:  MOV.W           R0, R0,LSL#26
D96F8:  LSL.W           R3, R2, R3
D96FC:  IT GT
D96FE:  ASRGT.W         R3, R2, R1
D9702:  MOV.W           R1, #0x40000000
D9706:  ADD.W           R1, R1, R3,LSL#16
D970A:  MOVS            R3, #0xFFFF0000
D9710:  SMLABT.W        R2, R12, R1, R8
D9714:  SMULTT.W        R2, R2, R1
D9718:  AND.W           R2, R3, R2,LSL#1
D971C:  ADD             R2, R4
D971E:  ADD.W           R2, R2, #0x6280000
D9722:  SMULTT.W        R2, R2, R1
D9726:  AND.W           R2, R3, R2,LSL#1
D972A:  ADD             R2, R9
D972C:  SMULTT.W        R1, R2, R1
D9730:  AND.W           R1, R3, R1,LSL#1
D9734:  ADD             R1, R4
D9736:  ASRS            R1, R1, #0x14
D9738:  ADD.W           R0, R0, R1,LSL#16
D973C:  ADD.W           R0, R0, #0xCC000000
D9740:  ASRS            R4, R0, #0x10
D9742:  CMP             R5, R4
D9744:  MOV.W           R2, #0
D9748:  IT GT
D974A:  MOVGT           R4, R5
D974C:  LDR.W           R0, [R7,#var_C0]
D9750:  ADD.W           R1, R11, R4,LSL#14
D9754:  MOV             R3, R0
D9756:  SUB.W           R1, R2, R1,ASR#17
D975A:  LDRSH.W         R0, [R3,#0xE4]
D975E:  MOV             R2, #0xFFFFF800
D9766:  ADDS            R0, #0x40 ; '@'
D9768:  ADD.W           R2, R2, #0x400
D976C:  CMP             R0, R1
D976E:  IT LT
D9770:  MOVLT           R1, R0
D9772:  ADD.W           R0, R11, LR,LSL#14
D9776:  STRH.W          R1, [R3,#0xE4]
D977A:  ASRS            R0, R0, #0x10
D977C:  ADD.W           R0, R0, R0,LSL#1
D9780:  SBFX.W          R1, R0, #2, #0x11
D9784:  LSLS            R0, R0, #0xD
D9786:  CMN.W           R1, #0x400
D978A:  IT GT
D978C:  ASRGT           R2, R0, #0xF
D978E:  LDR.W           R0, [R7,#n]
D9792:  LDR.W           R10, [R7,#var_AC]
D9796:  UXTAH.W         R0, R2, R0
D979A:  STR.W           R0, [R7,#n]
D979E:  LDR.W           R0, [R7,#var_C8]
D97A2:  LDR.W           R9, [R6,#0x74]
D97A6:  SUB.W           R12, R0, #1
D97AA:  CMP             R0, #2
D97AC:  MOV.W           R0, #0
D97B0:  BLT             loc_D97EA
D97B2:  LDR.W           R0, [R7,#var_CC]
D97B6:  MOVS            R5, #0
D97B8:  LDR.W           R1, [R7,#var_C8]
D97BC:  LDR             R0, [R0,#8]
D97BE:  RSB.W           LR, R1, #2
D97C2:  MOV.W           R8, R0,LSL#1
D97C6:  MOVS            R0, #0
D97C8:  MOV             R1, R12
D97CA:  MOV             R4, R9
D97CC:  MOV             R2, LR
D97CE:  LDRSH.W         R3, [R4],#2
D97D2:  SUBS            R1, #1
D97D4:  MLA.W           R0, R2, R3, R0
D97D8:  ADD.W           R2, R2, #2
D97DC:  BNE             loc_D97CE
D97DE:  LDR.W           R1, [R7,#var_C4]
D97E2:  ADDS            R5, #1
D97E4:  ADD             R9, R8
D97E6:  CMP             R5, R1
D97E8:  BLT             loc_D97C8
D97EA:  LDR.W           R1, [R7,#var_C4]
D97EE:  MUL.W           R1, R12, R1
D97F2:  BLX             sub_108848
D97F6:  ADD.W           R0, R0, #0x400
D97FA:  MOV             R1, #0xD5555555
D9802:  MOVW            R2, #0xC05
D9806:  ASRS            R0, R0, #2
D9808:  CMP             R0, R2
D980A:  SMMUL.W         R1, R0, R1
D980E:  MOV             R2, #0xFFFFF3FB
D9816:  MOV             R9, #0x13880
D981E:  ADD.W           R1, R1, R1,LSR#31
D9822:  IT GT
D9824:  MOVGT.W         R1, #0xFE00
D9828:  CMP             R0, R2
D982A:  IT LT
D982C:  MOVLT.W         R1, #0x200
D9830:  LDR.W           R2, [R7,#var_D0]
D9834:  MOVW            R0, #0xFFFE
D9838:  AND.W           R0, R0, R2,LSR#5
D983C:  LDR             R2, [R6,#0xC]
D983E:  NEGS            R0, R0
D9840:  SXTH            R2, R2
D9842:  SUB.W           R0, R0, R2,LSR#2
D9846:  LDR.W           R2, [R7,#n]
D984A:  ADD             R0, R2
D984C:  MOVS            R2, #0xA
D984E:  ADD             R0, R1
D9850:  SXTH            R0, R0
D9852:  ADDS            R0, #0x80
D9854:  ASRS            R1, R0, #8
D9856:  CMP             R1, #0xA
D9858:  IT LT
D985A:  ASRLT           R2, R0, #8
D985C:  CMP             R1, #0
D985E:  MOV.W           R1, #0
D9862:  IT GT
D9864:  MOVGT           R1, R2
D9866:  LDR.W           R11, [R7,#var_C0]
D986A:  LDR.W           R5, [R6,#0x88]
D986E:  LDR.W           R4, [R7,#var_D8]
D9872:  B.W             loc_D89E6
