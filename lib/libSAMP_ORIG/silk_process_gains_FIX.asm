; =========================================================
; Game Engine Function: silk_process_gains_FIX
; Address            : 0xD41F4 - 0xD4514
; =========================================================

D41F4:  PUSH            {R4-R7,LR}
D41F6:  ADD             R7, SP, #0xC
D41F8:  PUSH.W          {R8-R11}
D41FC:  SUB             SP, SP, #0x14
D41FE:  MOV             R5, R0
D4200:  STR             R2, [SP,#0x30+var_28]
D4202:  MOVW            R0, #0x129D
D4206:  MOV             R4, R1
D4208:  LDRB            R1, [R5,R0]
D420A:  ADD             R0, R5
D420C:  STR             R0, [SP,#0x30+var_24]
D420E:  CMP             R1, #2
D4210:  BNE             loc_D425A
D4212:  LDR.W           R0, [R4,#0x18C]
D4216:  MOVS            R1, #1
D4218:  SUB.W           R0, R0, #0x600
D421C:  ADD.W           R0, R1, R0,ASR#3
D4220:  ASRS            R0, R0, #1
D4222:  BLX             j_silk_sigm_Q15
D4226:  MOVW            R1, #0x11E4
D422A:  ADD.W           R8, R5, R1
D422E:  LDR             R2, [R5,R1]
D4230:  CMP             R2, #1
D4232:  BLT             loc_D4262
D4234:  NEGS            R0, R0
D4236:  MOVS            R1, #0
D4238:  SXTH            R0, R0
D423A:  LDR.W           R2, [R4,R1,LSL#2]
D423E:  UXTH            R3, R2
D4240:  SMLABT.W        R2, R0, R2, R2
D4244:  MULS            R3, R0
D4246:  ADD.W           R2, R2, R3,ASR#16
D424A:  STR.W           R2, [R4,R1,LSL#2]
D424E:  ADDS            R1, #1
D4250:  LDR.W           R2, [R8]
D4254:  CMP             R1, R2
D4256:  BLT             loc_D423A
D4258:  B               loc_D4262
D425A:  MOVW            R0, #0x11E4
D425E:  ADD.W           R8, R5, R0
D4262:  MOVW            R0, #0x126C
D4266:  MOVW            R1, #0x22BE
D426A:  LDR             R0, [R5,R0]
D426C:  MOVW            R2, #0x547B
D4270:  SUBS            R0, R1, R0
D4272:  UXTH            R1, R0
D4274:  MULS            R1, R2
D4276:  LSRS            R1, R1, #0x10
D4278:  SMLATB.W        R0, R0, R2, R1
D427C:  BLX             j_silk_log2lin
D4280:  MOVW            R1, #0x11EC
D4284:  STR             R5, [SP,#0x30+var_20]
D4286:  LDR             R1, [R5,R1]
D4288:  BLX             sub_108848
D428C:  LDR.W           R1, [R8]
D4290:  CMP             R1, #1
D4292:  BLT.W           loc_D4430
D4296:  MOVS            R1, #1
D4298:  MOVW            R10, #0
D429C:  ADD.W           R1, R1, R0,ASR#15
D42A0:  MOVW            R12, #0xFFFF
D42A4:  SXTH            R0, R0
D42A6:  MOVS            R3, #0
D42A8:  MOV.W           R11, R1,ASR#1
D42AC:  MOVT            R10, #0xFF80
D42B0:  MOVT            R12, #0x7F
D42B4:  MOVW            LR, #0x7FFF
D42B8:  ADD.W           R1, R4, R3,LSL#2
D42BC:  LDR.W           R2, [R1,#0x190]
D42C0:  LDR.W           R1, [R1,#0x1A0]
D42C4:  UXTH            R6, R2
D42C6:  MUL.W           R5, R2, R11
D42CA:  CMP             R1, #1
D42CC:  MUL.W           R6, R0, R6
D42D0:  SMLABT.W        R2, R0, R2, R5
D42D4:  ADD.W           R2, R2, R6,ASR#16
D42D8:  BLT             loc_D42E6
D42DA:  BNE             loc_D42FC
D42DC:  AND.W           R1, R2, #1
D42E0:  ADD.W           R1, R1, R2,ASR#1
D42E4:  B               loc_D4306
D42E6:  NEGS            R5, R1
D42E8:  MOV             R1, #0x7FFFFFFF
D42EC:  LSRS            R1, R5
D42EE:  CMP             R2, R1
D42F0:  MOV             R1, #0x7FFFFFFF
D42F4:  IT LT
D42F6:  LSLLT.W         R1, R2, R5
D42FA:  B               loc_D4306
D42FC:  SUBS            R1, #1
D42FE:  ASR.W           R1, R2, R1
D4302:  ADDS            R1, #1
D4304:  ASRS            R1, R1, #1
D4306:  LDR.W           R2, [R4,R3,LSL#2]
D430A:  CMP.W           R1, #0xFFFFFFFF
D430E:  SMMLA.W         R6, R2, R2, R1
D4312:  MOV             R5, R6
D4314:  IT GT
D4316:  MOVGT           R5, #0x7FFFFFFF
D431A:  CMP.W           R6, #0xFFFFFFFF
D431E:  IT GT
D4320:  MOVGT           R5, R6
D4322:  MOVW            R6, #0x7FFE
D4326:  CMP             R5, R6
D4328:  BGT             loc_D435E
D432A:  UXTH            R5, R2
D432C:  SXTH            R6, R2
D432E:  MULS            R5, R6
D4330:  LSLS            R1, R1, #0x10
D4332:  SMLABT.W        R1, R2, R2, R1
D4336:  ADD.W           R1, R1, R5,ASR#16
D433A:  MOVS            R5, #1
D433C:  ADD.W           R5, R5, R2,ASR#15
D4340:  ASRS            R5, R5, #1
D4342:  MLA.W           R5, R5, R2, R1
D4346:  CMP             R5, #1
D4348:  BLT             loc_D4372
D434A:  CLZ.W           R1, R5
D434E:  RSBS.W          R2, R1, #0x18
D4352:  BEQ             loc_D43DC
D4354:  CMP.W           R2, #0xFFFFFFFF
D4358:  BLE             loc_D43CC
D435A:  RORS            R5, R2
D435C:  B               loc_D43DC
D435E:  CLZ.W           R1, R5
D4362:  RSBS.W          R2, R1, #0x18
D4366:  BEQ             loc_D4388
D4368:  CMP.W           R2, #0xFFFFFFFF
D436C:  BLE             loc_D4378
D436E:  RORS            R5, R2
D4370:  B               loc_D4388
D4372:  MOV.W           R9, #0
D4376:  B               loc_D440C
D4378:  NEGS            R6, R2
D437A:  ADDS            R2, #0x20 ; ' '
D437C:  LSL.W           R6, R5, R6
D4380:  LSR.W           R2, R5, R2
D4384:  ORR.W           R5, R2, R6
D4388:  AND.W           R2, R5, #0x7F
D438C:  MOV.W           R5, #0xD50000
D4390:  TST.W           R1, #1
D4394:  MOV.W           R1, R1,LSR#1
D4398:  MUL.W           R2, R5, R2
D439C:  MOV.W           R5, #0x8000
D43A0:  IT EQ
D43A2:  MOVWEQ          R5, #0xB486
D43A6:  LSR.W           R1, R5, R1
D43AA:  UXTH            R5, R1
D43AC:  LSRS            R2, R2, #0x10
D43AE:  MULS            R5, R2
D43B0:  SMLABT.W        R1, R2, R1, R1
D43B4:  ADD.W           R9, R1, R5,LSR#16
D43B8:  ADD.W           R1, R10, #0x7F8000
D43BC:  CMP             R9, LR
D43BE:  IT GE
D43C0:  MOVGE           R9, LR
D43C2:  CMP             R9, R1
D43C4:  IT LE
D43C6:  MOVLE           R9, R1
D43C8:  MOVS            R1, #0x10
D43CA:  B               loc_D441C
D43CC:  NEGS            R6, R2
D43CE:  ADDS            R2, #0x20 ; ' '
D43D0:  LSL.W           R6, R5, R6
D43D4:  LSR.W           R2, R5, R2
D43D8:  ORR.W           R5, R2, R6
D43DC:  AND.W           R2, R5, #0x7F
D43E0:  MOV.W           R5, #0xD50000
D43E4:  TST.W           R1, #1
D43E8:  MOV.W           R1, R1,LSR#1
D43EC:  MUL.W           R2, R5, R2
D43F0:  MOV.W           R5, #0x8000
D43F4:  IT EQ
D43F6:  MOVWEQ          R5, #0xB486
D43FA:  LSR.W           R1, R5, R1
D43FE:  UXTH            R5, R1
D4400:  LSRS            R2, R2, #0x10
D4402:  MULS            R5, R2
D4404:  SMLABT.W        R1, R2, R1, R1
D4408:  ADD.W           R9, R1, R5,LSR#16
D440C:  CMP             R9, R12
D440E:  MOV.W           R1, #8
D4412:  IT GE
D4414:  MOVGE           R9, R12
D4416:  CMP             R9, R10
D4418:  IT LE
D441A:  MOVLE           R9, R10
D441C:  LSL.W           R1, R9, R1
D4420:  STR.W           R1, [R4,R3,LSL#2]
D4424:  ADDS            R3, #1
D4426:  LDR.W           R1, [R8]
D442A:  CMP             R3, R1
D442C:  BLT.W           loc_D42B8
D4430:  ADD.W           R0, R4, #0x1B0; dest
D4434:  LSLS            R2, R1, #2; n
D4436:  MOV             R1, R4; src
D4438:  BLX             j_memcpy
D443C:  LDR             R5, [SP,#0x30+var_20]
D443E:  MOV.W           R0, #0x1C00
D4442:  MOVS            R3, #0
D4444:  MOV             R1, R4
D4446:  ADD.W           R2, R5, #0x1C00
D444A:  LDRB            R0, [R5,R0]
D444C:  STRB.W          R0, [R4,#0x1C0]
D4450:  LDR.W           R0, [R8]
D4454:  MOV.W           R8, #0
D4458:  STR             R0, [SP,#0x30+var_30]
D445A:  LDR             R0, [SP,#0x30+var_28]
D445C:  CMP             R0, #2
D445E:  ADD.W           R0, R5, #0x1280
D4462:  IT EQ
D4464:  MOVEQ           R3, #1
D4466:  BLX             j_silk_gains_quant
D446A:  LDR             R0, [SP,#0x30+var_24]
D446C:  LDRSB.W         R0, [R0]
D4470:  CMP             R0, #2
D4472:  BNE             loc_D4494
D4474:  MOVW            R1, #0x1268
D4478:  LDR.W           R2, [R4,#0x18C]
D447C:  LDR             R1, [R5,R1]
D447E:  ADD.W           R1, R2, R1,ASR#8
D4482:  CMP             R1, #0x81
D4484:  MOVW            R1, #0x129E
D4488:  IT LT
D448A:  MOVLT.W         R8, #1
D448E:  STRB.W          R8, [R5,R1]
D4492:  B               loc_D449C
D4494:  MOVW            R1, #0x129E
D4498:  LDRB.W          R8, [R5,R1]
D449C:  LDRSH.W         R1, [R4,#0x180]
D44A0:  MOVW            R3, #0xFE67
D44A4:  LDRSH.W         R2, [R4,#0x184]
D44A8:  MOVW            R6, #0x11B4
D44AC:  LDRSH           R6, [R5,R6]
D44AE:  MUL.W           R12, R1, R3
D44B2:  MOVW            R3, #0xFCCE
D44B6:  MUL.W           LR, R2, R3
D44BA:  MOV             R3, #0xFFFFFFFC
D44BE:  AND.W           R0, R3, R0,LSL#1
D44C2:  LDR             R3, =(silk_Quantization_Offsets_Q10_ptr - 0xD44C8)
D44C4:  ADD             R3, PC; silk_Quantization_Offsets_Q10_ptr
D44C6:  LDR             R3, [R3]; silk_Quantization_Offsets_Q10
D44C8:  ADD             R0, R3
D44CA:  SXTB.W          R3, R8
D44CE:  LDRSH.W         R0, [R0,R3,LSL#1]
D44D2:  MOVW            R3, #0xCCCD
D44D6:  MULS            R0, R3
D44D8:  MOVW            R3, #0x1214
D44DC:  LDRSH           R3, [R5,R3]
D44DE:  MOV             R5, #0xFFFFFFCE
D44E2:  SMULBB.W        R3, R3, R5
D44E6:  ADD.W           R0, R3, R0,ASR#16
D44EA:  MOVW            R3, #0x3334
D44EE:  SMULBB.W        R3, R6, R3
D44F2:  ADDW            R0, R0, #0x4CD
D44F6:  SUBS            R0, R0, R6
D44F8:  SUBS            R0, R0, R1
D44FA:  ADD.W           R0, R0, R3,ASR#16
D44FE:  SUBS            R0, R0, R2
D4500:  ADD.W           R0, R0, R12,ASR#16
D4504:  ADD.W           R0, R0, LR,ASR#16
D4508:  STR.W           R0, [R4,#0x17C]
D450C:  ADD             SP, SP, #0x14
D450E:  POP.W           {R8-R11}
D4512:  POP             {R4-R7,PC}
