; =========================================================
; Game Engine Function: _Z23CreateUncompressedImagePhhjjh
; Address            : 0x1B4168 - 0x1B4678
; =========================================================

1B4168:  PUSH            {R4-R7,LR}
1B416A:  ADD             R7, SP, #0xC
1B416C:  PUSH.W          {R8-R11}
1B4170:  SUB             SP, SP, #0x4C
1B4172:  MOV             R6, R0
1B4174:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1B4186)
1B4178:  MOV             R5, R3
1B417A:  MOV             R10, R2
1B417C:  MOV             R11, R1
1B417E:  MUL.W           R1, R10, R5
1B4182:  ADD             R0, PC; __stack_chk_guard_ptr
1B4184:  LDR             R0, [R0]; __stack_chk_guard
1B4186:  LDR             R0, [R0]
1B4188:  LSLS            R4, R1, #2
1B418A:  STR             R0, [SP,#0x68+var_20]
1B418C:  MOV             R0, R4; byte_count
1B418E:  BLX             malloc
1B4192:  MOV             R8, R0
1B4194:  ORR.W           R0, R5, R10
1B4198:  LSLS            R0, R0, #0x1E
1B419A:  BEQ             loc_1B41A8
1B419C:  MOV             R0, R8
1B419E:  MOV             R1, R4
1B41A0:  MOVS            R2, #0xFF
1B41A2:  BLX             j___aeabi_memset8_0
1B41A6:  B               loc_1B465C
1B41A8:  MOV             R0, R8
1B41AA:  MOV             R1, R4
1B41AC:  BLX             j___aeabi_memclr8_0
1B41B0:  ADD.W           R0, R10, #3
1B41B4:  STR             R0, [SP,#0x68+var_34]
1B41B6:  MOV.W           R2, R10,LSL#1
1B41BA:  CMP.W           R11, #5
1B41BE:  MOV.W           R1, R0,LSR#2
1B41C2:  ADD.W           R0, R5, #3
1B41C6:  STR             R1, [SP,#0x68+var_2C]
1B41C8:  MOV.W           R0, R0,LSR#2
1B41CC:  MUL.W           R0, R1, R0
1B41D0:  ADD.W           R1, R10, R10,LSL#1
1B41D4:  STR             R0, [SP,#0x68+var_30]
1B41D6:  STRD.W          R2, R1, [SP,#0x68+var_3C]
1B41DA:  STR.W           R8, [SP,#0x68+var_68]
1B41DE:  BEQ             loc_1B42BC
1B41E0:  CMP.W           R11, #3
1B41E4:  BEQ.W           loc_1B4556
1B41E8:  LDR             R1, [SP,#0x68+var_34]
1B41EA:  CMP.W           R11, #1
1B41EE:  LDRD.W          R8, R3, [SP,#0x68+var_3C]
1B41F2:  BNE.W           loc_1B4658
1B41F6:  CMP             R0, #0
1B41F8:  BEQ.W           loc_1B4658
1B41FC:  ADDS            R0, R3, #3
1B41FE:  STR             R0, [SP,#0x68+var_40]
1B4200:  ADD.W           R0, R8, #3
1B4204:  STR             R0, [SP,#0x68+var_44]
1B4206:  ADDS            R0, R3, #2
1B4208:  STR             R0, [SP,#0x68+var_48]
1B420A:  ADD.W           R0, R8, #2
1B420E:  STR             R0, [SP,#0x68+var_4C]
1B4210:  ADDS            R0, R3, #1
1B4212:  LDR             R5, [SP,#0x68+var_68]
1B4214:  STR             R0, [SP,#0x68+var_50]
1B4216:  ORR.W           R0, R8, #1
1B421A:  STR             R0, [SP,#0x68+var_54]
1B421C:  ADD.W           R0, R10, #2
1B4220:  MOVS            R4, #0
1B4222:  MOV.W           R11, #0xFF000000
1B4226:  STR             R0, [SP,#0x68+var_58]
1B4228:  ADD.W           R0, R10, #1
1B422C:  STR             R0, [SP,#0x68+var_5C]
1B422E:  LDR             R0, [SP,#0x68+var_5C]
1B4230:  MOV             R9, R10
1B4232:  STR.W           R11, [R5]
1B4236:  MOV             R2, R9; unsigned int
1B4238:  STR.W           R11, [R5,R10,LSL#2]
1B423C:  MOV             R10, R3
1B423E:  STR.W           R11, [R5,R8,LSL#2]
1B4242:  STR.W           R11, [R5,R3,LSL#2]
1B4246:  STR.W           R11, [R5,#4]
1B424A:  STR.W           R11, [R5,R0,LSL#2]
1B424E:  LDR             R0, [SP,#0x68+var_54]
1B4250:  STR.W           R11, [R5,R0,LSL#2]
1B4254:  LDR             R0, [SP,#0x68+var_50]
1B4256:  STR.W           R11, [R5,R0,LSL#2]
1B425A:  LDR             R0, [SP,#0x68+var_58]
1B425C:  STR.W           R11, [R5,#8]
1B4260:  STR.W           R11, [R5,R0,LSL#2]
1B4264:  LDR             R0, [SP,#0x68+var_4C]
1B4266:  STR.W           R11, [R5,R0,LSL#2]
1B426A:  LDR             R0, [SP,#0x68+var_48]
1B426C:  STR.W           R11, [R5,R0,LSL#2]
1B4270:  LDR             R0, [SP,#0x68+var_44]
1B4272:  STR.W           R11, [R5,#0xC]
1B4276:  STR.W           R11, [R5,R1,LSL#2]
1B427A:  MOV             R1, R5; unsigned int *
1B427C:  STR.W           R11, [R5,R0,LSL#2]
1B4280:  LDR             R0, [SP,#0x68+var_40]
1B4282:  STR.W           R11, [R5,R0,LSL#2]
1B4286:  LDR             R0, [R7,#arg_0]
1B4288:  CMP             R0, #0
1B428A:  MOV             R3, R0
1B428C:  MOV             R0, R6; unsigned __int8 *
1B428E:  IT NE
1B4290:  MOVNE           R3, #1; bool
1B4292:  BLX             j__Z19DecodeDXTColorBlockPKhPjjb; DecodeDXTColorBlock(uchar const*,uint *,uint,bool)
1B4296:  ADDS            R4, #1
1B4298:  LDR             R1, [SP,#0x68+var_2C]
1B429A:  MOV             R0, R4
1B429C:  BLX             __aeabi_uidivmod
1B42A0:  MOV             R3, R10
1B42A2:  CMP             R1, #0
1B42A4:  ADD.W           R5, R5, #0x10
1B42A8:  LDR             R1, [SP,#0x68+var_34]
1B42AA:  IT EQ
1B42AC:  ADDEQ.W         R5, R5, R3,LSL#2
1B42B0:  LDR             R0, [SP,#0x68+var_30]
1B42B2:  ADDS            R6, #8
1B42B4:  MOV             R10, R9
1B42B6:  CMP             R0, R4
1B42B8:  BNE             loc_1B422E
1B42BA:  B               loc_1B4658
1B42BC:  CMP             R0, #0
1B42BE:  BEQ.W           loc_1B4658
1B42C2:  ADDS            R0, R1, #3
1B42C4:  STR             R0, [SP,#0x68+var_40]
1B42C6:  ADDS            R0, R1, #2
1B42C8:  STR             R0, [SP,#0x68+var_44]
1B42CA:  ADDS            R0, R1, #1
1B42CC:  STR             R0, [SP,#0x68+var_48]
1B42CE:  ADDS            R0, R2, #3
1B42D0:  STR             R0, [SP,#0x68+var_4C]
1B42D2:  ADDS            R0, R2, #2
1B42D4:  LDR             R5, [SP,#0x68+var_68]
1B42D6:  STR             R0, [SP,#0x68+var_50]
1B42D8:  ORR.W           R0, R2, #1
1B42DC:  ADD.W           R9, SP, #0x68+var_28
1B42E0:  STR             R0, [SP,#0x68+var_54]
1B42E2:  ADD.W           R0, R10, #2
1B42E6:  MOV.W           R11, #0
1B42EA:  STR             R0, [SP,#0x68+var_58]
1B42EC:  ADD.W           R0, R10, #1
1B42F0:  STR             R0, [SP,#0x68+var_5C]
1B42F2:  STR.W           R10, [SP,#0x68+var_60]
1B42F6:  LDRB            R0, [R6]
1B42F8:  STRB.W          R0, [SP,#0x68+var_28]
1B42FC:  LDRB            R1, [R6,#1]
1B42FE:  STRB.W          R1, [SP,#0x68+var_27]
1B4302:  CMP             R0, R1
1B4304:  BLS             loc_1B43A2
1B4306:  ADD.W           R2, R0, R0,LSL#2
1B430A:  MOV             R3, #0x24924925
1B4312:  ADD.W           R2, R2, R1,LSL#1
1B4316:  MOV             R10, R3
1B4318:  ADD.W           LR, R1, R1,LSL#1
1B431C:  UMULL.W         R3, R4, R2, R10
1B4320:  SUB.W           R12, R2, R4
1B4324:  ADD.W           R2, LR, R0,LSL#2
1B4328:  UMULL.W         R3, R8, R2, R10
1B432C:  ADD.W           R3, R4, R12,LSR#1
1B4330:  LSRS            R3, R3, #2
1B4332:  STRB.W          R3, [SP,#0x68+var_25]
1B4336:  ADD.W           R3, R0, R0,LSL#1
1B433A:  SUB.W           R2, R2, R8
1B433E:  ADD.W           R4, R3, R1,LSL#2
1B4342:  ADD.W           R2, R8, R2,LSR#1
1B4346:  MOV.W           R12, R2,LSR#2
1B434A:  UMULL.W         R2, R8, R4, R10
1B434E:  STRB.W          R12, [SP,#0x68+var_24]
1B4352:  SUB.W           R12, R4, R8
1B4356:  ADD.W           R4, R1, R1,LSL#2
1B435A:  ADD.W           R1, R1, R3,LSL#1
1B435E:  ADD.W           R4, R4, R0,LSL#1
1B4362:  ADD.W           R0, R0, LR,LSL#1
1B4366:  UMULL.W         R3, R2, R1, R10
1B436A:  UMULL.W         R3, LR, R0, R10
1B436E:  SUBS            R1, R1, R2
1B4370:  UMULL.W         R3, R10, R4, R10
1B4374:  ADD.W           R3, R8, R12,LSR#1
1B4378:  SUB.W           R0, R0, LR
1B437C:  LSRS            R3, R3, #2
1B437E:  ADD.W           R1, R2, R1,LSR#1
1B4382:  STRB.W          R3, [SP,#0x68+var_23]
1B4386:  ADD.W           R0, LR, R0,LSR#1
1B438A:  SUB.W           R3, R4, R10
1B438E:  LSRS            R1, R1, #2
1B4390:  LSRS            R0, R0, #2
1B4392:  ADD.W           R3, R10, R3,LSR#1
1B4396:  LSRS            R3, R3, #2
1B4398:  STRB.W          R3, [SP,#0x68+var_22]
1B439C:  STRB.W          R1, [SP,#0x68+var_26]
1B43A0:  B               loc_1B4412
1B43A2:  MOVW            R12, #0x4925
1B43A6:  ADD.W           R2, R1, R0,LSL#2
1B43AA:  MOVT            R12, #0x2492
1B43AE:  ADD.W           LR, R1, R1,LSL#1
1B43B2:  UMULL.W         R3, R4, R2, R12
1B43B6:  ADD.W           R10, LR, R0,LSL#1
1B43BA:  MOVS            R3, #0
1B43BC:  STRB.W          R3, [SP,#0x68+var_22]
1B43C0:  ADD.W           R3, R0, R1,LSL#2
1B43C4:  SUBS            R2, R2, R4
1B43C6:  STR             R2, [SP,#0x68+var_64]
1B43C8:  ADD.W           R2, R0, R0,LSL#1
1B43CC:  ADD.W           R8, R2, R1,LSL#1
1B43D0:  UMULL.W         R1, LR, R10, R12
1B43D4:  UMULL.W         R1, R2, R8, R12
1B43D8:  UMULL.W         R1, R0, R3, R12
1B43DC:  LDR             R1, [SP,#0x68+var_64]
1B43DE:  ADD.W           R1, R4, R1,LSR#1
1B43E2:  LSRS            R1, R1, #2
1B43E4:  STRB.W          R1, [SP,#0x68+var_26]
1B43E8:  SUBS            R1, R3, R0
1B43EA:  ADD.W           R0, R0, R1,LSR#1
1B43EE:  LSRS            R0, R0, #2
1B43F0:  STRB.W          R0, [SP,#0x68+var_23]
1B43F4:  SUB.W           R0, R8, R2
1B43F8:  ADD.W           R0, R2, R0,LSR#1
1B43FC:  LSRS            R0, R0, #2
1B43FE:  STRB.W          R0, [SP,#0x68+var_25]
1B4402:  SUB.W           R0, R10, LR
1B4406:  ADD.W           R0, LR, R0,LSR#1
1B440A:  LSRS            R0, R0, #2
1B440C:  STRB.W          R0, [SP,#0x68+var_24]
1B4410:  MOVS            R0, #0xFF
1B4412:  STRB.W          R0, [SP,#0x68+var_21]
1B4416:  MOVS            R3, #4
1B4418:  LDRB            R0, [R6,#2]
1B441A:  MOV.W           R12, #6
1B441E:  AND.W           R1, R0, #7
1B4422:  LDRB.W          R1, [R9,R1]
1B4426:  LSLS            R1, R1, #0x18
1B4428:  STR             R1, [R5]
1B442A:  UBFX.W          R1, R0, #3, #3
1B442E:  LDRB.W          R1, [R9,R1]
1B4432:  LSLS            R1, R1, #0x18
1B4434:  STR             R1, [R5,#4]
1B4436:  LDRB            R1, [R6,#3]
1B4438:  AND.W           R2, R3, R1,LSL#2
1B443C:  ORR.W           R0, R2, R0,LSR#6
1B4440:  LDRB.W          R0, [R9,R0]
1B4444:  LSLS            R0, R0, #0x18
1B4446:  STR             R0, [R5,#8]
1B4448:  UBFX.W          R0, R1, #1, #3
1B444C:  LDRB.W          R0, [R9,R0]
1B4450:  LSLS            R0, R0, #0x18
1B4452:  STR             R0, [R5,#0xC]
1B4454:  UBFX.W          R0, R1, #4, #3
1B4458:  LDR.W           R10, [SP,#0x68+var_60]
1B445C:  LDRB.W          R0, [R9,R0]
1B4460:  LSLS            R0, R0, #0x18
1B4462:  STR.W           R0, [R5,R10,LSL#2]
1B4466:  LDRB            R0, [R6,#4]
1B4468:  AND.W           R2, R12, R0,LSL#1
1B446C:  ORR.W           R1, R2, R1,LSR#7
1B4470:  LDR             R2, [SP,#0x68+var_5C]
1B4472:  LDRB.W          R1, [R9,R1]
1B4476:  LSLS            R1, R1, #0x18
1B4478:  STR.W           R1, [R5,R2,LSL#2]
1B447C:  UBFX.W          R1, R0, #2, #3
1B4480:  LSRS            R0, R0, #5
1B4482:  LDRB.W          R1, [R9,R1]
1B4486:  LDR             R2, [SP,#0x68+var_58]
1B4488:  LDRB.W          R0, [R9,R0]
1B448C:  LSLS            R1, R1, #0x18
1B448E:  STR.W           R1, [R5,R2,LSL#2]
1B4492:  LSLS            R0, R0, #0x18
1B4494:  LDR             R1, [SP,#0x68+var_34]
1B4496:  LDR             R2, [SP,#0x68+var_3C]
1B4498:  STR.W           R0, [R5,R1,LSL#2]
1B449C:  LDRB            R0, [R6,#5]
1B449E:  AND.W           R1, R0, #7
1B44A2:  LDRB.W          R1, [R9,R1]
1B44A6:  LSLS            R1, R1, #0x18
1B44A8:  STR.W           R1, [R5,R2,LSL#2]
1B44AC:  UBFX.W          R1, R0, #3, #3
1B44B0:  LDRB.W          R1, [R9,R1]
1B44B4:  LDR             R2, [SP,#0x68+var_54]
1B44B6:  LSLS            R1, R1, #0x18
1B44B8:  STR.W           R1, [R5,R2,LSL#2]
1B44BC:  LDRB            R1, [R6,#6]
1B44BE:  AND.W           R2, R3, R1,LSL#2
1B44C2:  MOVS            R3, #0; bool
1B44C4:  ORR.W           R0, R2, R0,LSR#6
1B44C8:  LDR             R2, [SP,#0x68+var_50]
1B44CA:  LDRB.W          R0, [R9,R0]
1B44CE:  LSLS            R0, R0, #0x18
1B44D0:  STR.W           R0, [R5,R2,LSL#2]
1B44D4:  UBFX.W          R0, R1, #1, #3
1B44D8:  LDRB.W          R0, [R9,R0]
1B44DC:  LDR             R2, [SP,#0x68+var_4C]
1B44DE:  LSLS            R0, R0, #0x18
1B44E0:  STR.W           R0, [R5,R2,LSL#2]
1B44E4:  UBFX.W          R0, R1, #4, #3
1B44E8:  LDRB.W          R0, [R9,R0]
1B44EC:  LDR             R4, [SP,#0x68+var_38]
1B44EE:  LSLS            R0, R0, #0x18
1B44F0:  STR.W           R0, [R5,R4,LSL#2]
1B44F4:  LDRB            R0, [R6,#7]
1B44F6:  AND.W           R2, R12, R0,LSL#1
1B44FA:  ORR.W           R1, R2, R1,LSR#7
1B44FE:  LDR             R2, [SP,#0x68+var_48]
1B4500:  LDRB.W          R1, [R9,R1]
1B4504:  LSLS            R1, R1, #0x18
1B4506:  STR.W           R1, [R5,R2,LSL#2]
1B450A:  UBFX.W          R1, R0, #2, #3
1B450E:  LSRS            R0, R0, #5
1B4510:  LDRB.W          R1, [R9,R1]
1B4514:  LDR             R2, [SP,#0x68+var_44]
1B4516:  LDRB.W          R0, [R9,R0]
1B451A:  LSLS            R1, R1, #0x18
1B451C:  STR.W           R1, [R5,R2,LSL#2]
1B4520:  MOV             R2, R10; unsigned int
1B4522:  LSLS            R0, R0, #0x18
1B4524:  LDR             R1, [SP,#0x68+var_40]
1B4526:  STR.W           R0, [R5,R1,LSL#2]
1B452A:  ADD.W           R0, R6, #8; unsigned __int8 *
1B452E:  MOV             R1, R5; unsigned int *
1B4530:  BLX             j__Z19DecodeDXTColorBlockPKhPjjb; DecodeDXTColorBlock(uchar const*,uint *,uint,bool)
1B4534:  ADD.W           R11, R11, #1
1B4538:  LDR             R1, [SP,#0x68+var_2C]
1B453A:  MOV             R0, R11
1B453C:  BLX             __aeabi_uidivmod
1B4540:  ADDS            R5, #0x10
1B4542:  CMP             R1, #0
1B4544:  IT EQ
1B4546:  ADDEQ.W         R5, R5, R4,LSL#2
1B454A:  LDR             R0, [SP,#0x68+var_30]
1B454C:  ADDS            R6, #0x10
1B454E:  CMP             R0, R11
1B4550:  BNE.W           loc_1B42F6
1B4554:  B               loc_1B4658
1B4556:  LDR.W           R11, [SP,#0x68+var_34]
1B455A:  CMP             R0, #0
1B455C:  LDRD.W          R9, R8, [SP,#0x68+var_3C]
1B4560:  BEQ             loc_1B4658
1B4562:  ADD.W           R0, R8, #3
1B4566:  STR             R0, [SP,#0x68+var_40]
1B4568:  ADD.W           R0, R8, #2
1B456C:  STR             R0, [SP,#0x68+var_44]
1B456E:  ADD.W           R0, R8, #1
1B4572:  STR             R0, [SP,#0x68+var_48]
1B4574:  ADD.W           R0, R9, #3
1B4578:  STR             R0, [SP,#0x68+var_4C]
1B457A:  ADD.W           R0, R9, #2
1B457E:  LDR             R5, [SP,#0x68+var_68]
1B4580:  STR             R0, [SP,#0x68+var_50]
1B4582:  ORR.W           R0, R9, #1
1B4586:  STR             R0, [SP,#0x68+var_54]
1B4588:  ADD.W           R0, R10, #2
1B458C:  MOVS            R4, #0
1B458E:  STR             R0, [SP,#0x68+var_58]
1B4590:  ADD.W           R0, R10, #1
1B4594:  STR             R0, [SP,#0x68+var_5C]
1B4596:  LDRB            R0, [R6]
1B4598:  LDRB            R2, [R6,#1]
1B459A:  LSLS            R1, R0, #0x1C
1B459C:  AND.W           R0, R0, #0xF0
1B45A0:  LSLS            R3, R2, #0x1C
1B45A2:  AND.W           R2, R2, #0xF0
1B45A6:  LSLS            R0, R0, #0x18
1B45A8:  LSLS            R2, R2, #0x18
1B45AA:  STRD.W          R1, R0, [R5]
1B45AE:  STRD.W          R3, R2, [R5,#8]
1B45B2:  MOVS            R3, #0; bool
1B45B4:  LDRB            R0, [R6,#2]
1B45B6:  LDR             R2, [SP,#0x68+var_58]
1B45B8:  LSLS            R1, R0, #0x1C
1B45BA:  AND.W           R0, R0, #0xF0
1B45BE:  STR.W           R1, [R5,R10,LSL#2]
1B45C2:  LSLS            R0, R0, #0x18
1B45C4:  LDR             R1, [SP,#0x68+var_5C]
1B45C6:  STR.W           R0, [R5,R1,LSL#2]
1B45CA:  LDRB            R0, [R6,#3]
1B45CC:  LSLS            R1, R0, #0x1C
1B45CE:  AND.W           R0, R0, #0xF0
1B45D2:  STR.W           R1, [R5,R2,LSL#2]
1B45D6:  LSLS            R0, R0, #0x18
1B45D8:  STR.W           R0, [R5,R11,LSL#2]
1B45DC:  LDRB            R0, [R6,#4]
1B45DE:  LDR             R2, [SP,#0x68+var_50]
1B45E0:  LSLS            R1, R0, #0x1C
1B45E2:  AND.W           R0, R0, #0xF0
1B45E6:  STR.W           R1, [R5,R9,LSL#2]
1B45EA:  LSLS            R0, R0, #0x18
1B45EC:  LDR             R1, [SP,#0x68+var_54]
1B45EE:  STR.W           R0, [R5,R1,LSL#2]
1B45F2:  LDRB            R0, [R6,#5]
1B45F4:  LSLS            R1, R0, #0x1C
1B45F6:  AND.W           R0, R0, #0xF0
1B45FA:  STR.W           R1, [R5,R2,LSL#2]
1B45FE:  LSLS            R0, R0, #0x18
1B4600:  LDR             R1, [SP,#0x68+var_4C]
1B4602:  LDR             R2, [SP,#0x68+var_44]
1B4604:  STR.W           R0, [R5,R1,LSL#2]
1B4608:  LDRB            R0, [R6,#6]
1B460A:  LSLS            R1, R0, #0x1C
1B460C:  AND.W           R0, R0, #0xF0
1B4610:  STR.W           R1, [R5,R8,LSL#2]
1B4614:  LSLS            R0, R0, #0x18
1B4616:  LDR             R1, [SP,#0x68+var_48]
1B4618:  STR.W           R0, [R5,R1,LSL#2]
1B461C:  LDRB            R0, [R6,#7]
1B461E:  LSLS            R1, R0, #0x1C
1B4620:  AND.W           R0, R0, #0xF0
1B4624:  STR.W           R1, [R5,R2,LSL#2]
1B4628:  MOV             R2, R10; unsigned int
1B462A:  LSLS            R0, R0, #0x18
1B462C:  LDR             R1, [SP,#0x68+var_40]
1B462E:  STR.W           R0, [R5,R1,LSL#2]
1B4632:  ADD.W           R0, R6, #8; unsigned __int8 *
1B4636:  MOV             R1, R5; unsigned int *
1B4638:  BLX             j__Z19DecodeDXTColorBlockPKhPjjb; DecodeDXTColorBlock(uchar const*,uint *,uint,bool)
1B463C:  ADDS            R4, #1
1B463E:  LDR             R1, [SP,#0x68+var_2C]
1B4640:  MOV             R0, R4
1B4642:  BLX             __aeabi_uidivmod
1B4646:  ADDS            R5, #0x10
1B4648:  CMP             R1, #0
1B464A:  IT EQ
1B464C:  ADDEQ.W         R5, R5, R8,LSL#2
1B4650:  LDR             R0, [SP,#0x68+var_30]
1B4652:  ADDS            R6, #0x10
1B4654:  CMP             R0, R4
1B4656:  BNE             loc_1B4596
1B4658:  LDR.W           R8, [SP,#0x68+var_68]
1B465C:  LDR             R0, =(__stack_chk_guard_ptr - 0x1B4664)
1B465E:  LDR             R1, [SP,#0x68+var_20]
1B4660:  ADD             R0, PC; __stack_chk_guard_ptr
1B4662:  LDR             R0, [R0]; __stack_chk_guard
1B4664:  LDR             R0, [R0]
1B4666:  SUBS            R0, R0, R1
1B4668:  ITTTT EQ
1B466A:  MOVEQ           R0, R8
1B466C:  ADDEQ           SP, SP, #0x4C ; 'L'
1B466E:  POPEQ.W         {R8-R11}
1B4672:  POPEQ           {R4-R7,PC}
1B4674:  BLX             __stack_chk_fail
