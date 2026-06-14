; =========================================================
; Game Engine Function: pitch_search
; Address            : 0x1A013C - 0x1A0498
; =========================================================

1A013C:  PUSH            {R4-R7,LR}
1A013E:  ADD             R7, SP, #0xC
1A0140:  PUSH.W          {R8-R11}
1A0144:  SUB             SP, SP, #0x34
1A0146:  STR.W           R0, [R7,#var_38]
1A014A:  MOV.W           R8, R2,ASR#2
1A014E:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A0156)
1A0150:  MOVS            R6, #7
1A0152:  ADD             R0, PC; __stack_chk_guard_ptr
1A0154:  LDR             R0, [R0]; __stack_chk_guard
1A0156:  LDR             R0, [R0]
1A0158:  STR.W           R0, [R7,#var_24]
1A015C:  MOVS            R0, #0
1A015E:  STRD.W          R0, R0, [R7,#var_30]
1A0162:  ADD.W           R0, R6, R8,LSL#1
1A0166:  STR.W           R2, [R7,#var_40]
1A016A:  ADD             R2, R3
1A016C:  BIC.W           R0, R0, #7
1A0170:  MOV.W           R12, R2,ASR#2
1A0174:  SUB.W           R0, SP, R0
1A0178:  ADD.W           R2, R6, R12,LSL#1
1A017C:  BIC.W           R2, R2, #7
1A0180:  MOV             SP, R0
1A0182:  SUB.W           R9, SP, R2
1A0186:  MOV.W           R11, R3,ASR#1
1A018A:  ADD.W           R2, R6, R11,LSL#2
1A018E:  STR.W           R3, [R7,#var_4C]
1A0192:  BIC.W           R2, R2, #7
1A0196:  MOV             SP, R9
1A0198:  SUB.W           R2, SP, R2
1A019C:  STR.W           R2, [R7,#var_34]
1A01A0:  MOV             SP, R2
1A01A2:  CMP.W           R8, #1
1A01A6:  BLT             loc_1A01BC
1A01A8:  LDR.W           R4, [R7,#var_38]
1A01AC:  MOV             R2, R8
1A01AE:  MOV             R6, R0
1A01B0:  LDRH.W          R5, [R4],#4
1A01B4:  SUBS            R2, #1
1A01B6:  STRH.W          R5, [R6],#2
1A01BA:  BNE             loc_1A01B0
1A01BC:  CMP.W           R12, #1
1A01C0:  BLT             loc_1A01D4
1A01C2:  MOV             R4, R1
1A01C4:  MOV             R2, R12
1A01C6:  MOV             R6, R9
1A01C8:  LDRH.W          R5, [R4],#4
1A01CC:  SUBS            R2, #1
1A01CE:  STRH.W          R5, [R6],#2
1A01D2:  BNE             loc_1A01C8
1A01D4:  CMP.W           R8, #1
1A01D8:  MOV.W           LR, #0
1A01DC:  STR.W           R1, [R7,#var_44]
1A01E0:  STR.W           R8, [R7,#var_48]
1A01E4:  BLT             loc_1A020A
1A01E6:  MOV             R6, R0
1A01E8:  MOV             R4, R8
1A01EA:  MOVS            R1, #0
1A01EC:  LDRSH.W         R5, [R6],#2
1A01F0:  SXTH.W          R2, LR
1A01F4:  CMP             R2, R5
1A01F6:  SXTH            R2, R1
1A01F8:  IT GE
1A01FA:  MOVGE           LR, R5
1A01FC:  CMP             R2, R5
1A01FE:  IT LE
1A0200:  MOVLE           R1, R5
1A0202:  SUBS            R4, #1
1A0204:  BNE             loc_1A01EC
1A0206:  SXTH            R1, R1
1A0208:  B               loc_1A020C
1A020A:  MOVS            R1, #0
1A020C:  SXTH.W          R2, LR
1A0210:  RSB.W           LR, R2, #0
1A0214:  CMP             R1, LR
1A0216:  MOV             R3, R9
1A0218:  IT GT
1A021A:  MOVGT           LR, R1
1A021C:  CMP.W           R12, #1
1A0220:  MOV.W           R8, #0
1A0224:  BLT             loc_1A024A
1A0226:  MOV             R5, R9
1A0228:  MOV             R1, R12
1A022A:  MOVS            R4, #0
1A022C:  LDRSH.W         R2, [R5],#2
1A0230:  SXTH.W          R6, R8
1A0234:  CMP             R6, R2
1A0236:  SXTH            R6, R4
1A0238:  IT GE
1A023A:  MOVGE           R8, R2
1A023C:  CMP             R6, R2
1A023E:  IT LE
1A0240:  MOVLE           R4, R2
1A0242:  SUBS            R1, #1
1A0244:  BNE             loc_1A022C
1A0246:  SXTH            R1, R4
1A0248:  B               loc_1A024C
1A024A:  MOVS            R1, #0
1A024C:  SXTH.W          R2, R8
1A0250:  MOV.W           R9, #0
1A0254:  NEGS            R2, R2
1A0256:  CMP             R1, R2
1A0258:  IT GT
1A025A:  MOVGT           R2, R1
1A025C:  CMP             LR, R2
1A025E:  IT GT
1A0260:  MOVGT           R2, LR
1A0262:  CMP             R2, #1
1A0264:  IT LE
1A0266:  MOVLE           R2, #1
1A0268:  LDR.W           R10, [R7,#var_48]
1A026C:  CLZ.W           R1, R2
1A0270:  RSB.W           R2, R1, #0x1F
1A0274:  CMP             R2, #0xC
1A0276:  BLT             loc_1A02B4
1A0278:  RSB.W           R2, R1, #0x14
1A027C:  CMP.W           R10, #1
1A0280:  BLT             loc_1A0296
1A0282:  MOV             R1, R10
1A0284:  MOV             R6, R0
1A0286:  LDRSH.W         R5, [R6]
1A028A:  SUBS            R1, #1
1A028C:  ASR.W           R5, R5, R2
1A0290:  STRH.W          R5, [R6],#2
1A0294:  BNE             loc_1A0286
1A0296:  CMP.W           R12, #1
1A029A:  MOV             R1, R3
1A029C:  BLT             loc_1A02B0
1A029E:  LDRSH.W         R6, [R1]
1A02A2:  SUBS.W          R12, R12, #1
1A02A6:  ASR.W           R6, R6, R2
1A02AA:  STRH.W          R6, [R1],#2
1A02AE:  BNE             loc_1A029E
1A02B0:  MOV.W           R9, R2,LSL#1
1A02B4:  SUB             SP, SP, #8
1A02B6:  LDR.W           R1, [R7,#var_4C]
1A02BA:  MOV             R5, R3
1A02BC:  LDR.W           R6, [R7,#var_34]
1A02C0:  MOV             R3, R10
1A02C2:  MOV.W           R8, R1,ASR#2
1A02C6:  MOV             R1, R5
1A02C8:  MOV             R2, R6
1A02CA:  STR.W           R8, [SP,#0x58+var_58]
1A02CE:  BLX             j_celt_pitch_xcorr_c
1A02D2:  ADD             SP, SP, #8
1A02D4:  SUB             SP, SP, #0x10
1A02D6:  MOVS            R1, #0
1A02D8:  SUB.W           R4, R7, #-var_30
1A02DC:  STR             R4, [SP,#0x60+var_60]
1A02DE:  MOV             R2, R10
1A02E0:  STRD.W          R1, R0, [SP,#0x60+var_5C]
1A02E4:  MOV             R0, R6
1A02E6:  MOV             R1, R5
1A02E8:  MOV             R3, R8
1A02EA:  BL              sub_1A04A0
1A02EE:  ADD             SP, SP, #0x10
1A02F0:  CMP.W           R11, #0
1A02F4:  BLE             loc_1A038C
1A02F6:  LDRD.W          R0, R3, [R7,#var_30]
1A02FA:  LDR.W           R1, [R7,#var_40]
1A02FE:  MOV.W           R10, R0,LSL#1
1A0302:  ASRS            R2, R1, #1
1A0304:  LSLS            R1, R3, #1
1A0306:  CMP             R2, #0
1A0308:  STR.W           R1, [R7,#var_40]
1A030C:  BLE             loc_1A039A
1A030E:  LDR.W           R0, [R7,#var_44]
1A0312:  MOVS            R3, #1
1A0314:  MOVS            R4, #0
1A0316:  STR.W           R11, [R7,#var_3C]
1A031A:  MOVS            R1, #0
1A031C:  STR.W           R1, [R6,R4,LSL#2]
1A0320:  SUBS.W          R1, R4, R10
1A0324:  IT MI
1A0326:  NEGMI           R1, R1
1A0328:  CMP             R1, #3
1A032A:  BLT             loc_1A033A
1A032C:  LDR.W           R1, [R7,#var_40]
1A0330:  SUBS            R1, R4, R1
1A0332:  IT MI
1A0334:  NEGMI           R1, R1
1A0336:  CMP             R1, #2
1A0338:  BGT             loc_1A037E
1A033A:  MOV             R8, R3
1A033C:  LDR.W           R3, [R7,#var_38]
1A0340:  MOVS            R5, #0
1A0342:  MOV             R6, R0
1A0344:  MOV             LR, R2
1A0346:  LDRSH.W         R12, [R3],#2
1A034A:  SUBS            R2, #1
1A034C:  LDRSH.W         R11, [R6],#2
1A0350:  SMULBB.W        R1, R11, R12
1A0354:  ASR.W           R1, R1, R9
1A0358:  ADD             R5, R1
1A035A:  BNE             loc_1A0346
1A035C:  CMP.W           R5, #0xFFFFFFFF
1A0360:  MOV             R1, R5
1A0362:  IT LE
1A0364:  MOVLE.W         R1, #0xFFFFFFFF
1A0368:  LDR.W           R6, [R7,#var_34]
1A036C:  MOV             R3, R8
1A036E:  CMP             R3, R5
1A0370:  MOV             R2, LR
1A0372:  STR.W           R1, [R6,R4,LSL#2]
1A0376:  IT LE
1A0378:  MOVLE           R3, R5
1A037A:  LDR.W           R11, [R7,#var_3C]
1A037E:  ADDS            R4, #1
1A0380:  ADDS            R0, #2
1A0382:  CMP             R4, R11
1A0384:  BNE             loc_1A031A
1A0386:  LDR.W           R1, [R7,#var_44]
1A038A:  B               loc_1A03F4
1A038C:  LDR.W           R0, [R7,#var_40]
1A0390:  MOVS            R3, #1
1A0392:  LDR.W           R1, [R7,#var_44]
1A0396:  ASRS            R2, R0, #1
1A0398:  B               loc_1A03F8
1A039A:  MOV             R1, R6
1A039C:  MOV.W           R12, #0
1A03A0:  MOV             R5, R1
1A03A2:  LDR.W           R1, [R7,#var_40]
1A03A6:  SUB.W           R6, R12, R3,LSL#1
1A03AA:  SUB.W           R4, R12, R0,LSL#1
1A03AE:  MOV             R3, R11
1A03B0:  CMP.W           R4, #0xFFFFFFFF
1A03B4:  MOV             R0, R10
1A03B6:  STR.W           R12, [R5]
1A03BA:  IT GT
1A03BC:  MOVGT           R0, R4
1A03BE:  CMP             R0, #3
1A03C0:  BLT             loc_1A03D6
1A03C2:  CMP.W           R6, #0xFFFFFFFF
1A03C6:  MOV             R0, R1
1A03C8:  IT GT
1A03CA:  MOVGT           R0, R6
1A03CC:  CMP             R0, #2
1A03CE:  IT LE
1A03D0:  STRLE.W         R12, [R5]
1A03D4:  B               loc_1A03DA
1A03D6:  STR.W           R12, [R5]
1A03DA:  SUBS            R1, #1
1A03DC:  ADDS            R6, #1
1A03DE:  SUB.W           R10, R10, #1
1A03E2:  ADDS            R4, #1
1A03E4:  ADDS            R5, #4
1A03E6:  SUBS            R3, #1
1A03E8:  BNE             loc_1A03B0
1A03EA:  MOVS            R3, #1
1A03EC:  LDR.W           R1, [R7,#var_44]
1A03F0:  LDR.W           R6, [R7,#var_34]
1A03F4:  SUB.W           R4, R7, #-var_30
1A03F8:  LDR.W           R8, [R7,#arg_0]
1A03FC:  SUB             SP, SP, #0x10
1A03FE:  ORR.W           R0, R9, #1
1A0402:  STRD.W          R4, R0, [SP,#0x60+var_60]
1A0406:  MOV             R0, R6
1A0408:  STR             R3, [SP,#0x60+var_58]
1A040A:  MOV             R3, R11
1A040C:  BL              sub_1A04A0
1A0410:  ADD             SP, SP, #0x10
1A0412:  LDR.W           R0, [R7,#var_30]
1A0416:  MOVS            R1, #0
1A0418:  CMP             R0, #1
1A041A:  BLT             loc_1A0470
1A041C:  SUB.W           R2, R11, #1
1A0420:  CMP             R0, R2
1A0422:  BGE             loc_1A0470
1A0424:  LDR.W           R2, [R6,R0,LSL#2]
1A0428:  ADD.W           R6, R6, R0,LSL#2
1A042C:  MOVW            R12, #0x599A
1A0430:  LDR.W           R1, [R6,#-4]
1A0434:  LDR             R6, [R6,#4]
1A0436:  SUBS            R5, R2, R1
1A0438:  UXTH            R4, R5
1A043A:  ASRS            R3, R5, #0x10
1A043C:  MOVW            R5, #0xB334
1A0440:  MUL.W           R4, R4, R12
1A0444:  MULS            R3, R5
1A0446:  ADD.W           R3, R3, R4,LSR#15
1A044A:  SUBS            R4, R6, R1
1A044C:  CMP             R4, R3
1A044E:  BLE             loc_1A0454
1A0450:  MOVS            R1, #1
1A0452:  B               loc_1A0470
1A0454:  SUBS            R2, R2, R6
1A0456:  UXTH            R3, R2
1A0458:  ASRS            R2, R2, #0x10
1A045A:  MUL.W           R3, R3, R12
1A045E:  MULS            R2, R5
1A0460:  ADD.W           R2, R2, R3,LSR#15
1A0464:  SUBS            R3, R1, R6
1A0466:  MOVS            R1, #0
1A0468:  CMP             R3, R2
1A046A:  IT GT
1A046C:  MOVGT.W         R1, #0xFFFFFFFF
1A0470:  RSB.W           R0, R1, R0,LSL#1
1A0474:  STR.W           R0, [R8]
1A0478:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A0482)
1A047A:  LDR.W           R1, [R7,#var_24]
1A047E:  ADD             R0, PC; __stack_chk_guard_ptr
1A0480:  LDR             R0, [R0]; __stack_chk_guard
1A0482:  LDR             R0, [R0]
1A0484:  SUBS            R0, R0, R1
1A0486:  ITTTT EQ
1A0488:  SUBEQ.W         R4, R7, #-var_1C
1A048C:  MOVEQ           SP, R4
1A048E:  POPEQ.W         {R8-R11}
1A0492:  POPEQ           {R4-R7,PC}
1A0494:  BLX             __stack_chk_fail
