; =========================================================
; Game Engine Function: silk_resampler_private_down_FIR
; Address            : 0xB5050 - 0xB5696
; =========================================================

B5050:  PUSH            {R4-R7,LR}
B5052:  ADD             R7, SP, #0xC
B5054:  PUSH.W          {R8-R11}
B5058:  SUB             SP, SP, #0x44
B505A:  MOV             R4, R0
B505C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xB5068)
B5060:  MOV             R10, R2
B5062:  MOV             R11, R1
B5064:  ADD             R0, PC; __stack_chk_guard_ptr
B5066:  MOVS            R1, #7
B5068:  MOV             R5, R3
B506A:  LDR             R0, [R0]; __stack_chk_guard
B506C:  LDR             R0, [R0]
B506E:  STR.W           R0, [R7,#var_24]
B5072:  LDR.W           R6, [R4,#0x10C]
B5076:  LDR.W           R2, [R4,#0x114]
B507A:  ADDS            R0, R2, R6
B507C:  ADD.W           R0, R1, R0,LSL#2
B5080:  BIC.W           R0, R0, #7
B5084:  SUB.W           R9, SP, R0
B5088:  MOV             SP, R9
B508A:  ADD.W           R1, R4, #0x18; src
B508E:  STR.W           R2, [R7,#var_28]
B5092:  LSLS            R2, R2, #2; n
B5094:  MOV             R0, R9; dest
B5096:  STR.W           R1, [R7,#dest]
B509A:  BLX             j_memcpy
B509E:  LDR.W           R0, [R4,#0x110]
B50A2:  STR.W           R0, [R7,#var_30]
B50A6:  LDR.W           R8, [R4,#0x128]
B50AA:  STR.W           R4, [R7,#var_58]
B50AE:  ADD.W           R0, R8, #4
B50B2:  STR.W           R0, [R7,#var_44]
B50B6:  MOV             R3, R8
B50B8:  STR.W           R9, [R7,#var_2C]
B50BC:  STR.W           R8, [R7,#var_48]
B50C0:  B               loc_B50EC
B50C2:  LDR.W           R4, [R7,#var_58]
B50C6:  ADD.W           R1, R9, R6,LSL#2; src
B50CA:  LDR.W           R0, [R4,#0x114]
B50CE:  STR.W           R0, [R7,#var_28]
B50D2:  LSLS            R2, R0, #2; n
B50D4:  MOV             R0, R9; dest
B50D6:  BLX             j_memcpy
B50DA:  LDR.W           R0, [R4,#0x10C]
B50DE:  LDR.W           R10, [R7,#var_54]
B50E2:  LDR.W           R3, [R4,#0x128]
B50E6:  ADD.W           R10, R10, R6,LSL#1
B50EA:  MOV             R6, R0
B50EC:  CMP             R5, R6
B50EE:  IT LT
B50F0:  MOVLT           R6, R5
B50F2:  SUB             SP, SP, #8
B50F4:  LDR.W           R0, [R7,#var_28]
B50F8:  MOV             R2, R10
B50FA:  STR             R6, [SP,#0x68+var_68]
B50FC:  ADD.W           R1, R9, R0,LSL#2
B5100:  MOV             R0, R4
B5102:  BLX             j_silk_resampler_private_AR2
B5106:  ADD             SP, SP, #8
B5108:  LDR.W           R1, [R4,#0x114]
B510C:  LSLS            R0, R6, #0x10
B510E:  STR.W           R0, [R7,#var_28]
B5112:  CMP             R1, #0x12
B5114:  STR.W           R5, [R7,#var_4C]
B5118:  STRD.W          R10, R6, [R7,#var_54]
B511C:  BEQ.W           loc_B5314
B5120:  CMP             R1, #0x18
B5122:  BEQ.W           loc_B54FA
B5126:  CMP             R1, #0x24 ; '$'
B5128:  BNE.W           loc_B5654
B512C:  CMP             R0, #1
B512E:  BLT.W           loc_B5654
B5132:  MOV.W           R12, #0
B5136:  MOV.W           R0, R12,ASR#16
B513A:  LDRSH.W         R6, [R8,#4]
B513E:  ADD.W           R2, R9, R0,LSL#2
B5142:  LDR.W           R3, [R9,R0,LSL#2]
B5146:  ADD.W           LR, R2, #4
B514A:  LDR.W           R0, [R2,#0x8C]
B514E:  LDRSH.W         R5, [R8,#6]
B5152:  ADD             R0, R3
B5154:  LDRSH.W         R4, [R8,#8]
B5158:  LDRSH.W         R10, [R8,#0xA]
B515C:  UXTH            R1, R0
B515E:  MULS            R1, R6
B5160:  ASRS            R1, R1, #0x10
B5162:  SMLATB.W        R0, R0, R6, R1
B5166:  LDM.W           LR, {R1,R6,LR}
B516A:  LDR.W           R3, [R2,#0x88]
B516E:  LDR.W           R9, [R2,#0x10]
B5172:  ADD             R1, R3
B5174:  LDR.W           R3, [R2,#0x80]
B5178:  SMLATB.W        R0, R1, R5, R0
B517C:  UXTH            R1, R1
B517E:  MULS            R1, R5
B5180:  ADD             R3, LR
B5182:  ADD.W           R0, R0, R1,ASR#16
B5186:  LDR.W           R1, [R2,#0x84]
B518A:  ADD             R1, R6
B518C:  LDRSH.W         R6, [R8,#0xC]
B5190:  SMLATB.W        R0, R1, R4, R0
B5194:  UXTH            R1, R1
B5196:  MULS            R1, R4
B5198:  ADD.W           R0, R0, R1,ASR#16
B519C:  LDR             R1, [R2,#0x7C]
B519E:  SMLATB.W        R0, R3, R10, R0
B51A2:  UXTH            R3, R3
B51A4:  MUL.W           R3, R3, R10
B51A8:  ADD             R1, R9
B51AA:  LDR.W           R9, [R7,#var_2C]
B51AE:  UXTH            R5, R1
B51B0:  MULS            R5, R6
B51B2:  ADD.W           R0, R0, R3,ASR#16
B51B6:  SMLATB.W        R0, R1, R6, R0
B51BA:  LDRD.W          R3, R1, [R2,#0x14]
B51BE:  LDR             R6, [R2,#0x74]
B51C0:  ADD             R1, R6
B51C2:  LDRSH.W         R6, [R8,#0xE]
B51C6:  ADD.W           R0, R0, R5,ASR#16
B51CA:  LDR             R5, [R2,#0x78]
B51CC:  UXTH            R4, R1
B51CE:  ADD             R3, R5
B51D0:  LDRSH.W         R5, [R8,#0x10]
B51D4:  SMLATB.W        R0, R3, R6, R0
B51D8:  UXTH            R3, R3
B51DA:  MULS            R3, R6
B51DC:  MULS            R4, R5
B51DE:  ADD.W           R0, R0, R3,ASR#16
B51E2:  SMLATB.W        R0, R1, R5, R0
B51E6:  LDRD.W          R3, R1, [R2,#0x1C]
B51EA:  LDR             R6, [R2,#0x6C]
B51EC:  LDR             R5, [R2,#0x70]
B51EE:  ADD             R1, R6
B51F0:  LDRSH.W         R6, [R8,#0x12]
B51F4:  ADD             R3, R5
B51F6:  ADD.W           R0, R0, R4,ASR#16
B51FA:  LDRSH.W         R5, [R8,#0x14]
B51FE:  UXTH            R4, R1
B5200:  SMLATB.W        R0, R3, R6, R0
B5204:  UXTH            R3, R3
B5206:  MULS            R3, R6
B5208:  MULS            R4, R5
B520A:  ADD.W           R0, R0, R3,ASR#16
B520E:  SMLATB.W        R0, R1, R5, R0
B5212:  LDRD.W          R3, R1, [R2,#0x24]
B5216:  LDR             R6, [R2,#0x64]
B5218:  LDR             R5, [R2,#0x68]
B521A:  ADD             R1, R6
B521C:  LDRSH.W         R6, [R8,#0x16]
B5220:  ADD             R3, R5
B5222:  ADD.W           R0, R0, R4,ASR#16
B5226:  LDRSH.W         R5, [R8,#0x18]
B522A:  UXTH            R4, R1
B522C:  SMLATB.W        R0, R3, R6, R0
B5230:  UXTH            R3, R3
B5232:  MULS            R3, R6
B5234:  MULS            R4, R5
B5236:  ADD.W           R0, R0, R3,ASR#16
B523A:  SMLATB.W        R0, R1, R5, R0
B523E:  LDRD.W          R3, R1, [R2,#0x2C]
B5242:  LDR             R6, [R2,#0x5C]
B5244:  LDR             R5, [R2,#0x60]
B5246:  ADD             R1, R6
B5248:  LDRSH.W         R6, [R8,#0x1A]
B524C:  ADD             R3, R5
B524E:  ADD.W           R0, R0, R4,ASR#16
B5252:  LDRSH.W         R5, [R8,#0x1C]
B5256:  UXTH            R4, R1
B5258:  SMLATB.W        R0, R3, R6, R0
B525C:  UXTH            R3, R3
B525E:  MULS            R3, R6
B5260:  MULS            R4, R5
B5262:  ADD.W           R0, R0, R3,ASR#16
B5266:  SMLATB.W        R0, R1, R5, R0
B526A:  LDRD.W          R3, R1, [R2,#0x34]
B526E:  LDR             R6, [R2,#0x54]
B5270:  LDR             R5, [R2,#0x58]
B5272:  ADD             R1, R6
B5274:  LDRSH.W         R6, [R8,#0x1E]
B5278:  ADD             R3, R5
B527A:  ADD.W           R0, R0, R4,ASR#16
B527E:  LDRSH.W         R5, [R8,#0x20]
B5282:  UXTH            R4, R1
B5284:  SMLATB.W        R0, R3, R6, R0
B5288:  UXTH            R3, R3
B528A:  MULS            R3, R6
B528C:  MULS            R4, R5
B528E:  ADD.W           R0, R0, R3,ASR#16
B5292:  SMLATB.W        R0, R1, R5, R0
B5296:  LDRD.W          R3, R1, [R2,#0x3C]
B529A:  LDR             R6, [R2,#0x4C]
B529C:  LDR             R5, [R2,#0x50]
B529E:  ADD             R1, R6
B52A0:  LDRSH.W         R6, [R8,#0x22]
B52A4:  ADD             R3, R5
B52A6:  ADD.W           R0, R0, R4,ASR#16
B52AA:  LDRSH.W         R5, [R8,#0x24]
B52AE:  UXTH            R4, R1
B52B0:  SMLATB.W        R0, R3, R6, R0
B52B4:  UXTH            R3, R3
B52B6:  MULS            R3, R6
B52B8:  MULS            R4, R5
B52BA:  ADD.W           R0, R0, R3,ASR#16
B52BE:  LDRD.W          R3, R2, [R2,#0x44]
B52C2:  SMLATB.W        R0, R1, R5, R0
B52C6:  LDRSH.W         R6, [R8,#0x26]
B52CA:  ADDS            R1, R2, R3
B52CC:  UXTH            R2, R1
B52CE:  MULS            R2, R6
B52D0:  ADD.W           R0, R0, R4,ASR#16
B52D4:  SMLATB.W        R0, R1, R6, R0
B52D8:  MOVS            R1, #1
B52DA:  ADD.W           R0, R0, R2,ASR#16
B52DE:  MOV             R2, #0xFFFF8000
B52E6:  ADD.W           R0, R1, R0,ASR#5
B52EA:  ASRS            R1, R0, #1
B52EC:  CMP             R1, R2
B52EE:  MOV             R1, R2
B52F0:  IT GT
B52F2:  ASRGT           R1, R0, #1
B52F4:  MOVW            R0, #0x7FFF
B52F8:  CMP             R1, R0
B52FA:  IT GE
B52FC:  MOVGE           R1, R0
B52FE:  STRH.W          R1, [R11],#2
B5302:  LDR.W           R0, [R7,#var_30]
B5306:  ADD             R12, R0
B5308:  LDR.W           R0, [R7,#var_28]
B530C:  CMP             R12, R0
B530E:  BLT.W           loc_B5136
B5312:  B               loc_B5654
B5314:  CMP             R0, #1
B5316:  BLT.W           loc_B5654
B531A:  LDR.W           R1, [R4,#0x118]
B531E:  MOV.W           LR, #0
B5322:  SUBS            R0, R1, #1
B5324:  STR.W           R0, [R7,#var_3C]
B5328:  SXTH            R0, R1
B532A:  STR.W           R0, [R7,#var_40]
B532E:  LDR.W           R0, [R7,#var_40]
B5332:  UXTH.W          R1, LR
B5336:  LDR.W           R8, [R7,#var_44]
B533A:  MOV.W           R4, LR,ASR#16
B533E:  STR.W           R11, [R7,#var_34]
B5342:  MULS            R0, R1
B5344:  LDR.W           R10, [R9,R4,LSL#2]
B5348:  ADD.W           R4, R9, R4,LSL#2
B534C:  UXTH.W          R12, R10
B5350:  STR.W           R0, [R7,#var_38]
B5354:  ASRS            R2, R0, #0x10
B5356:  ADD.W           R2, R2, R2,LSL#3
B535A:  LDRSH.W         R11, [R8,R2,LSL#1]
B535E:  ADD.W           R2, R8, R2,LSL#1
B5362:  LDRD.W          R6, R5, [R4,#4]
B5366:  MUL.W           R0, R12, R11
B536A:  ASRS            R0, R0, #0x10
B536C:  SMLATB.W        R12, R10, R11, R0
B5370:  LDRD.W          R11, R10, [R4,#0xC]
B5374:  LDRSH.W         R0, [R2,#2]
B5378:  LDRSH.W         R3, [R2,#4]
B537C:  LDRSH.W         R9, [R2,#6]
B5380:  SMLATB.W        R12, R6, R0, R12
B5384:  UXTH            R6, R6
B5386:  MULS            R0, R6
B5388:  UXTH            R6, R5
B538A:  LDRSH.W         R1, [R2,#8]
B538E:  ADD.W           R0, R12, R0,ASR#16
B5392:  SMLATB.W        R0, R5, R3, R0
B5396:  MULS            R3, R6
B5398:  ADD.W           R0, R0, R3,ASR#16
B539C:  UXTH.W          R3, R11
B53A0:  MUL.W           R3, R3, R9
B53A4:  SMLATB.W        R0, R11, R9, R0
B53A8:  LDR.W           R11, [R7,#var_34]
B53AC:  LDR.W           R9, [R7,#var_2C]
B53B0:  ADD.W           R0, R0, R3,ASR#16
B53B4:  UXTH.W          R3, R10
B53B8:  MULS            R3, R1
B53BA:  SMLATB.W        R0, R10, R1, R0
B53BE:  LDR             R1, [R4,#0x14]
B53C0:  UXTH            R6, R1
B53C2:  ADD.W           R0, R0, R3,ASR#16
B53C6:  LDRSH.W         R3, [R2,#0xA]
B53CA:  MULS            R6, R3
B53CC:  SMLATB.W        R0, R1, R3, R0
B53D0:  LDR             R1, [R4,#0x18]
B53D2:  LDRSH.W         R3, [R2,#0xC]
B53D6:  ADD.W           R0, R0, R6,ASR#16
B53DA:  UXTH            R6, R1
B53DC:  MULS            R6, R3
B53DE:  SMLATB.W        R0, R1, R3, R0
B53E2:  LDR             R1, [R4,#0x1C]
B53E4:  LDRSH.W         R3, [R2,#0xE]
B53E8:  ADD.W           R0, R0, R6,ASR#16
B53EC:  UXTH            R6, R1
B53EE:  MULS            R6, R3
B53F0:  SMLATB.W        R0, R1, R3, R0
B53F4:  LDRSH.W         R1, [R2,#0x10]
B53F8:  LDR             R2, [R4,#0x20]
B53FA:  ADD.W           R0, R0, R6,ASR#16
B53FE:  LDRD.W          R6, R5, [R7,#var_3C]
B5402:  UXTH            R3, R2
B5404:  SMLATB.W        R0, R2, R1, R0
B5408:  SUB.W           R6, R6, R5,ASR#16
B540C:  MULS            R3, R1
B540E:  LDR             R5, [R4,#0x44]
B5410:  ADD.W           R1, R6, R6,LSL#3
B5414:  LDRSH.W         R2, [R8,R1,LSL#1]
B5418:  ADD.W           R1, R8, R1,LSL#1
B541C:  LDR.W           R8, [R7,#var_48]
B5420:  ADD.W           R0, R0, R3,ASR#16
B5424:  UXTH            R3, R5
B5426:  LDRSH.W         R6, [R1,#4]
B542A:  MULS            R3, R2
B542C:  LDRSH.W         R12, [R1,#8]
B5430:  SMLATB.W        R0, R5, R2, R0
B5434:  LDR             R2, [R4,#0x40]
B5436:  LDRSH.W         R5, [R1,#6]
B543A:  ADD.W           R0, R0, R3,ASR#16
B543E:  LDRSH.W         R3, [R1,#2]
B5442:  SMLATB.W        R0, R2, R3, R0
B5446:  UXTH            R2, R2
B5448:  MULS            R2, R3
B544A:  ADD.W           R0, R0, R2,ASR#16
B544E:  LDR             R2, [R4,#0x3C]
B5450:  SMLATB.W        R0, R2, R6, R0
B5454:  UXTH            R2, R2
B5456:  MULS            R2, R6
B5458:  ADD.W           R0, R0, R2,ASR#16
B545C:  LDR             R2, [R4,#0x38]
B545E:  UXTH            R3, R2
B5460:  SMLATB.W        R0, R2, R5, R0
B5464:  MULS            R3, R5
B5466:  LDR             R2, [R4,#0x34]
B5468:  LDRSH.W         R5, [R1,#0xA]
B546C:  ADD.W           R0, R0, R3,ASR#16
B5470:  LDR             R3, [R4,#0x30]
B5472:  SMLATB.W        R0, R2, R12, R0
B5476:  UXTH            R2, R2
B5478:  MUL.W           R2, R2, R12
B547C:  UXTH            R6, R3
B547E:  MULS            R6, R5
B5480:  ADD.W           R0, R0, R2,ASR#16
B5484:  LDR             R2, [R4,#0x2C]
B5486:  SMLATB.W        R0, R3, R5, R0
B548A:  LDRSH.W         R3, [R1,#0xC]
B548E:  LDR             R5, [R4,#0x28]
B5490:  ADD.W           R0, R0, R6,ASR#16
B5494:  LDRSH.W         R6, [R1,#0xE]
B5498:  SMLATB.W        R12, R2, R3, R0
B549C:  UXTH            R2, R2
B549E:  MULS            R2, R3
B54A0:  UXTH            R0, R5
B54A2:  LDR             R3, [R4,#0x24]
B54A4:  MULS            R0, R6
B54A6:  LDRSH.W         R1, [R1,#0x10]
B54AA:  ADD.W           R2, R12, R2,ASR#16
B54AE:  SMLATB.W        R2, R5, R6, R2
B54B2:  UXTH            R6, R3
B54B4:  MULS            R6, R1
B54B6:  ADD.W           R0, R2, R0,ASR#16
B54BA:  MOVW            R2, #0x8000
B54BE:  SMLATB.W        R0, R3, R1, R0
B54C2:  MOVS            R1, #1
B54C4:  MOVT            R2, #0xFFFF
B54C8:  ADD.W           R0, R0, R6,ASR#16
B54CC:  ADD.W           R0, R1, R0,ASR#5
B54D0:  ASRS            R1, R0, #1
B54D2:  CMP             R1, R2
B54D4:  MOV             R1, R2
B54D6:  IT GT
B54D8:  ASRGT           R1, R0, #1
B54DA:  MOVW            R0, #0x7FFF
B54DE:  CMP             R1, R0
B54E0:  IT GE
B54E2:  MOVGE           R1, R0
B54E4:  STRH.W          R1, [R11],#2
B54E8:  LDR.W           R0, [R7,#var_30]
B54EC:  ADD             LR, R0
B54EE:  LDR.W           R0, [R7,#var_28]
B54F2:  CMP             LR, R0
B54F4:  BLT.W           loc_B532E
B54F8:  B               loc_B5654
B54FA:  CMP             R0, #1
B54FC:  BLT.W           loc_B5654
B5500:  MOV.W           R12, #0
B5504:  MOV.W           R0, R12,ASR#16
B5508:  LDRSH.W         R6, [R8,#4]
B550C:  ADD.W           R2, R9, R0,LSL#2
B5510:  LDR.W           R3, [R9,R0,LSL#2]
B5514:  ADD.W           LR, R2, #4
B5518:  LDR             R0, [R2,#0x5C]
B551A:  LDRSH.W         R5, [R8,#6]
B551E:  ADD             R0, R3
B5520:  LDRSH.W         R4, [R8,#8]
B5524:  LDRSH.W         R10, [R8,#0xA]
B5528:  UXTH            R1, R0
B552A:  MULS            R1, R6
B552C:  ASRS            R1, R1, #0x10
B552E:  SMLATB.W        R0, R0, R6, R1
B5532:  LDM.W           LR, {R1,R6,LR}
B5536:  LDR             R3, [R2,#0x58]
B5538:  LDR.W           R9, [R2,#0x10]
B553C:  ADD             R1, R3
B553E:  LDR             R3, [R2,#0x50]
B5540:  SMLATB.W        R0, R1, R5, R0
B5544:  UXTH            R1, R1
B5546:  MULS            R1, R5
B5548:  ADD             R3, LR
B554A:  ADD.W           R0, R0, R1,ASR#16
B554E:  LDR             R1, [R2,#0x54]
B5550:  ADD             R1, R6
B5552:  LDRSH.W         R6, [R8,#0xC]
B5556:  SMLATB.W        R0, R1, R4, R0
B555A:  UXTH            R1, R1
B555C:  MULS            R1, R4
B555E:  ADD.W           R0, R0, R1,ASR#16
B5562:  LDR             R1, [R2,#0x4C]
B5564:  SMLATB.W        R0, R3, R10, R0
B5568:  UXTH            R3, R3
B556A:  MUL.W           R3, R3, R10
B556E:  ADD             R1, R9
B5570:  LDR.W           R9, [R7,#var_2C]
B5574:  UXTH            R5, R1
B5576:  MULS            R5, R6
B5578:  ADD.W           R0, R0, R3,ASR#16
B557C:  SMLATB.W        R0, R1, R6, R0
B5580:  LDRD.W          R3, R1, [R2,#0x14]
B5584:  LDR             R6, [R2,#0x44]
B5586:  ADD             R1, R6
B5588:  LDRSH.W         R6, [R8,#0xE]
B558C:  ADD.W           R0, R0, R5,ASR#16
B5590:  LDR             R5, [R2,#0x48]
B5592:  UXTH            R4, R1
B5594:  ADD             R3, R5
B5596:  LDRSH.W         R5, [R8,#0x10]
B559A:  SMLATB.W        R0, R3, R6, R0
B559E:  UXTH            R3, R3
B55A0:  MULS            R3, R6
B55A2:  MULS            R4, R5
B55A4:  ADD.W           R0, R0, R3,ASR#16
B55A8:  SMLATB.W        R0, R1, R5, R0
B55AC:  LDRD.W          R3, R1, [R2,#0x1C]
B55B0:  LDR             R6, [R2,#0x3C]
B55B2:  LDR             R5, [R2,#0x40]
B55B4:  ADD             R1, R6
B55B6:  LDRSH.W         R6, [R8,#0x12]
B55BA:  ADD             R3, R5
B55BC:  ADD.W           R0, R0, R4,ASR#16
B55C0:  LDRSH.W         R5, [R8,#0x14]
B55C4:  UXTH            R4, R1
B55C6:  SMLATB.W        R0, R3, R6, R0
B55CA:  UXTH            R3, R3
B55CC:  MULS            R3, R6
B55CE:  MULS            R4, R5
B55D0:  ADD.W           R0, R0, R3,ASR#16
B55D4:  SMLATB.W        R0, R1, R5, R0
B55D8:  LDRD.W          R3, R1, [R2,#0x24]
B55DC:  LDR             R6, [R2,#0x34]
B55DE:  LDR             R5, [R2,#0x38]
B55E0:  ADD             R1, R6
B55E2:  LDRSH.W         R6, [R8,#0x16]
B55E6:  ADD             R3, R5
B55E8:  ADD.W           R0, R0, R4,ASR#16
B55EC:  LDRSH.W         R5, [R8,#0x18]
B55F0:  UXTH            R4, R1
B55F2:  SMLATB.W        R0, R3, R6, R0
B55F6:  UXTH            R3, R3
B55F8:  MULS            R3, R6
B55FA:  MULS            R4, R5
B55FC:  ADD.W           R0, R0, R3,ASR#16
B5600:  LDRD.W          R3, R2, [R2,#0x2C]
B5604:  SMLATB.W        R0, R1, R5, R0
B5608:  LDRSH.W         R6, [R8,#0x1A]
B560C:  ADDS            R1, R2, R3
B560E:  UXTH            R2, R1
B5610:  MULS            R2, R6
B5612:  ADD.W           R0, R0, R4,ASR#16
B5616:  SMLATB.W        R0, R1, R6, R0
B561A:  MOVS            R1, #1
B561C:  ADD.W           R0, R0, R2,ASR#16
B5620:  MOV             R2, #0xFFFF8000
B5628:  ADD.W           R0, R1, R0,ASR#5
B562C:  ASRS            R1, R0, #1
B562E:  CMP             R1, R2
B5630:  MOV             R1, R2
B5632:  IT GT
B5634:  ASRGT           R1, R0, #1
B5636:  MOVW            R0, #0x7FFF
B563A:  CMP             R1, R0
B563C:  IT GE
B563E:  MOVGE           R1, R0
B5640:  STRH.W          R1, [R11],#2
B5644:  LDR.W           R0, [R7,#var_30]
B5648:  ADD             R12, R0
B564A:  LDR.W           R0, [R7,#var_28]
B564E:  CMP             R12, R0
B5650:  BLT.W           loc_B5504
B5654:  LDRD.W          R6, R5, [R7,#var_50]
B5658:  SUBS            R5, R5, R6
B565A:  CMP             R5, #2
B565C:  BGE.W           loc_B50C2
B5660:  LDR.W           R0, [R7,#var_58]
B5664:  ADD.W           R1, R9, R6,LSL#2; src
B5668:  LDR.W           R0, [R0,#0x114]
B566C:  LSLS            R2, R0, #2; n
B566E:  LDR.W           R0, [R7,#dest]; dest
B5672:  BLX             j_memcpy
B5676:  LDR             R0, =(__stack_chk_guard_ptr - 0xB5680)
B5678:  LDR.W           R1, [R7,#var_24]
B567C:  ADD             R0, PC; __stack_chk_guard_ptr
B567E:  LDR             R0, [R0]; __stack_chk_guard
B5680:  LDR             R0, [R0]
B5682:  SUBS            R0, R0, R1
B5684:  ITTTT EQ
B5686:  SUBEQ.W         R4, R7, #-var_1C
B568A:  MOVEQ           SP, R4
B568C:  POPEQ.W         {R8-R11}
B5690:  POPEQ           {R4-R7,PC}
B5692:  BLX             __stack_chk_fail
