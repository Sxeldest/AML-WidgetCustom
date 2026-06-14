; =========================================================
; Game Engine Function: _ZN29CTaskComplexFollowPatrolRoute13CreateSubTaskEi
; Address            : 0x525350 - 0x5255F0
; =========================================================

525350:  PUSH            {R4-R7,LR}
525352:  ADD             R7, SP, #0xC
525354:  PUSH.W          {R8,R9,R11}
525358:  VPUSH           {D8}
52535C:  SUB             SP, SP, #0x28
52535E:  MOV             R5, R0
525360:  MOVS            R4, #0
525362:  CMP.W           R1, #0x384
525366:  BLT             loc_525456
525368:  BEQ.W           loc_5254A0
52536C:  MOVW            R0, #0x387
525370:  CMP             R1, R0
525372:  BEQ.W           loc_5254FC
525376:  MOVW            R0, #0x38A
52537A:  CMP             R1, R0
52537C:  BNE.W           loc_5255E2
525380:  LDR             R0, [R5,#0x1C]
525382:  LDR             R2, [R0]
525384:  CMP             R2, #0
525386:  BEQ.W           loc_525538
52538A:  LDRSH.W         R3, [R5,#0x12]
52538E:  MOVW            R6, #0xFFFF
525392:  CMP             R2, R3
525394:  UXTH            R1, R3
525396:  ITT EQ
525398:  SUBEQ           R1, #1
52539A:  STRHEQ          R1, [R5,#0x12]
52539C:  SXTH            R1, R1
52539E:  ADD.W           R1, R1, R1,LSL#1; unsigned int
5253A2:  ADD.W           R0, R0, R1,LSL#2
5253A6:  VLDR            D16, [R0,#0x144]
5253AA:  LDR.W           R0, [R0,#0x14C]
5253AE:  STR             R0, [SP,#0x48+var_28]
5253B0:  MOVS            R0, #dword_60; this
5253B2:  VSTR            D16, [SP,#0x48+var_30]
5253B6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5253BA:  MOV             R4, R0
5253BC:  LDRSH.W         R8, [R5,#0x10]
5253C0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5253C4:  LDR             R0, =(_ZTV27CTaskComplexFollowNodeRoute_ptr - 0x5253D4)
5253C6:  MOVS            R5, #0
5253C8:  LDRB.W          R1, [R4,#0x4C]; unsigned int
5253CC:  MOV.W           R2, #0xFFFFFFFF
5253D0:  ADD             R0, PC; _ZTV27CTaskComplexFollowNodeRoute_ptr
5253D2:  VMOV.I32        Q9, #0
5253D6:  MOV.W           LR, #0x3F000000
5253DA:  MOVS            R3, #0
5253DC:  LDR             R0, [R0]; `vtable for'CTaskComplexFollowNodeRoute ...
5253DE:  MOVT            R3, #0x4040
5253E2:  MOV.W           R12, #0x40000000
5253E6:  ADDS            R0, #8
5253E8:  STR             R0, [R4]
5253EA:  LDR             R0, [SP,#0x48+var_28]
5253EC:  VLDR            D16, [SP,#0x48+var_30]
5253F0:  STR             R5, [R4,#0x38]
5253F2:  STR             R2, [R4,#0x3C]
5253F4:  ADD.W           R2, R4, #0x14
5253F8:  STM.W           R2, {R0,R8,LR}
5253FC:  ADD.W           R0, R4, #0x50 ; 'P'
525400:  STRD.W          R3, R12, [R4,#0x20]
525404:  STRH            R6, [R4,#0x28]
525406:  STRH            R6, [R4,#0x34]
525408:  STRH.W          R5, [R4,#0x48]
52540C:  VST1.32         {D18-D19}, [R0]
525410:  AND.W           R0, R1, #0x96
525414:  ORR.W           R0, R0, #8
525418:  STRD.W          R5, R5, [R4,#0x40]
52541C:  VSTR            D16, [R4,#0xC]
525420:  STRB.W          R0, [R4,#0x4C]
525424:  MOVS            R0, #dword_64; this
525426:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
52542A:  STR             R5, [R0]
52542C:  STR             R0, [R4,#0x30]
52542E:  MOVS            R0, #dword_24; this
525430:  BLX             j__ZN10CNodeRoutenwEj; CNodeRoute::operator new(uint)
525434:  LDR             R1, =(EmptyNodeAddress_ptr - 0x52543C)
525436:  STR             R5, [R0]
525438:  ADD             R1, PC; EmptyNodeAddress_ptr
52543A:  STRH            R6, [R0,#4]
52543C:  STRH            R6, [R0,#8]
52543E:  LDR             R1, [R1]; EmptyNodeAddress ; unsigned int
525440:  STRH            R6, [R0,#0xC]
525442:  STRH            R6, [R0,#0x10]
525444:  STRH            R6, [R0,#0x14]
525446:  STRH            R6, [R0,#0x18]
525448:  STRH            R6, [R0,#0x1C]
52544A:  STRH            R6, [R0,#0x20]
52544C:  STRH            R6, [R4,#0x34]
52544E:  STR             R0, [R4,#0x2C]
525450:  LDR             R0, [R1]
525452:  STR             R0, [R4,#0x28]
525454:  B               loc_5255E2
525456:  CMP             R1, #0xC8
525458:  BEQ             loc_525520
52545A:  MOVW            R0, #0x191
52545E:  CMP             R1, R0
525460:  BNE.W           loc_5255E2
525464:  MOVS            R0, #dword_64; this
525466:  LDR             R6, [R5,#0x1C]
525468:  LDRSH.W         R5, [R5,#0x12]
52546C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
525470:  MOV             R4, R0
525472:  MOVS            R0, #0
525474:  MOV.W           R1, #0xFFFFFFFF
525478:  MOV.W           R2, #0x40800000
52547C:  STRD.W          R2, R1, [SP,#0x48+var_48]; float
525480:  MOVS            R3, #0x58 ; 'X'; int
525482:  STRD.W          R0, R0, [SP,#0x48+var_40]; bool
525486:  STRD.W          R0, R0, [SP,#0x48+var_38]; bool
52548A:  ADD.W           R0, R5, R5,LSL#2
52548E:  ADD.W           R0, R6, R0,LSL#3
525492:  ADDS            R1, R0, #4; char *
525494:  ADD.W           R2, R0, #0x1C; char *
525498:  MOV             R0, R4; this
52549A:  BLX             j__ZN23CTaskSimpleRunNamedAnimC2EPKcS1_ifibbbb; CTaskSimpleRunNamedAnim::CTaskSimpleRunNamedAnim(char const*,char const*,int,float,int,bool,bool,bool,bool)
52549E:  B               loc_5255E2
5254A0:  MOVS            R0, #word_2C; this
5254A2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5254A6:  MOV             R4, R0
5254A8:  LDRSH.W         R6, [R5,#0x10]
5254AC:  LDRSH.W         R8, [R5,#0x12]
5254B0:  LDR.W           R9, [R5,#0x14]
5254B4:  LDR             R5, [R5,#0x1C]
5254B6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5254BA:  LDR             R0, =(_ZTV15CTaskSimpleGoTo_ptr - 0x5254C2)
5254BC:  LDR             R1, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x5254C6)
5254BE:  ADD             R0, PC; _ZTV15CTaskSimpleGoTo_ptr
5254C0:  STR             R6, [R4,#8]
5254C2:  ADD             R1, PC; _ZTV20CTaskSimpleGoToPoint_ptr
5254C4:  LDR             R0, [R0]; `vtable for'CTaskSimpleGoTo ...
5254C6:  LDR             R1, [R1]; `vtable for'CTaskSimpleGoToPoint ...
5254C8:  ADDS            R0, #8
5254CA:  STR             R0, [R4]
5254CC:  ADD.W           R0, R8, R8,LSL#1
5254D0:  LDRB            R3, [R4,#0x1D]
5254D2:  ADDS            R1, #8
5254D4:  ADD.W           R0, R5, R0,LSL#2
5254D8:  LDR.W           R2, [R0,#0x14C]
5254DC:  VLDR            D16, [R0,#0x144]
5254E0:  LDRB            R0, [R4,#0x1C]
5254E2:  STR             R2, [R4,#0x14]
5254E4:  STR             R1, [R4]
5254E6:  AND.W           R1, R3, #0xE0; unsigned int
5254EA:  STR.W           R9, [R4,#0x18]
5254EE:  AND.W           R0, R0, #0xC0
5254F2:  STRB            R1, [R4,#0x1D]
5254F4:  STRB            R0, [R4,#0x1C]
5254F6:  VSTR            D16, [R4,#0xC]
5254FA:  B               loc_5255E2
5254FC:  LDRSH.W         R0, [R5,#0xC]
525500:  CMP             R0, #3
525502:  IT NE
525504:  CMPNE           R0, #2
525506:  BEQ             loc_52553C
525508:  VLDR            S16, [R5,#0x18]
52550C:  CMP             R0, #1
52550E:  BNE             loc_525540
525510:  LDRH            R0, [R5,#0xE]
525512:  VLDR            S0, =0.0
525516:  CMP             R0, #0
525518:  IT EQ
52551A:  VMOVEQ.F32      S16, S0
52551E:  B               loc_525540
525520:  MOVS            R0, #byte_8; this
525522:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
525526:  MOV             R4, R0
525528:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52552C:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x525532)
52552E:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
525530:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
525532:  ADDS            R0, #8
525534:  STR             R0, [R4]
525536:  B               loc_5255E2
525538:  MOVS            R4, #0
52553A:  B               loc_5255E2
52553C:  VLDR            S16, =0.0
525540:  MOVS            R0, #word_28; this
525542:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
525546:  MOV             R4, R0
525548:  LDRSH.W         R6, [R5,#0x10]
52554C:  LDRSH.W         R9, [R5,#0x12]
525550:  LDR.W           R8, [R5,#0x14]
525554:  LDR             R5, [R5,#0x1C]
525556:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
52555A:  LDR             R0, =(_ZTV34CTaskComplexGoToPointAndStandStill_ptr - 0x525562)
52555C:  STR             R6, [R4,#0xC]
52555E:  ADD             R0, PC; _ZTV34CTaskComplexGoToPointAndStandStill_ptr
525560:  LDRB.W          R1, [R4,#0x24]
525564:  VLDR            S0, [R4,#0x10]
525568:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToPointAndStandStill ...
52556A:  ADDS            R0, #8
52556C:  STR             R0, [R4]
52556E:  BIC.W           R0, R1, #0x1B
525572:  ADD.W           R1, R9, R9,LSL#1
525576:  STRB.W          R0, [R4,#0x24]
52557A:  ADD.W           R1, R5, R1,LSL#2
52557E:  VLDR            S2, [R1,#0x144]
525582:  VCMP.F32        S0, S2
525586:  VMRS            APSR_nzcv, FPSCR
52558A:  BNE             loc_5255BE
52558C:  VLDR            S0, [R4,#0x14]
525590:  VLDR            S2, [R1,#0x148]
525594:  VCMP.F32        S0, S2
525598:  VMRS            APSR_nzcv, FPSCR
52559C:  BNE             loc_5255BE
52559E:  VLDR            S0, [R4,#0x18]
5255A2:  VLDR            S2, [R1,#0x14C]
5255A6:  VCMP.F32        S0, S2
5255AA:  VMRS            APSR_nzcv, FPSCR
5255AE:  BNE             loc_5255BE
5255B0:  VLDR            S0, [R4,#0x20]
5255B4:  VCMP.F32        S0, S16
5255B8:  VMRS            APSR_nzcv, FPSCR
5255BC:  BEQ             loc_5255E2
5255BE:  ADD.W           R1, R1, #0x144
5255C2:  ADD.W           R2, R4, #0x10
5255C6:  ORR.W           R0, R0, #4
5255CA:  VLDR            D16, [R1]
5255CE:  LDR             R1, [R1,#8]
5255D0:  STR             R1, [R2,#8]
5255D2:  VSTR            D16, [R2]
5255D6:  VSTR            S16, [R4,#0x20]
5255DA:  STR.W           R8, [R4,#0x1C]
5255DE:  STRB.W          R0, [R4,#0x24]
5255E2:  MOV             R0, R4
5255E4:  ADD             SP, SP, #0x28 ; '('
5255E6:  VPOP            {D8}
5255EA:  POP.W           {R8,R9,R11}
5255EE:  POP             {R4-R7,PC}
