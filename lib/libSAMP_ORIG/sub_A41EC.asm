; =========================================================
; Game Engine Function: sub_A41EC
; Address            : 0xA41EC - 0xA502C
; =========================================================

A41EC:  PUSH            {R4-R7,LR}
A41EE:  ADD             R7, SP, #0xC
A41F0:  PUSH.W          {R8-R11}
A41F4:  SUB             SP, SP, #4
A41F6:  VPUSH           {D8-D15}
A41FA:  SUB             SP, SP, #0x198
A41FC:  MOV             R11, R0
A41FE:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xA420C)
A4202:  ADD.W           R3, R11, #0x40 ; '@'
A4206:  MOV             R8, R1
A4208:  ADD             R0, PC; __stack_chk_guard_ptr
A420A:  MOV             R9, R2
A420C:  LDR             R0, [R0]; __stack_chk_guard
A420E:  LDR             R0, [R0]
A4210:  STR             R0, [SP,#0x1F8+var_64]
A4212:  LDR.W           R0, [R11,#0x58]
A4216:  LDR.W           R1, [R11,#0x60]
A421A:  STRD.W          R1, R0, [SP,#0x1F8+var_1CC]
A421E:  ADD             R0, SP, #0x1F8+var_1B8
A4220:  LDM             R3, {R1-R3}
A4222:  STR.W           R8, [SP,#0x1F8+var_1F8]
A4226:  BL              sub_A3E34
A422A:  LDRD.W          R2, R1, [SP,#0x1F8+var_1B8+4]
A422E:  MOVS            R0, #0
A4230:  CMP             R2, R1
A4232:  BGE.W           loc_A5000
A4236:  ADD             R0, SP, #0x1F8+var_124
A4238:  VLDR            S25, =0.000015259
A423C:  ADDS            R3, R0, #4
A423E:  ADDS            R0, #0xC
A4240:  STR             R0, [SP,#0x1F8+var_1DC]
A4242:  MOVS            R0, #1
A4244:  STR             R0, [SP,#0x1F8+var_1D8]
A4246:  MOVS            R0, #0
A4248:  STR             R0, [SP,#0x1F8+var_1D0]
A424A:  MOVS            R0, #0
A424C:  VLDR            S16, =0.0
A4250:  MOVS            R5, #0
A4252:  STR             R0, [SP,#0x1F8+var_1D4]
A4254:  MOVS            R0, #0
A4256:  STR             R3, [SP,#0x1F8+var_1E4]
A4258:  STR             R0, [SP,#0x1F8+var_1E0]
A425A:  B               loc_A4268
A425C:  MOVS            R5, #0
A425E:  LDRD.W          R2, R1, [SP,#0x1F8+var_1B8+4]
A4262:  CMP             R2, R1
A4264:  BGE.W           def_A4714; jumptable 000A4714 default case
A4268:  LDR             R3, [SP,#0x1F8+var_1B8]
A426A:  ADDS            R0, R2, #1
A426C:  MOV             R4, R5
A426E:  STR             R0, [SP,#0x1F8+var_1B8+4]
A4270:  LDRB.W          R10, [R3,R2]
A4274:  SUB.W           R6, R10, #1; switch 255 cases
A4278:  CMP             R6, #0xFE
A427A:  BHI.W           def_A4282; jumptable 000A4282 default case, cases 2,9,13,15-17,32-254
A427E:  ADR.W           R5, jpt_A4282
A4282:  TBH.W           [R5,R6,LSL#1]; switch jump
A4286:  ALIGN 4
A4288:  DCFS 0.000015259
A428C:  DCFS 0.0
A4290:  DCW 0x107; jump table for switch statement
A4292:  DCW 0x149
A4294:  DCW 0x107
A4296:  DCW 0x169
A4298:  DCW 0x172
A429A:  DCW 0x1E6
A429C:  DCW 0x1EE
A429E:  DCW 0x1F7
A42A0:  DCW 0x149
A42A2:  DCW 0x209
A42A4:  DCW 0x22A
A42A6:  DCW 0x23D
A42A8:  DCW 0x149
A42AA:  DCW 0x6CE
A42AC:  DCW 0x149
A42AE:  DCW 0x149
A42B0:  DCW 0x149
A42B2:  DCW 0x107
A42B4:  DCW 0x10F
A42B6:  DCW 0x10F
A42B8:  DCW 0x275
A42BA:  DCW 0x280
A42BC:  DCW 0x107
A42BE:  DCW 0x28E
A42C0:  DCW 0x2C9
A42C2:  DCW 0x119
A42C4:  DCW 0x119
A42C6:  DCW 0x157
A42C8:  DCW 0x53D
A42CA:  DCW 0x33F
A42CC:  DCW 0x345
A42CE:  DCW 0x149
A42D0:  DCW 0x149
A42D2:  DCW 0x149
A42D4:  DCW 0x149
A42D6:  DCW 0x149
A42D8:  DCW 0x149
A42DA:  DCW 0x149
A42DC:  DCW 0x149
A42DE:  DCW 0x149
A42E0:  DCW 0x149
A42E2:  DCW 0x149
A42E4:  DCW 0x149
A42E6:  DCW 0x149
A42E8:  DCW 0x149
A42EA:  DCW 0x149
A42EC:  DCW 0x149
A42EE:  DCW 0x149
A42F0:  DCW 0x149
A42F2:  DCW 0x149
A42F4:  DCW 0x149
A42F6:  DCW 0x149
A42F8:  DCW 0x149
A42FA:  DCW 0x149
A42FC:  DCW 0x149
A42FE:  DCW 0x149
A4300:  DCW 0x149
A4302:  DCW 0x149
A4304:  DCW 0x149
A4306:  DCW 0x149
A4308:  DCW 0x149
A430A:  DCW 0x149
A430C:  DCW 0x149
A430E:  DCW 0x149
A4310:  DCW 0x149
A4312:  DCW 0x149
A4314:  DCW 0x149
A4316:  DCW 0x149
A4318:  DCW 0x149
A431A:  DCW 0x149
A431C:  DCW 0x149
A431E:  DCW 0x149
A4320:  DCW 0x149
A4322:  DCW 0x149
A4324:  DCW 0x149
A4326:  DCW 0x149
A4328:  DCW 0x149
A432A:  DCW 0x149
A432C:  DCW 0x149
A432E:  DCW 0x149
A4330:  DCW 0x149
A4332:  DCW 0x149
A4334:  DCW 0x149
A4336:  DCW 0x149
A4338:  DCW 0x149
A433A:  DCW 0x149
A433C:  DCW 0x149
A433E:  DCW 0x149
A4340:  DCW 0x149
A4342:  DCW 0x149
A4344:  DCW 0x149
A4346:  DCW 0x149
A4348:  DCW 0x149
A434A:  DCW 0x149
A434C:  DCW 0x149
A434E:  DCW 0x149
A4350:  DCW 0x149
A4352:  DCW 0x149
A4354:  DCW 0x149
A4356:  DCW 0x149
A4358:  DCW 0x149
A435A:  DCW 0x149
A435C:  DCW 0x149
A435E:  DCW 0x149
A4360:  DCW 0x149
A4362:  DCW 0x149
A4364:  DCW 0x149
A4366:  DCW 0x149
A4368:  DCW 0x149
A436A:  DCW 0x149
A436C:  DCW 0x149
A436E:  DCW 0x149
A4370:  DCW 0x149
A4372:  DCW 0x149
A4374:  DCW 0x149
A4376:  DCW 0x149
A4378:  DCW 0x149
A437A:  DCW 0x149
A437C:  DCW 0x149
A437E:  DCW 0x149
A4380:  DCW 0x149
A4382:  DCW 0x149
A4384:  DCW 0x149
A4386:  DCW 0x149
A4388:  DCW 0x149
A438A:  DCW 0x149
A438C:  DCW 0x149
A438E:  DCW 0x149
A4390:  DCW 0x149
A4392:  DCW 0x149
A4394:  DCW 0x149
A4396:  DCW 0x149
A4398:  DCW 0x149
A439A:  DCW 0x149
A439C:  DCW 0x149
A439E:  DCW 0x149
A43A0:  DCW 0x149
A43A2:  DCW 0x149
A43A4:  DCW 0x149
A43A6:  DCW 0x149
A43A8:  DCW 0x149
A43AA:  DCW 0x149
A43AC:  DCW 0x149
A43AE:  DCW 0x149
A43B0:  DCW 0x149
A43B2:  DCW 0x149
A43B4:  DCW 0x149
A43B6:  DCW 0x149
A43B8:  DCW 0x149
A43BA:  DCW 0x149
A43BC:  DCW 0x149
A43BE:  DCW 0x149
A43C0:  DCW 0x149
A43C2:  DCW 0x149
A43C4:  DCW 0x149
A43C6:  DCW 0x149
A43C8:  DCW 0x149
A43CA:  DCW 0x149
A43CC:  DCW 0x149
A43CE:  DCW 0x149
A43D0:  DCW 0x149
A43D2:  DCW 0x149
A43D4:  DCW 0x149
A43D6:  DCW 0x149
A43D8:  DCW 0x149
A43DA:  DCW 0x149
A43DC:  DCW 0x149
A43DE:  DCW 0x149
A43E0:  DCW 0x149
A43E2:  DCW 0x149
A43E4:  DCW 0x149
A43E6:  DCW 0x149
A43E8:  DCW 0x149
A43EA:  DCW 0x149
A43EC:  DCW 0x149
A43EE:  DCW 0x149
A43F0:  DCW 0x149
A43F2:  DCW 0x149
A43F4:  DCW 0x149
A43F6:  DCW 0x149
A43F8:  DCW 0x149
A43FA:  DCW 0x149
A43FC:  DCW 0x149
A43FE:  DCW 0x149
A4400:  DCW 0x149
A4402:  DCW 0x149
A4404:  DCW 0x149
A4406:  DCW 0x149
A4408:  DCW 0x149
A440A:  DCW 0x149
A440C:  DCW 0x149
A440E:  DCW 0x149
A4410:  DCW 0x149
A4412:  DCW 0x149
A4414:  DCW 0x149
A4416:  DCW 0x149
A4418:  DCW 0x149
A441A:  DCW 0x149
A441C:  DCW 0x149
A441E:  DCW 0x149
A4420:  DCW 0x149
A4422:  DCW 0x149
A4424:  DCW 0x149
A4426:  DCW 0x149
A4428:  DCW 0x149
A442A:  DCW 0x149
A442C:  DCW 0x149
A442E:  DCW 0x149
A4430:  DCW 0x149
A4432:  DCW 0x149
A4434:  DCW 0x149
A4436:  DCW 0x149
A4438:  DCW 0x149
A443A:  DCW 0x149
A443C:  DCW 0x149
A443E:  DCW 0x149
A4440:  DCW 0x149
A4442:  DCW 0x149
A4444:  DCW 0x149
A4446:  DCW 0x149
A4448:  DCW 0x149
A444A:  DCW 0x149
A444C:  DCW 0x149
A444E:  DCW 0x149
A4450:  DCW 0x149
A4452:  DCW 0x149
A4454:  DCW 0x149
A4456:  DCW 0x149
A4458:  DCW 0x149
A445A:  DCW 0x149
A445C:  DCW 0x149
A445E:  DCW 0x149
A4460:  DCW 0x149
A4462:  DCW 0x149
A4464:  DCW 0x149
A4466:  DCW 0x149
A4468:  DCW 0x149
A446A:  DCW 0x149
A446C:  DCW 0x149
A446E:  DCW 0x149
A4470:  DCW 0x149
A4472:  DCW 0x149
A4474:  DCW 0x149
A4476:  DCW 0x149
A4478:  DCW 0x149
A447A:  DCW 0x149
A447C:  DCW 0x149
A447E:  DCW 0x149
A4480:  DCW 0x149
A4482:  DCW 0x149
A4484:  DCW 0x149
A4486:  DCW 0x149
A4488:  DCW 0x149
A448A:  DCW 0x149
A448C:  DCW 0x150
A448E:  ALIGN 0x10
A4490:  DCD __stack_chk_guard_ptr - 0xA420C
A4494:  ADD.W           R0, R4, R4,LSR#31; jumptable 000A4282 cases 1,3,18,23
A4498:  LDR             R1, [SP,#0x1F8+var_1D0]
A449A:  MOVS            R5, #0
A449C:  ADD.W           R1, R1, R0,ASR#1
A44A0:  STR             R1, [SP,#0x1F8+var_1D0]
A44A2:  B               loc_A425E
A44A4:  LDR             R2, [SP,#0x1F8+var_1D8]; jumptable 000A4282 cases 19,20
A44A6:  CMP             R2, #0
A44A8:  BEQ.W           loc_A4934
A44AC:  ADD.W           R2, R4, R4,LSR#31
A44B0:  LDR             R3, [SP,#0x1F8+var_1D0]
A44B2:  ADD.W           R2, R3, R2,ASR#1
A44B6:  B               loc_A4936
A44B8:  CMP             R4, #4; jumptable 000A4282 cases 26,27
A44BA:  BLT.W           def_A4714; jumptable 000A4714 default case
A44BE:  VLDR            S1, [SP,#0x1F8+var_124]
A44C2:  ANDS.W          R6, R4, #1
A44C6:  MOV.W           R0, #4
A44CA:  IT EQ
A44CC:  VMOVEQ.F32      S1, S16
A44D0:  IT EQ
A44D2:  MOVEQ           R0, #3
A44D4:  CMP             R0, R4
A44D6:  MOV             R1, R4
A44D8:  BCS.W           loc_A425C
A44DC:  ADD             R3, SP, #0x1F8+var_124
A44DE:  MOVS            R1, #8
A44E0:  ADD.W           R0, R3, R0,LSL#2
A44E4:  CMP             R6, #0
A44E6:  IT EQ
A44E8:  MOVEQ           R1, #4
A44EA:  ADD.W           R2, R3, R6,LSL#2
A44EE:  VLDR            S5, [R0]
A44F2:  ADDS            R0, R3, R1
A44F4:  VLDR            S4, [R2]
A44F8:  CMP.W           R10, #0x1B
A44FC:  VLDR            S2, [R0]
A4500:  MOV             R0, R9
A4502:  VLDR            S3, [R2,#8]
A4506:  BNE.W           loc_A49C0
A450A:  VMOV.F32        S0, S4
A450E:  VMOV.F32        S4, S5
A4512:  VMOV.F32        S5, S16
A4516:  B               loc_A49CC
A4518:  CMP.W           R10, #0x20 ; ' '; jumptable 000A4282 default case, cases 2,9,13,15-17,32-254
A451C:  BCC.W           def_A4714; jumptable 000A4714 default case
A4520:  CMP.W           R10, #0xFF
A4524:  BNE             loc_A4534; jumptable 000A4282 case 28
A4526:  CMP             R0, R1; jumptable 000A4282 case 255
A4528:  BGE.W           loc_A4960
A452C:  LDRB.W          R12, [R3,R0]
A4530:  ADDS            R0, R2, #2
A4532:  B               loc_A4964
A4534:  MOV             R0, R2; jumptable 000A4282 case 28
A4536:  CMP             R1, R2
A4538:  IT LT
A453A:  MOVLT           R0, R1
A453C:  CMP             R2, #0
A453E:  IT MI
A4540:  MOVMI           R0, R1
A4542:  STR             R0, [SP,#0x1F8+var_1B8+4]
A4544:  ADD             R0, SP, #0x1F8+var_1B8
A4546:  BL              sub_A40F8
A454A:  SXTH            R0, R0
A454C:  MOV             R5, R4
A454E:  VMOV            S0, R0
A4552:  VCVT.F32.S32    S0, S0
A4556:  B               loc_A49AA
A4558:  CMP             R4, #1; jumptable 000A4282 case 4
A455A:  BLT.W           def_A4714; jumptable 000A4714 default case
A455E:  VMOV.F32        S0, S16
A4562:  ADD             R0, SP, #0x1F8+var_124
A4564:  ADD.W           R0, R0, R4,LSL#2
A4568:  B               loc_A4780
A456A:  CMP             R4, #2; jumptable 000A4282 case 5
A456C:  BLT.W           def_A4714; jumptable 000A4714 default case
A4570:  LDR             R1, [SP,#0x1F8+var_1E4]
A4572:  MOV             R12, R4
A4574:  MOVS            R0, #1
A4576:  B               loc_A45A6
A4578:  LDRD.W          R5, R6, [R9,#0x28]
A457C:  RSB.W           R4, R6, R6,LSL#3
A4580:  STRH.W          R3, [R5,R4,LSL#1]
A4584:  ADD.W           R3, R5, R4,LSL#1
A4588:  MOVS            R5, #0
A458A:  STR             R5, [R3,#8]
A458C:  STR             R5, [R3,#4]
A458E:  MOVS            R5, #2
A4590:  STRB            R5, [R3,#0xC]
A4592:  STRH            R2, [R3,#2]
A4594:  ADDS            R0, #2
A4596:  ADDS            R1, #8
A4598:  CMP             R0, R12
A459A:  ADD.W           R2, R6, #1
A459E:  STR.W           R2, [R9,#0x2C]
A45A2:  BGE.W           loc_A425C
A45A6:  VLDR            S0, [R1,#-4]
A45AA:  VLDR            S4, [R9,#0x10]
A45AE:  VLDR            S2, [R1]
A45B2:  VLDR            S6, [R9,#0x14]
A45B6:  VADD.F32        S0, S0, S4
A45BA:  LDR.W           R6, [R9]
A45BE:  VADD.F32        S2, S2, S6
A45C2:  CMP             R6, #0
A45C4:  VCVT.S32.F32    S6, S0
A45C8:  VSTR            S0, [R9,#0x10]
A45CC:  VCVT.S32.F32    S4, S2
A45D0:  VSTR            S2, [R9,#0x14]
A45D4:  VMOV            R3, S6
A45D8:  VMOV            R2, S4
A45DC:  BEQ             loc_A4578
A45DE:  LDR.W           R6, [R9,#0x1C]
A45E2:  CMP             R6, R3
A45E4:  BGE             loc_A45EC
A45E6:  STR.W           R3, [R9,#0x1C]
A45EA:  B               loc_A45F8
A45EC:  LDR.W           R6, [R9,#4]
A45F0:  CMP             R6, #0
A45F2:  IT EQ
A45F4:  STREQ.W         R3, [R9,#0x1C]
A45F8:  LDR.W           R6, [R9,#0x24]
A45FC:  CMP             R6, R2
A45FE:  BGE             loc_A4606
A4600:  STR.W           R2, [R9,#0x24]
A4604:  B               loc_A4612
A4606:  LDR.W           R6, [R9,#4]
A460A:  CMP             R6, #0
A460C:  IT EQ
A460E:  STREQ.W         R2, [R9,#0x24]
A4612:  LDR.W           R6, [R9,#0x18]
A4616:  CMP             R6, R3
A4618:  BLE             loc_A4620
A461A:  STR.W           R3, [R9,#0x18]
A461E:  B               loc_A462C
A4620:  LDR.W           R6, [R9,#4]
A4624:  CMP             R6, #0
A4626:  IT EQ
A4628:  STREQ.W         R3, [R9,#0x18]
A462C:  LDR.W           R3, [R9,#0x20]
A4630:  CMP             R3, R2
A4632:  BLE             loc_A463A
A4634:  STR.W           R2, [R9,#0x20]
A4638:  B               loc_A4646
A463A:  LDR.W           R3, [R9,#4]
A463E:  CMP             R3, #0
A4640:  IT EQ
A4642:  STREQ.W         R2, [R9,#0x20]
A4646:  MOVS            R2, #1
A4648:  LDR.W           R6, [R9,#0x2C]
A464C:  STR.W           R2, [R9,#4]
A4650:  B               loc_A4594
A4652:  MOVS            R0, #0; jumptable 000A4282 case 6
A4654:  CMP             R4, #1
A4656:  BLT.W           loc_A5000
A465A:  CMP             R0, R4
A465C:  BGE.W           loc_A425C
A4660:  B               loc_A4DC8
A4662:  MOVS            R0, #0; jumptable 000A4282 case 7
A4664:  CMP             R4, #1
A4666:  BLT.W           loc_A5000
A466A:  CMP             R0, R4
A466C:  BGE.W           loc_A425C
A4670:  B.W             loc_A4E9E
A4674:  CMP             R4, #6; jumptable 000A4282 case 8
A4676:  BLT.W           def_A4714; jumptable 000A4714 default case
A467A:  LDR             R5, [SP,#0x1F8+var_1DC]
A467C:  MOV             R6, R4
A467E:  MOVS            R4, #5
A4680:  SUB.W           R0, R5, #0xC
A4684:  VLDM            R0, {S0-S5}
A4688:  MOV             R0, R9
A468A:  BL              sub_A50F0
A468E:  ADDS            R4, #6
A4690:  ADDS            R5, #0x18
A4692:  CMP             R4, R6
A4694:  BLT             loc_A4680
A4696:  B               loc_A425C
A4698:  LDR             R0, [SP,#0x1F8+var_1E0]; jumptable 000A4282 case 10
A469A:  CMP             R0, #0
A469C:  BNE.W           loc_A4CFC
A46A0:  LDR.W           R0, [R11,#0x78]
A46A4:  CMP             R0, #0
A46A6:  BEQ.W           loc_A4CFC
A46AA:  LDR.W           LR, [R11,#0x70]
A46AE:  AND.W           R6, R0, R0,ASR#31
A46B2:  CMP             R0, #1
A46B4:  BLT.W           loc_A4C24
A46B8:  LDRB.W          R3, [LR,R6]
A46BC:  ADDS            R2, R6, #1
A46BE:  CMP             R3, #0
A46C0:  BEQ.W           loc_A4C22
A46C4:  CMP             R3, #3
A46C6:  BNE.W           loc_A4CC2
A46CA:  CMP             R2, R0
A46CC:  BGE.W           loc_A4C46
A46D0:  LDRB.W          R2, [LR,R2]
A46D4:  LSLS            R3, R2, #8
A46D6:  ADDS            R2, R6, #2
A46D8:  B               loc_A4C48
A46DA:  LDR             R0, [SP,#0x1F8+var_1D4]; jumptable 000A4282 case 11
A46DC:  CMP             R0, #1
A46DE:  BLT.W           def_A4714; jumptable 000A4714 default case
A46E2:  SUBS            R0, #1
A46E4:  STR             R0, [SP,#0x1F8+var_1D4]
A46E6:  ADD             R1, SP, #0x1F8+var_19C
A46E8:  MOV             R5, R4
A46EA:  ADD.W           R0, R0, R0,LSL#1
A46EE:  ADD.W           R0, R1, R0,LSL#2
A46F2:  VLDR            D16, [R0]
A46F6:  LDR             R0, [R0,#8]
A46F8:  STR             R0, [SP,#0x1F8+var_1B0]
A46FA:  VSTR            D16, [SP,#0x1F8+var_1B8]
A46FE:  B               loc_A425E
A4700:  CMP             R0, R1; jumptable 000A4282 case 12
A4702:  BGE.W           def_A4714; jumptable 000A4714 default case
A4706:  LDRB            R0, [R3,R0]
A4708:  ADDS            R1, R2, #2
A470A:  STR             R1, [SP,#0x1F8+var_1B8+4]
A470C:  SUBS            R0, #0x22 ; '"'; switch 4 cases
A470E:  CMP             R0, #3
A4710:  BHI.W           def_A4714; jumptable 000A4714 default case
A4714:  TBH.W           [PC,R0,LSL#1]; switch jump
A4718:  DCW 4; jump table for switch statement
A471A:  DCW 0x1DD
A471C:  DCW 0x200
A471E:  DCW 0x230
A4720:  CMP             R4, #7; jumptable 000A4714 case 34
A4722:  BLT.W           def_A4714; jumptable 000A4714 default case
A4726:  VLDR            S18, [SP,#0x1F8+var_11C]
A472A:  VMOV.F32        S1, S16
A472E:  VMOV.F32        S5, S16
A4732:  VLDR            S0, [SP,#0x1F8+var_124]
A4736:  VMOV.F32        S3, S18
A473A:  VLDR            S2, [SP,#0x1F8+var_120]
A473E:  VLDR            S4, [SP,#0x1F8+var_118]
A4742:  MOV             R0, R9
A4744:  VLDR            S20, [SP,#0x1F8+var_10C]
A4748:  VLDR            S22, [SP,#0x1F8+var_110]
A474C:  VLDR            S24, [SP,#0x1F8+var_114]
A4750:  BL              sub_A50F0
A4754:  VNEG.F32        S3, S18
A4758:  MOV             R0, R9
A475A:  VMOV.F32        S0, S24
A475E:  VMOV.F32        S1, S16
A4762:  VMOV.F32        S2, S22
A4766:  VMOV.F32        S4, S20
A476A:  VMOV.F32        S5, S16
A476E:  B               loc_A492A
A4770:  CMP             R4, #2; jumptable 000A4282 case 21
A4772:  BLT.W           def_A4714; jumptable 000A4714 default case
A4776:  ADD             R0, SP, #0x1F8+var_124
A4778:  ADD.W           R0, R0, R4,LSL#2
A477C:  VLDR            S0, [R0,#-8]
A4780:  VLDR            S1, [R0,#-4]
A4784:  B               loc_A479A
A4786:  CMP             R4, #1; jumptable 000A4282 case 22
A4788:  BLT.W           def_A4714; jumptable 000A4714 default case
A478C:  ADD             R0, SP, #0x1F8+var_124
A478E:  VMOV.F32        S1, S16
A4792:  ADD.W           R0, R0, R4,LSL#2
A4796:  VLDR            S0, [R0,#-4]
A479A:  MOV             R0, R9
A479C:  BL              sub_A5030
A47A0:  B               loc_A4956
A47A2:  CMP             R4, #8; jumptable 000A4282 case 24
A47A4:  BLT.W           def_A4714; jumptable 000A4714 default case
A47A8:  LDR             R5, [SP,#0x1F8+var_1DC]
A47AA:  MOV             R10, R4
A47AC:  SUBS            R4, #2
A47AE:  MOVS            R6, #5
A47B0:  SUB.W           R0, R5, #0xC
A47B4:  VLDM            R0, {S0-S5}
A47B8:  MOV             R0, R9
A47BA:  BL              sub_A50F0
A47BE:  ADDS            R6, #6
A47C0:  ADDS            R5, #0x18
A47C2:  CMP             R6, R4
A47C4:  BLT             loc_A47B0
A47C6:  SUBS            R0, R6, #4
A47C8:  CMP             R0, R10
A47CA:  BGE.W           def_A4714; jumptable 000A4714 default case
A47CE:  VLDR            S0, [R5,#-0xC]
A47D2:  VLDR            S4, [R9,#0x10]
A47D6:  VLDR            S2, [R5,#-8]
A47DA:  VLDR            S6, [R9,#0x14]
A47DE:  VADD.F32        S0, S0, S4
A47E2:  LDR.W           R2, [R9]
A47E6:  VADD.F32        S2, S2, S6
A47EA:  CMP             R2, #0
A47EC:  VCVT.S32.F32    S6, S0
A47F0:  VSTR            S0, [R9,#0x10]
A47F4:  VCVT.S32.F32    S4, S2
A47F8:  VSTR            S2, [R9,#0x14]
A47FC:  VMOV            R1, S6
A4800:  VMOV            R0, S4
A4804:  BEQ.W           loc_A4A44
A4808:  LDR.W           R2, [R9,#0x1C]
A480C:  CMP             R2, R1
A480E:  BGE.W           loc_A4A62
A4812:  STR.W           R1, [R9,#0x1C]
A4816:  B               loc_A4A6E
A4818:  CMP             R4, #8; jumptable 000A4282 case 25
A481A:  BLT.W           def_A4714; jumptable 000A4714 default case
A481E:  LDR             R0, [SP,#0x1F8+var_1DC]
A4820:  SUB.W           R12, R4, #6
A4824:  MOV             LR, R4
A4826:  MOVS            R2, #5
A4828:  B               loc_A4858
A482A:  LDRD.W          R4, R5, [R9,#0x28]
A482E:  RSB.W           R1, R5, R5,LSL#3
A4832:  STRH.W          R6, [R4,R1,LSL#1]
A4836:  ADD.W           R1, R4, R1,LSL#1
A483A:  MOVS            R6, #0
A483C:  STR             R6, [R1,#8]
A483E:  STR             R6, [R1,#4]
A4840:  MOVS            R6, #2
A4842:  STRB            R6, [R1,#0xC]
A4844:  STRH            R3, [R1,#2]
A4846:  ADDS            R1, R5, #1
A4848:  ADDS            R3, R2, #2
A484A:  STR.W           R1, [R9,#0x2C]
A484E:  SUBS            R1, R2, #2
A4850:  ADDS            R0, #8
A4852:  CMP             R1, R12
A4854:  MOV             R2, R3
A4856:  BGE             loc_A491C
A4858:  VLDR            S0, [R0,#-0xC]
A485C:  VLDR            S4, [R9,#0x10]
A4860:  VLDR            S2, [R0,#-8]
A4864:  VLDR            S6, [R9,#0x14]
A4868:  VADD.F32        S0, S0, S4
A486C:  LDR.W           R5, [R9]
A4870:  VADD.F32        S2, S2, S6
A4874:  CMP             R5, #0
A4876:  VCVT.S32.F32    S6, S0
A487A:  VSTR            S0, [R9,#0x10]
A487E:  VCVT.S32.F32    S4, S2
A4882:  VSTR            S2, [R9,#0x14]
A4886:  VMOV            R6, S6
A488A:  VMOV            R3, S4
A488E:  BEQ             loc_A482A
A4890:  LDR.W           R5, [R9,#0x1C]
A4894:  CMP             R5, R6
A4896:  BGE             loc_A489E
A4898:  STR.W           R6, [R9,#0x1C]
A489C:  B               loc_A48AA
A489E:  LDR.W           R5, [R9,#4]
A48A2:  CMP             R5, #0
A48A4:  IT EQ
A48A6:  STREQ.W         R6, [R9,#0x1C]
A48AA:  LDR.W           R5, [R9,#0x24]
A48AE:  CMP             R5, R3
A48B0:  BGE             loc_A48B8
A48B2:  STR.W           R3, [R9,#0x24]
A48B6:  B               loc_A48C4
A48B8:  LDR.W           R5, [R9,#4]
A48BC:  CMP             R5, #0
A48BE:  IT EQ
A48C0:  STREQ.W         R3, [R9,#0x24]
A48C4:  LDR.W           R5, [R9,#0x18]
A48C8:  CMP             R5, R6
A48CA:  BLE             loc_A48D2
A48CC:  STR.W           R6, [R9,#0x18]
A48D0:  B               loc_A48DE
A48D2:  LDR.W           R5, [R9,#4]
A48D6:  CMP             R5, #0
A48D8:  IT EQ
A48DA:  STREQ.W         R6, [R9,#0x18]
A48DE:  LDR.W           R6, [R9,#0x20]
A48E2:  CMP             R6, R3
A48E4:  BLE             loc_A48EC
A48E6:  STR.W           R3, [R9,#0x20]
A48EA:  B               loc_A48F8
A48EC:  LDR.W           R6, [R9,#4]
A48F0:  CMP             R6, #0
A48F2:  IT EQ
A48F4:  STREQ.W         R3, [R9,#0x20]
A48F8:  MOVS            R1, #1
A48FA:  LDR.W           R5, [R9,#0x2C]
A48FE:  STR.W           R1, [R9,#4]
A4902:  B               loc_A4846
A4904:  MOVS            R0, #0; jumptable 000A4282 case 30
A4906:  MOV             R5, R4
A4908:  CMP             R4, #4
A490A:  BGE.W           loc_A4F78
A490E:  B               loc_A5000
A4910:  MOVS            R0, #0; jumptable 000A4282 case 31
A4912:  MOV             R5, R4
A4914:  CMP             R4, #4
A4916:  BGE.W           loc_A4FB6
A491A:  B               loc_A5000
A491C:  CMP             R3, LR
A491E:  BGE.W           def_A4714; jumptable 000A4714 default case
A4922:  SUBS            R0, #0xC
A4924:  VLDM            R0, {S0-S5}
A4928:  MOV             R0, R9
A492A:  BL              sub_A50F0
A492E:  MOVS            R5, #0
A4930:  B.W             loc_A425E
A4934:  LDR             R2, [SP,#0x1F8+var_1D0]
A4936:  MOV             R3, R2
A4938:  STR             R2, [SP,#0x1F8+var_1D0]
A493A:  ADDS            R2, #7
A493C:  ASRS            R3, R2, #0x1F
A493E:  ADD.W           R2, R2, R3,LSR#29
A4942:  ADD.W           R0, R0, R2,ASR#3
A4946:  CMP             R1, R0
A4948:  MOV             R2, R0
A494A:  IT LT
A494C:  MOVLT           R2, R1
A494E:  CMP             R0, #0
A4950:  IT MI
A4952:  MOVMI           R2, R1
A4954:  STR             R2, [SP,#0x1F8+var_1B8+4]
A4956:  MOVS            R0, #0
A4958:  MOVS            R5, #0
A495A:  STR             R0, [SP,#0x1F8+var_1D8]
A495C:  B.W             loc_A425E
A4960:  MOV.W           R12, #0
A4964:  MOV             R5, R4
A4966:  CMP             R0, R1
A4968:  BGE             loc_A497C
A496A:  LDRB            R2, [R3,R0]
A496C:  ADDS            R0, #1
A496E:  CMP             R0, R1
A4970:  BLT             loc_A4982
A4972:  MOVS            R6, #0
A4974:  CMP             R0, R1
A4976:  BLT             loc_A498A
A4978:  MOVS            R1, #0
A497A:  B               loc_A498E
A497C:  MOVS            R2, #0
A497E:  CMP             R0, R1
A4980:  BGE             loc_A4972
A4982:  LDRB            R6, [R3,R0]
A4984:  ADDS            R0, #1
A4986:  CMP             R0, R1
A4988:  BGE             loc_A4978
A498A:  LDRB            R1, [R3,R0]
A498C:  ADDS            R0, #1
A498E:  MOV.W           R3, R12,LSL#16
A4992:  ORR.W           R2, R3, R2,LSL#8
A4996:  ORRS            R2, R6
A4998:  STR             R0, [SP,#0x1F8+var_1B8+4]
A499A:  LSLS            R2, R2, #8
A499C:  ORRS            R1, R2
A499E:  VMOV            S0, R1
A49A2:  VCVT.F32.S32    S0, S0
A49A6:  VMUL.F32        S0, S0, S25
A49AA:  CMP             R5, #0x2F ; '/'
A49AC:  BGT.W           def_A4714; jumptable 000A4714 default case
A49B0:  ADD             R0, SP, #0x1F8+var_124
A49B2:  ADD.W           R0, R0, R5,LSL#2
A49B6:  ADDS            R5, #1
A49B8:  VSTR            S0, [R0]
A49BC:  B.W             loc_A425E
A49C0:  VMOV.F32        S0, S1
A49C4:  VMOV.F32        S1, S4
A49C8:  VMOV.F32        S4, S16
A49CC:  BL              sub_A50F0
A49D0:  CMP             R6, #0
A49D2:  MOV.W           R0, #8
A49D6:  IT EQ
A49D8:  MOVEQ           R0, #7
A49DA:  CMP             R0, R4
A49DC:  BCS.W           loc_A425C
A49E0:  ADDS            R5, R6, #4
A49E2:  LDR             R1, [SP,#0x1F8+var_1E4]
A49E4:  STRD.W          R8, R11, [SP,#0x1F8+var_1EC]
A49E8:  ADD.W           R8, R6, #7
A49EC:  ADD.W           R11, R1, R5,LSL#2
A49F0:  B               loc_A4A0E
A49F2:  VMOV.F32        S0, S16
A49F6:  VMOV.F32        S4, S16
A49FA:  BL              sub_A50F0
A49FE:  ADD.W           R8, R8, #4
A4A02:  ADDS            R0, R5, #7
A4A04:  ADD.W           R11, R11, #0x10
A4A08:  ADDS            R5, #4
A4A0A:  CMP             R8, R4
A4A0C:  BGE             loc_A4A3A
A4A0E:  SUB.W           R1, R11, #4
A4A12:  CMP.W           R10, #0x1B
A4A16:  VLDM            R1, {S1-S3}
A4A1A:  ADD             R1, SP, #0x1F8+var_124
A4A1C:  ADD.W           R0, R1, R0,LSL#2
A4A20:  VLDR            S5, [R0]
A4A24:  MOV             R0, R9
A4A26:  BNE             loc_A49F2
A4A28:  VMOV.F32        S0, S1
A4A2C:  VMOV.F32        S4, S5
A4A30:  VMOV.F32        S1, S16
A4A34:  VMOV.F32        S5, S16
A4A38:  B               loc_A49FA
A4A3A:  MOVS            R5, #0
A4A3C:  LDRD.W          R8, R11, [SP,#0x1F8+var_1EC]
A4A40:  B.W             loc_A425E
A4A44:  LDRD.W          R3, R2, [R9,#0x28]
A4A48:  RSB.W           R6, R2, R2,LSL#3
A4A4C:  STRH.W          R1, [R3,R6,LSL#1]
A4A50:  ADD.W           R1, R3, R6,LSL#1
A4A54:  MOVS            R3, #0
A4A56:  STR             R3, [R1,#8]
A4A58:  STR             R3, [R1,#4]
A4A5A:  MOVS            R3, #2
A4A5C:  STRB            R3, [R1,#0xC]
A4A5E:  STRH            R0, [R1,#2]
A4A60:  B               loc_A4AC6
A4A62:  LDR.W           R2, [R9,#4]
A4A66:  CMP             R2, #0
A4A68:  IT EQ
A4A6A:  STREQ.W         R1, [R9,#0x1C]
A4A6E:  LDR.W           R2, [R9,#0x24]
A4A72:  CMP             R2, R0
A4A74:  BGE             loc_A4A7C
A4A76:  STR.W           R0, [R9,#0x24]
A4A7A:  B               loc_A4A88
A4A7C:  LDR.W           R2, [R9,#4]
A4A80:  CMP             R2, #0
A4A82:  IT EQ
A4A84:  STREQ.W         R0, [R9,#0x24]
A4A88:  LDR.W           R2, [R9,#0x18]
A4A8C:  CMP             R2, R1
A4A8E:  BLE             loc_A4A96
A4A90:  STR.W           R1, [R9,#0x18]
A4A94:  B               loc_A4AA2
A4A96:  LDR.W           R2, [R9,#4]
A4A9A:  CMP             R2, #0
A4A9C:  IT EQ
A4A9E:  STREQ.W         R1, [R9,#0x18]
A4AA2:  LDR.W           R1, [R9,#0x20]
A4AA6:  CMP             R1, R0
A4AA8:  BLE             loc_A4AB0
A4AAA:  STR.W           R0, [R9,#0x20]
A4AAE:  B               loc_A4ABC
A4AB0:  LDR.W           R1, [R9,#4]
A4AB4:  CMP             R1, #0
A4AB6:  IT EQ
A4AB8:  STREQ.W         R0, [R9,#0x20]
A4ABC:  MOVS            R0, #1
A4ABE:  LDR.W           R2, [R9,#0x2C]
A4AC2:  STR.W           R0, [R9,#4]
A4AC6:  ADDS            R0, R2, #1
A4AC8:  STR.W           R0, [R9,#0x2C]
A4ACC:  MOVS            R5, #0
A4ACE:  B.W             loc_A425E
A4AD2:  CMP             R4, #0xD; jumptable 000A4714 case 35
A4AD4:  BLT.W           def_A4714; jumptable 000A4714 default case
A4AD8:  ADD             R0, SP, #0x1F8+var_124
A4ADA:  VLDR            S18, [SP,#0x1F8+var_F8]
A4ADE:  VLDR            S20, [SP,#0x1F8+var_FC]
A4AE2:  VLDM            R0, {S0-S5}
A4AE6:  MOV             R0, R9
A4AE8:  VLDR            S22, [SP,#0x1F8+var_100]
A4AEC:  VLDR            S24, [SP,#0x1F8+var_104]
A4AF0:  VLDR            S26, [SP,#0x1F8+var_108]
A4AF4:  VLDR            S28, [SP,#0x1F8+var_10C]
A4AF8:  BL              sub_A50F0
A4AFC:  MOV             R0, R9
A4AFE:  VMOV.F32        S0, S28
A4B02:  VMOV.F32        S1, S26
A4B06:  VMOV.F32        S2, S24
A4B0A:  VMOV.F32        S3, S22
A4B0E:  VMOV.F32        S4, S20
A4B12:  VMOV.F32        S5, S18
A4B16:  B               loc_A492A
A4B18:  CMP             R4, #9; jumptable 000A4714 case 36
A4B1A:  BLT.W           def_A4714; jumptable 000A4714 default case
A4B1E:  VLDR            S18, [SP,#0x1F8+var_120]
A4B22:  VMOV.F32        S5, S16
A4B26:  VLDR            S20, [SP,#0x1F8+var_118]
A4B2A:  MOV             R0, R9
A4B2C:  VMOV.F32        S1, S18
A4B30:  VLDR            S0, [SP,#0x1F8+var_124]
A4B34:  VMOV.F32        S3, S20
A4B38:  VLDR            S2, [SP,#0x1F8+var_11C]
A4B3C:  VLDR            S4, [SP,#0x1F8+var_114]
A4B40:  VLDR            S22, [SP,#0x1F8+var_104]
A4B44:  VLDR            S24, [SP,#0x1F8+var_10C]
A4B48:  VLDR            S26, [SP,#0x1F8+var_110]
A4B4C:  VLDR            S28, [SP,#0x1F8+var_108]
A4B50:  BL              sub_A50F0
A4B54:  VADD.F32        S0, S18, S20
A4B58:  MOV             R0, R9
A4B5A:  VMOV.F32        S1, S16
A4B5E:  VMOV.F32        S2, S24
A4B62:  VMOV.F32        S3, S28
A4B66:  VMOV.F32        S4, S22
A4B6A:  VADD.F32        S0, S0, S28
A4B6E:  VNEG.F32        S5, S0
A4B72:  VMOV.F32        S0, S26
A4B76:  B               loc_A492A
A4B78:  CMP             R4, #0xB; jumptable 000A4714 case 37
A4B7A:  BLT.W           def_A4714; jumptable 000A4714 default case
A4B7E:  VLDR            S18, [SP,#0x1F8+var_124]
A4B82:  MOV             R0, R9
A4B84:  VLDR            S20, [SP,#0x1F8+var_120]
A4B88:  VLDR            S22, [SP,#0x1F8+var_11C]
A4B8C:  VMOV.F32        S0, S18
A4B90:  VLDR            S24, [SP,#0x1F8+var_118]
A4B94:  VMOV.F32        S1, S20
A4B98:  VLDR            S21, [SP,#0x1F8+var_110]
A4B9C:  VMOV.F32        S2, S22
A4BA0:  VLDR            S23, [SP,#0x1F8+var_114]
A4BA4:  VMOV.F32        S3, S24
A4BA8:  VMOV.F32        S5, S21
A4BAC:  VLDR            S26, [SP,#0x1F8+var_FC]
A4BB0:  VMOV.F32        S4, S23
A4BB4:  VLDR            S28, [SP,#0x1F8+var_104]
A4BB8:  VLDR            S30, [SP,#0x1F8+var_100]
A4BBC:  VLDR            S17, [SP,#0x1F8+var_10C]
A4BC0:  VLDR            S19, [SP,#0x1F8+var_108]
A4BC4:  BL              sub_A50F0
A4BC8:  VADD.F32        S0, S20, S24
A4BCC:  MOV             R0, R9
A4BCE:  VADD.F32        S2, S18, S22
A4BD2:  VMOV.F32        S1, S19
A4BD6:  VMOV.F32        S3, S30
A4BDA:  VADD.F32        S0, S0, S21
A4BDE:  VADD.F32        S2, S2, S23
A4BE2:  VADD.F32        S0, S0, S19
A4BE6:  VADD.F32        S2, S2, S17
A4BEA:  VADD.F32        S0, S0, S30
A4BEE:  VADD.F32        S2, S2, S28
A4BF2:  VABS.F32        S6, S0
A4BF6:  VABS.F32        S8, S2
A4BFA:  VNEG.F32        S4, S2
A4BFE:  VNEG.F32        S0, S0
A4C02:  VMOV.F32        S2, S28
A4C06:  VCMP.F32        S8, S6
A4C0A:  VMRS            APSR_nzcv, FPSCR
A4C0E:  ITT GT
A4C10:  VMOVGT.F32      S4, S26
A4C14:  VMOVGT.F32      S26, S0
A4C18:  VMOV.F32        S0, S17
A4C1C:  VMOV.F32        S5, S26
A4C20:  B               loc_A492A
A4C22:  MOV             R6, R2
A4C24:  ADD.W           R3, R6, R8
A4C28:  CMP             R0, R3
A4C2A:  MOV             R2, R3
A4C2C:  IT LT
A4C2E:  MOVLT           R2, R0
A4C30:  CMP             R3, #0
A4C32:  IT MI
A4C34:  MOVMI           R2, R0
A4C36:  CMP             R2, R0
A4C38:  BGE             loc_A4C40
A4C3A:  LDRB.W          R12, [LR,R2]
A4C3E:  B               loc_A4CC6
A4C40:  MOV.W           R12, #0
A4C44:  B               loc_A4CC6
A4C46:  MOVS            R3, #0
A4C48:  CMP             R2, R0
A4C4A:  BGE             loc_A4C54
A4C4C:  LDRB.W          R6, [LR,R2]
A4C50:  ADDS            R2, #1
A4C52:  B               loc_A4C56
A4C54:  MOVS            R6, #0
A4C56:  CMP             R2, R0
A4C58:  BGE             loc_A4C64
A4C5A:  LDRB.W          R5, [LR,R2]
A4C5E:  ADDS            R2, #1
A4C60:  LSLS            R5, R5, #8
A4C62:  B               loc_A4C66
A4C64:  MOVS            R5, #0
A4C66:  CMP             R2, R0
A4C68:  BGE             loc_A4C72
A4C6A:  LDRB.W          R1, [LR,R2]
A4C6E:  ADDS            R2, #1
A4C70:  B               loc_A4C74
A4C72:  MOVS            R1, #0
A4C74:  ORRS            R3, R6
A4C76:  CMP             R3, #1
A4C78:  BLT             loc_A4CC2
A4C7A:  ORRS            R5, R1
A4C7C:  B               loc_A4C82
A4C7E:  SUBS            R3, #1
A4C80:  BEQ             loc_A4CC2
A4C82:  MOV             R1, R5
A4C84:  CMP             R2, R0
A4C86:  BGE             loc_A4C9C
A4C88:  LDRB.W          R12, [LR,R2]
A4C8C:  ADDS            R2, #1
A4C8E:  CMP             R2, R0
A4C90:  BLT             loc_A4CA4
A4C92:  MOVS            R6, #0
A4C94:  CMP             R2, R0
A4C96:  BLT             loc_A4CAE
A4C98:  MOVS            R5, #0
A4C9A:  B               loc_A4CB4
A4C9C:  MOV.W           R12, #0
A4CA0:  CMP             R2, R0
A4CA2:  BGE             loc_A4C92
A4CA4:  LDRB.W          R6, [LR,R2]
A4CA8:  ADDS            R2, #1
A4CAA:  CMP             R2, R0
A4CAC:  BGE             loc_A4C98
A4CAE:  LDRB.W          R5, [LR,R2]
A4CB2:  ADDS            R2, #1
A4CB4:  LSLS            R6, R6, #8
A4CB6:  ORRS            R5, R6
A4CB8:  CMP             R1, R8
A4CBA:  BGT             loc_A4C7E
A4CBC:  CMP             R5, R8
A4CBE:  BLE             loc_A4C7E
A4CC0:  B               loc_A4CC6
A4CC2:  MOV.W           R12, #0xFFFFFFFF
A4CC6:  ADD.W           R3, R11, #0x64 ; 'd'
A4CCA:  LDR.W           R0, [R11,#0x3C]
A4CCE:  STR             R0, [SP,#0x1F8+var_1E0]
A4CD0:  ADD             R0, SP, #0x1F8+var_1A8
A4CD2:  LDM             R3, {R1-R3}
A4CD4:  LDRD.W          R5, R6, [R11,#0x34]
A4CD8:  STR.W           R12, [SP,#0x1F8+var_1F8]
A4CDC:  BL              sub_A3E34
A4CE0:  ADD             R2, SP, #0x1F8+var_1A8
A4CE2:  LDR             R3, [SP,#0x1F8+var_1E0]
A4CE4:  LDM             R2, {R0-R2}
A4CE6:  STMEA.W         SP, {R0-R2}
A4CEA:  ADD             R0, SP, #0x1F8+var_1C4
A4CEC:  MOV             R1, R5
A4CEE:  MOV             R2, R6
A4CF0:  BL              sub_A4014
A4CF4:  LDR             R0, [SP,#0x1F8+var_1C4]
A4CF6:  LDR             R1, [SP,#0x1F8+var_1BC]
A4CF8:  STRD.W          R1, R0, [SP,#0x1F8+var_1CC]
A4CFC:  MOVS            R0, #1
A4CFE:  STR             R0, [SP,#0x1F8+var_1E0]
A4D00:  CMP             R4, #1; jumptable 000A4282 case 29
A4D02:  BLT.W           def_A4714; jumptable 000A4714 default case
A4D06:  LDR             R2, [SP,#0x1F8+var_1D4]
A4D08:  CMP             R2, #9
A4D0A:  BGT.W           def_A4714; jumptable 000A4714 default case
A4D0E:  SUBS            R4, #1
A4D10:  ADD             R1, SP, #0x1F8+var_124
A4D12:  ADD.W           R2, R2, R2,LSL#1
A4D16:  LDR             R0, [SP,#0x1F8+var_1B0]
A4D18:  ADD.W           R1, R1, R4,LSL#2
A4D1C:  VLDR            D16, [SP,#0x1F8+var_1B8]
A4D20:  CMP.W           R10, #0xA
A4D24:  MOV             R5, R4
A4D26:  VLDR            S0, [R1]
A4D2A:  ADD             R1, SP, #0x1F8+var_19C
A4D2C:  ADD.W           R1, R1, R2,LSL#2
A4D30:  STR             R0, [R1,#8]
A4D32:  ADD             R0, SP, #0x1F8+var_1CC
A4D34:  VSTR            D16, [R1]
A4D38:  IT NE
A4D3A:  ADDNE.W         R0, R11, #0x54 ; 'T'
A4D3E:  LDR             R3, [R0]
A4D40:  ADD             R0, SP, #0x1F8+var_1C8
A4D42:  IT NE
A4D44:  ADDNE.W         R0, R11, #0x4C ; 'L'
A4D48:  LDR             R1, [R0]
A4D4A:  CMP             R3, #1
A4D4C:  AND.W           R2, R3, R3,ASR#31
A4D50:  BLT             loc_A4D62
A4D52:  LDRB            R0, [R1,R2]
A4D54:  ADDS            R2, #1
A4D56:  LSLS            R0, R0, #8
A4D58:  CMP             R2, R3
A4D5A:  BGE             loc_A4D68
A4D5C:  LDRB            R6, [R1,R2]
A4D5E:  ADDS            R2, #1
A4D60:  B               loc_A4D6A
A4D62:  MOVS            R0, #0
A4D64:  CMP             R2, R3
A4D66:  BLT             loc_A4D5C
A4D68:  MOVS            R6, #0
A4D6A:  VCVT.S32.F32    S0, S0
A4D6E:  ORRS            R0, R6
A4D70:  MOVS            R6, #0x6B ; 'k'
A4D72:  CMP.W           R0, #0x4D8
A4D76:  IT GE
A4D78:  MOVWGE          R6, #0x46B
A4D7C:  MOVW            R4, #0x846B
A4D80:  CMP             R0, R4
A4D82:  IT GT
A4D84:  MOVGT.W         R6, #0x8000
A4D88:  VMOV            R12, S0
A4D8C:  ADDS.W          R6, R6, R12
A4D90:  BMI             loc_A4DA0
A4D92:  CMP             R6, R0
A4D94:  BGE             loc_A4DA0
A4D96:  ADD             R0, SP, #0x1F8+var_1A8
A4D98:  STR             R6, [SP,#0x1F8+var_1F8]
A4D9A:  BL              sub_A3E34
A4D9E:  B               loc_A4DA8
A4DA0:  MOVS            R0, #0
A4DA2:  STR             R0, [SP,#0x1F8+var_1A0]
A4DA4:  STRD.W          R0, R0, [SP,#0x1F8+var_1A8]
A4DA8:  LDR             R0, [SP,#0x1F8+var_1A0]
A4DAA:  LDR             R1, [SP,#0x1F8+var_1D4]
A4DAC:  VLDR            D16, [SP,#0x1F8+var_1A8]
A4DB0:  CMP             R0, #0
A4DB2:  STR             R0, [SP,#0x1F8+var_1B0]
A4DB4:  VSTR            D16, [SP,#0x1F8+var_1B8]
A4DB8:  BEQ.W           def_A4714; jumptable 000A4714 default case
A4DBC:  MOVS            R0, #0
A4DBE:  ADDS            R1, #1
A4DC0:  STR             R0, [SP,#0x1F8+var_1B8+4]
A4DC2:  STR             R1, [SP,#0x1F8+var_1D4]
A4DC4:  B.W             loc_A425E
A4DC8:  ADD             R1, SP, #0x1F8+var_124
A4DCA:  VLDR            S2, [R9,#0x14]
A4DCE:  ADD.W           R1, R1, R0,LSL#2
A4DD2:  VLDR            S0, [R9,#0x10]
A4DD6:  VADD.F32        S2, S2, S16
A4DDA:  LDR.W           R3, [R9]
A4DDE:  VLDR            S4, [R1]
A4DE2:  VADD.F32        S0, S4, S0
A4DE6:  VCVT.S32.F32    S4, S2
A4DEA:  VSTR            S2, [R9,#0x14]
A4DEE:  VCVT.S32.F32    S6, S0
A4DF2:  VSTR            S0, [R9,#0x10]
A4DF6:  VMOV            R1, S4
A4DFA:  VMOV            R2, S6
A4DFE:  CBZ             R3, loc_A4E0E
A4E00:  LDR.W           R3, [R9,#0x1C]
A4E04:  CMP             R3, R2
A4E06:  BGE             loc_A4E2C
A4E08:  STR.W           R2, [R9,#0x1C]
A4E0C:  B               loc_A4E38
A4E0E:  LDRD.W          R6, R3, [R9,#0x28]
A4E12:  RSB.W           R5, R3, R3,LSL#3
A4E16:  STRH.W          R2, [R6,R5,LSL#1]
A4E1A:  ADD.W           R2, R6, R5,LSL#1
A4E1E:  MOVS            R6, #0
A4E20:  STR             R6, [R2,#8]
A4E22:  STR             R6, [R2,#4]
A4E24:  MOVS            R6, #2
A4E26:  STRB            R6, [R2,#0xC]
A4E28:  STRH            R1, [R2,#2]
A4E2A:  B               loc_A4E90
A4E2C:  LDR.W           R3, [R9,#4]
A4E30:  CMP             R3, #0
A4E32:  IT EQ
A4E34:  STREQ.W         R2, [R9,#0x1C]
A4E38:  LDR.W           R3, [R9,#0x24]
A4E3C:  CMP             R3, R1
A4E3E:  BGE             loc_A4E46
A4E40:  STR.W           R1, [R9,#0x24]
A4E44:  B               loc_A4E52
A4E46:  LDR.W           R3, [R9,#4]
A4E4A:  CMP             R3, #0
A4E4C:  IT EQ
A4E4E:  STREQ.W         R1, [R9,#0x24]
A4E52:  LDR.W           R3, [R9,#0x18]
A4E56:  CMP             R3, R2
A4E58:  BLE             loc_A4E60
A4E5A:  STR.W           R2, [R9,#0x18]
A4E5E:  B               loc_A4E6C
A4E60:  LDR.W           R3, [R9,#4]
A4E64:  CMP             R3, #0
A4E66:  IT EQ
A4E68:  STREQ.W         R2, [R9,#0x18]
A4E6C:  LDR.W           R2, [R9,#0x20]
A4E70:  CMP             R2, R1
A4E72:  BLE             loc_A4E7A
A4E74:  STR.W           R1, [R9,#0x20]
A4E78:  B               loc_A4E86
A4E7A:  LDR.W           R2, [R9,#4]
A4E7E:  CMP             R2, #0
A4E80:  IT EQ
A4E82:  STREQ.W         R1, [R9,#0x20]
A4E86:  MOVS            R1, #1
A4E88:  LDR.W           R3, [R9,#0x2C]
A4E8C:  STR.W           R1, [R9,#4]
A4E90:  ADDS            R0, #1
A4E92:  ADDS            R1, R3, #1
A4E94:  STR.W           R1, [R9,#0x2C]
A4E98:  CMP             R0, R4
A4E9A:  BGE.W           loc_A425C
A4E9E:  ADD             R1, SP, #0x1F8+var_124
A4EA0:  VLDR            S0, [R9,#0x10]
A4EA4:  ADD.W           R1, R1, R0,LSL#2
A4EA8:  VLDR            S2, [R9,#0x14]
A4EAC:  VADD.F32        S0, S0, S16
A4EB0:  LDR.W           R3, [R9]
A4EB4:  VLDR            S4, [R1]
A4EB8:  VADD.F32        S2, S4, S2
A4EBC:  VCVT.S32.F32    S4, S0
A4EC0:  VSTR            S0, [R9,#0x10]
A4EC4:  VCVT.S32.F32    S6, S2
A4EC8:  VSTR            S2, [R9,#0x14]
A4ECC:  VMOV            R2, S4
A4ED0:  VMOV            R1, S6
A4ED4:  CBZ             R3, loc_A4EE4
A4ED6:  LDR.W           R3, [R9,#0x1C]
A4EDA:  CMP             R3, R2
A4EDC:  BGE             loc_A4F02
A4EDE:  STR.W           R2, [R9,#0x1C]
A4EE2:  B               loc_A4F0E
A4EE4:  LDRD.W          R6, R3, [R9,#0x28]
A4EE8:  RSB.W           R5, R3, R3,LSL#3
A4EEC:  STRH.W          R2, [R6,R5,LSL#1]
A4EF0:  ADD.W           R2, R6, R5,LSL#1
A4EF4:  MOVS            R6, #0
A4EF6:  STR             R6, [R2,#8]
A4EF8:  STR             R6, [R2,#4]
A4EFA:  MOVS            R6, #2
A4EFC:  STRB            R6, [R2,#0xC]
A4EFE:  STRH            R1, [R2,#2]
A4F00:  B               loc_A4F66
A4F02:  LDR.W           R3, [R9,#4]
A4F06:  CMP             R3, #0
A4F08:  IT EQ
A4F0A:  STREQ.W         R2, [R9,#0x1C]
A4F0E:  LDR.W           R3, [R9,#0x24]
A4F12:  CMP             R3, R1
A4F14:  BGE             loc_A4F1C
A4F16:  STR.W           R1, [R9,#0x24]
A4F1A:  B               loc_A4F28
A4F1C:  LDR.W           R3, [R9,#4]
A4F20:  CMP             R3, #0
A4F22:  IT EQ
A4F24:  STREQ.W         R1, [R9,#0x24]
A4F28:  LDR.W           R3, [R9,#0x18]
A4F2C:  CMP             R3, R2
A4F2E:  BLE             loc_A4F36
A4F30:  STR.W           R2, [R9,#0x18]
A4F34:  B               loc_A4F42
A4F36:  LDR.W           R3, [R9,#4]
A4F3A:  CMP             R3, #0
A4F3C:  IT EQ
A4F3E:  STREQ.W         R2, [R9,#0x18]
A4F42:  LDR.W           R2, [R9,#0x20]
A4F46:  CMP             R2, R1
A4F48:  BLE             loc_A4F50
A4F4A:  STR.W           R1, [R9,#0x20]
A4F4E:  B               loc_A4F5C
A4F50:  LDR.W           R2, [R9,#4]
A4F54:  CMP             R2, #0
A4F56:  IT EQ
A4F58:  STREQ.W         R1, [R9,#0x20]
A4F5C:  MOVS            R1, #1
A4F5E:  LDR.W           R3, [R9,#0x2C]
A4F62:  STR.W           R1, [R9,#4]
A4F66:  ADDS            R1, R3, #1
A4F68:  STR.W           R1, [R9,#0x2C]
A4F6C:  ADDS            R0, #1
A4F6E:  CMP             R0, R4
A4F70:  BLT.W           loc_A4DC8
A4F74:  B.W             loc_A425C
A4F78:  ADDS            R1, R0, #3
A4F7A:  CMP             R1, R5
A4F7C:  BGE.W           loc_A425C
A4F80:  SUBS            R2, R5, R0
A4F82:  VMOV.F32        S5, S16
A4F86:  VMOV.F32        S0, S16
A4F8A:  ADDS            R4, R0, #4
A4F8C:  CMP             R2, #5
A4F8E:  ITTT EQ
A4F90:  ADDEQ.W         R2, SP, #0x1F8+var_124
A4F94:  ADDEQ.W         R2, R2, R4,LSL#2
A4F98:  VLDREQ          S5, [R2]
A4F9C:  ADD             R2, SP, #0x1F8+var_124
A4F9E:  ADD.W           R1, R2, R1,LSL#2
A4FA2:  ADD.W           R0, R2, R0,LSL#2
A4FA6:  VLDM            R0, {S1-S3}
A4FAA:  MOV             R0, R9
A4FAC:  VLDR            S4, [R1]
A4FB0:  BL              sub_A50F0
A4FB4:  MOV             R0, R4
A4FB6:  ADDS            R1, R0, #3
A4FB8:  CMP             R1, R5
A4FBA:  BGE.W           loc_A425C
A4FBE:  SUBS            R2, R5, R0
A4FC0:  VMOV.F32        S4, S16
A4FC4:  ADDS            R4, R0, #4
A4FC6:  CMP             R2, #5
A4FC8:  ITTT EQ
A4FCA:  ADDEQ.W         R2, SP, #0x1F8+var_124
A4FCE:  ADDEQ.W         R2, R2, R4,LSL#2
A4FD2:  VLDREQ          S4, [R2]
A4FD6:  VMOV.F32        S1, S16
A4FDA:  ADD             R2, SP, #0x1F8+var_124
A4FDC:  ADD.W           R0, R2, R0,LSL#2
A4FE0:  VLDR            S0, [R0]
A4FE4:  VLDR            S2, [R0,#4]
A4FE8:  VLDR            S3, [R0,#8]
A4FEC:  ADD.W           R0, R2, R1,LSL#2
A4FF0:  VLDR            S5, [R0]
A4FF4:  MOV             R0, R9
A4FF6:  BL              sub_A50F0
A4FFA:  MOV             R0, R4
A4FFC:  B               loc_A4F78
A4FFE:  MOVS            R0, #0; jumptable 000A4714 default case
A5000:  LDR             R1, [SP,#0x1F8+var_64]
A5002:  LDR             R2, =(__stack_chk_guard_ptr - 0xA5008)
A5004:  ADD             R2, PC; __stack_chk_guard_ptr
A5006:  LDR             R2, [R2]; __stack_chk_guard
A5008:  LDR             R2, [R2]
A500A:  CMP             R2, R1
A500C:  ITTTT EQ
A500E:  ADDEQ           SP, SP, #0x198
A5010:  VPOPEQ          {D8-D15}
A5014:  ADDEQ           SP, SP, #4
A5016:  POPEQ.W         {R8-R11}
A501A:  IT EQ
A501C:  POPEQ           {R4-R7,PC}
A501E:  BLX             __stack_chk_fail
A5022:  MOV             R0, R9; jumptable 000A4282 case 14
A5024:  BL              sub_A520E
A5028:  MOVS            R0, #1
A502A:  B               loc_A5000
