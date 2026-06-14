; =========================================================
; Game Engine Function: sub_199154
; Address            : 0x199154 - 0x19949E
; =========================================================

199154:  PUSH            {R4-R7,LR}
199156:  ADD             R7, SP, #0xC
199158:  PUSH.W          {R8-R11}
19915C:  SUB             SP, SP, #0x34
19915E:  STR.W           R0, [R7,#var_3C]
199162:  MOV             R10, R1
199164:  LDR             R0, =(__stack_chk_guard_ptr - 0x199174)
199166:  MOVW            R9, #0x8000
19916A:  LDRD.W          R1, R8, [R7,#arg_0]
19916E:  MOV             R6, R2
199170:  ADD             R0, PC; __stack_chk_guard_ptr
199172:  MOVT            R9, #0xFFFF
199176:  CMP             R3, #2
199178:  LDR             R0, [R0]; __stack_chk_guard
19917A:  LDR             R0, [R0]
19917C:  STR.W           R0, [R7,#var_24]
199180:  MOV             R0, R3
199182:  STR.W           R0, [R7,#var_38]
199186:  BNE             loc_199226
199188:  CMP             R1, #1
19918A:  ITT EQ
19918C:  LDREQ           R0, [R7,#arg_C]
19918E:  CMPEQ           R0, #0
199190:  BNE             loc_199226
199192:  LDR             R0, [R7,#arg_8]
199194:  CMP             R6, #1
199196:  LDRD.W          R9, R4, [R0]
19919A:  BLT             loc_19921E
19919C:  LDR.W           R0, [R7,#var_3C]
1991A0:  ADD.W           R3, R10, #2
1991A4:  MOVW            R10, #0x8000
1991A8:  LDRD.W          R11, R1, [R0]
1991AC:  MOVT            R10, #0xFFFF
1991B0:  LDRSH.W         R12, [R8]
1991B4:  MOVW            R8, #0x7FFF
1991B8:  MOV.W           LR, R12,LSL#1
1991BC:  LDR.W           R5, [R1],#4
1991C0:  LDR.W           R0, [R11],#4
1991C4:  ADD             R4, R5
1991C6:  ADD.W           R5, R4, #0x800
1991CA:  ASRS            R2, R5, #0xC
1991CC:  CMP             R2, R10
1991CE:  MOV             R2, R10
1991D0:  IT GT
1991D2:  ASRGT           R2, R5, #0xC
1991D4:  CMP             R2, R8
1991D6:  IT GE
1991D8:  MOVGE           R2, R8
1991DA:  STRH            R2, [R3]
1991DC:  ADD.W           R2, R0, R9
1991E0:  ADD.W           R5, R2, #0x800
1991E4:  ASRS            R0, R5, #0xC
1991E6:  CMP             R0, R10
1991E8:  MOV             R0, R10
1991EA:  IT GT
1991EC:  ASRGT           R0, R5, #0xC
1991EE:  UXTH            R5, R2
1991F0:  MUL.W           R9, R5, R12
1991F4:  UXTH            R5, R4
1991F6:  ASRS            R2, R2, #0x10
1991F8:  ASRS            R4, R4, #0x10
1991FA:  MUL.W           R5, R5, R12
1991FE:  CMP             R0, R8
199200:  MUL.W           R4, R4, LR
199204:  IT GE
199206:  MOVGE           R0, R8
199208:  STRH.W          R0, [R3,#-2]
19920C:  MUL.W           R2, R2, LR
199210:  ADDS            R3, #4
199212:  SUBS            R6, #1
199214:  ADD.W           R4, R4, R5,ASR#15
199218:  ADD.W           R9, R2, R9,ASR#15
19921C:  BNE             loc_1991BC
19921E:  LDR             R0, [R7,#arg_8]
199220:  STRD.W          R9, R4, [R0]
199224:  B               loc_19947E
199226:  MOVS            R0, #7
199228:  MOV             R5, R1
19922A:  ADD.W           R0, R0, R6,LSL#2
19922E:  BIC.W           R4, R0, #7
199232:  MOV             R0, R6
199234:  BLX             sub_220A40
199238:  MOV             R12, R0
19923A:  SUB.W           R0, SP, R4
19923E:  MOV             R2, R5
199240:  STR.W           R0, [R7,#var_44]
199244:  MOV             SP, R0
199246:  LDRSH.W         R4, [R8]
19924A:  MOV.W           R11, R2,LSL#2
19924E:  LDR.W           R0, [R7,#var_38]
199252:  MOVS            R1, #0
199254:  LDR.W           R8, [R7,#arg_C]
199258:  STR.W           R6, [R7,#var_40]
19925C:  MOV.W           LR, R0,LSL#1
199260:  LSLS            R0, R4, #1
199262:  STR.W           R0, [R7,#var_2C]
199266:  MOVS            R0, #0
199268:  STR.W           R0, [R7,#var_34]
19926C:  STR.W           R4, [R7,#var_28]
199270:  STRD.W          R11, R12, [R7,#var_4C]
199274:  LDR.W           R0, [R7,#var_3C]
199278:  CMP             R2, #2
19927A:  STR.W           R1, [R7,#var_30]
19927E:  LDR.W           R11, [R0,R1,LSL#2]
199282:  LDR             R0, [R7,#arg_8]
199284:  LDR.W           R12, [R0,R1,LSL#2]
199288:  BLT             loc_1992D4
19928A:  MOV             R5, R8
19928C:  LDR.W           R2, [R7,#var_44]
199290:  LDR.W           R8, [R7,#var_2C]
199294:  CMP             R6, #1
199296:  MOV             R0, R6
199298:  BLT             loc_1992BE
19929A:  LDR.W           R1, [R11],#4
19929E:  SUBS            R0, #1
1992A0:  ADD             R1, R12
1992A2:  STR.W           R1, [R2],#4
1992A6:  UXTH            R3, R1
1992A8:  MUL.W           R3, R4, R3
1992AC:  MOV.W           R4, R1,ASR#16
1992B0:  MUL.W           R4, R8, R4
1992B4:  ADD.W           R12, R4, R3,ASR#15
1992B8:  LDR.W           R4, [R7,#var_28]
1992BC:  BNE             loc_19929A
1992BE:  LDR.W           R1, [R7,#var_30]
1992C2:  MOV             R8, R5
1992C4:  LDR             R0, [R7,#arg_8]
1992C6:  LDR             R2, [R7,#arg_0]
1992C8:  STR.W           R12, [R0,R1,LSL#2]
1992CC:  MOVS            R0, #1
1992CE:  STR.W           R0, [R7,#var_34]
1992D2:  B               loc_1993C2
1992D4:  CMP.W           R8, #0
1992D8:  BEQ             loc_19934E
1992DA:  LDR.W           R5, [R7,#var_2C]
1992DE:  CMP             R6, #1
1992E0:  BLT             loc_19939C
1992E2:  MOV.W           R8, #0
1992E6:  MOV             R9, R6
1992E8:  LDR.W           R0, [R11]
1992EC:  LDRSH.W         R2, [R10,R8]
1992F0:  ADD             R0, R12
1992F2:  UXTH            R1, R0
1992F4:  ASRS            R3, R0, #0x10
1992F6:  MULS            R1, R4
1992F8:  ADD.W           R4, R0, #0x800
1992FC:  MOVW            R0, #0x7FFF
199300:  MULS            R3, R5
199302:  MOVW            R5, #0x8000
199306:  ASRS            R6, R4, #0xC
199308:  MOVT            R5, #0xFFFF
19930C:  CMP             R6, R5
19930E:  MOV             R6, R5
199310:  IT GT
199312:  ASRGT           R6, R4, #0xC
199314:  CMP             R6, R0
199316:  ADD.W           R12, R3, R1,ASR#15
19931A:  IT GE
19931C:  MOVGE           R6, R0
19931E:  SXTAH.W         R2, R2, R6
199322:  CMP.W           R2, #0x8000
199326:  BGE             loc_199338
199328:  MOV             R0, #0xFFFF8000
199330:  CMP             R2, R0
199332:  IT LE
199334:  MOVLE           R2, R0
199336:  MOV             R0, R2
199338:  STRH.W          R0, [R10,R8]
19933C:  ADD             R8, LR
19933E:  SUBS.W          R9, R9, #1
199342:  LDRD.W          R5, R4, [R7,#var_2C]
199346:  ADD.W           R11, R11, #4
19934A:  BNE             loc_1992E8
19934C:  B               loc_19939C
19934E:  LDR.W           R5, [R7,#var_2C]
199352:  CMP             R6, #1
199354:  MOV             R0, R10
199356:  MOV             R2, R6
199358:  BLT             loc_19939C
19935A:  LDR.W           R1, [R11],#4
19935E:  ADD             R1, R12
199360:  UXTH            R3, R1
199362:  ASRS            R6, R1, #0x10
199364:  ADD.W           R1, R1, #0x800
199368:  MULS            R6, R5
19936A:  MOVW            R5, #0x8000
19936E:  MULS            R3, R4
199370:  ASRS            R4, R1, #0xC
199372:  MOVT            R5, #0xFFFF
199376:  CMP             R4, R5
199378:  MOV             R4, R5
19937A:  LDR.W           R5, [R7,#var_2C]
19937E:  IT GT
199380:  ASRGT           R4, R1, #0xC
199382:  MOVW            R1, #0x7FFF
199386:  CMP             R4, R1
199388:  IT GE
19938A:  MOVGE           R4, R1
19938C:  SUBS            R2, #1
19938E:  STRH            R4, [R0]
199390:  ADD.W           R12, R6, R3,ASR#15
199394:  LDR.W           R4, [R7,#var_28]
199398:  ADD             R0, LR
19939A:  BNE             loc_19935A
19939C:  LDR.W           R1, [R7,#var_30]
1993A0:  MOVW            R9, #0x8000
1993A4:  LDR             R0, [R7,#arg_8]
1993A6:  MOVT            R9, #0xFFFF
1993AA:  LDR             R5, [R7,#arg_0]
1993AC:  LDR.W           R8, [R7,#arg_C]
1993B0:  STR.W           R12, [R0,R1,LSL#2]
1993B4:  MOV             R2, R5
1993B6:  LDR.W           R0, [R7,#var_34]
1993BA:  LDR.W           R6, [R7,#var_40]
1993BE:  CMP             R0, #0
1993C0:  BEQ             loc_199468
1993C2:  LDRD.W          R11, R12, [R7,#var_4C]
1993C6:  CMP.W           R8, #0
1993CA:  BEQ             loc_199428
1993CC:  CMP.W           R12, #1
1993D0:  BLT             loc_19946E
1993D2:  LDR.W           R3, [R7,#var_44]
1993D6:  MOVS            R0, #0
1993D8:  MOV             R2, R12
1993DA:  LDR             R1, [R3]
1993DC:  LDRSH.W         R6, [R10,R0]
1993E0:  ADD.W           R4, R1, #0x800
1993E4:  MOVW            R1, #0x7FFF
1993E8:  ASRS            R5, R4, #0xC
1993EA:  CMP             R5, R9
1993EC:  MOV             R5, R9
1993EE:  IT GT
1993F0:  ASRGT           R5, R4, #0xC
1993F2:  CMP             R5, R1
1993F4:  IT GE
1993F6:  MOVGE           R5, R1
1993F8:  SXTAH.W         R4, R6, R5
1993FC:  CMP.W           R4, #0x8000
199400:  BGE             loc_19940A
199402:  CMP             R4, R9
199404:  IT LE
199406:  MOVLE           R4, R9
199408:  MOV             R1, R4
19940A:  STRH.W          R1, [R10,R0]
19940E:  ADD             R3, R11
199410:  ADD             R0, LR
199412:  SUBS            R2, #1
199414:  BNE             loc_1993DA
199416:  LDR             R5, [R7,#arg_0]
199418:  LDR.W           R6, [R7,#var_40]
19941C:  LDR.W           R4, [R7,#var_28]
199420:  LDR.W           R1, [R7,#var_30]
199424:  MOV             R2, R5
199426:  B               loc_19946E
199428:  CMP.W           R12, #1
19942C:  MOVW            R5, #0x7FFF
199430:  BLT             loc_19946E
199432:  LDR.W           R2, [R7,#var_44]
199436:  MOVS            R0, #0
199438:  MOV             R3, R12
19943A:  LDR             R1, [R2]
19943C:  ADD             R2, R11
19943E:  ADD.W           R1, R1, #0x800
199442:  ASRS            R6, R1, #0xC
199444:  CMP             R6, R9
199446:  MOV             R6, R9
199448:  IT GT
19944A:  ASRGT           R6, R1, #0xC
19944C:  CMP             R6, R5
19944E:  IT GE
199450:  MOVGE           R6, R5
199452:  SUBS            R3, #1
199454:  STRH.W          R6, [R10,R0]
199458:  ADD             R0, LR
19945A:  BNE             loc_19943A
19945C:  LDR.W           R6, [R7,#var_40]
199460:  LDR.W           R1, [R7,#var_30]
199464:  LDR             R2, [R7,#arg_0]
199466:  B               loc_19946E
199468:  MOVS            R0, #0
19946A:  STR.W           R0, [R7,#var_34]
19946E:  LDR.W           R0, [R7,#var_38]
199472:  ADDS            R1, #1
199474:  ADD.W           R10, R10, #2
199478:  CMP             R1, R0
19947A:  BLT.W           loc_199274
19947E:  LDR             R0, =(__stack_chk_guard_ptr - 0x199488)
199480:  LDR.W           R1, [R7,#var_24]
199484:  ADD             R0, PC; __stack_chk_guard_ptr
199486:  LDR             R0, [R0]; __stack_chk_guard
199488:  LDR             R0, [R0]
19948A:  SUBS            R0, R0, R1
19948C:  ITTTT EQ
19948E:  SUBEQ.W         R4, R7, #-var_1C
199492:  MOVEQ           SP, R4
199494:  POPEQ.W         {R8-R11}
199498:  POPEQ           {R4-R7,PC}
19949A:  BLX             __stack_chk_fail
