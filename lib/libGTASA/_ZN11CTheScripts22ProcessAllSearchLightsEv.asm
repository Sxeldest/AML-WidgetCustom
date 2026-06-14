; =========================================================
; Game Engine Function: _ZN11CTheScripts22ProcessAllSearchLightsEv
; Address            : 0x358268 - 0x35872A
; =========================================================

358268:  PUSH            {R4-R7,LR}
35826A:  ADD             R7, SP, #0xC
35826C:  PUSH.W          {R8-R11}
358270:  SUB             SP, SP, #4
358272:  VPUSH           {D8-D10}
358276:  SUB             SP, SP, #0x38
358278:  LDR.W           R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x358284)
35827C:  MOV.W           R8, #0
358280:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
358282:  LDR.W           R11, [R0]; CTheScripts::ScriptSearchLightArray ...
358286:  LDR.W           R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x35828E)
35828A:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
35828C:  LDR.W           R10, [R0]; CTheScripts::ScriptSearchLightArray ...
358290:  LDR.W           R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x358298)
358294:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
358296:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
358298:  STR             R0, [SP,#0x70+var_48]
35829A:  LDR.W           R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x3582A2)
35829E:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
3582A0:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
3582A2:  STR             R0, [SP,#0x70+var_4C]
3582A4:  LDR.W           R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x3582AC)
3582A8:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
3582AA:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
3582AC:  STR             R0, [SP,#0x70+var_50]
3582AE:  LDR.W           R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x3582B6)
3582B2:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
3582B4:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
3582B6:  STR             R0, [SP,#0x70+var_5C]
3582B8:  LDR.W           R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x3582C0)
3582BC:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
3582BE:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
3582C0:  STR             R0, [SP,#0x70+var_64]
3582C2:  LDR.W           R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x3582CA)
3582C6:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
3582C8:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
3582CA:  STR             R0, [SP,#0x70+var_60]
3582CC:  LDR.W           R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x3582D4)
3582D0:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
3582D2:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
3582D4:  STR             R0, [SP,#0x70+var_68]
3582D6:  LDR.W           R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x3582DE)
3582DA:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
3582DC:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
3582DE:  STR             R0, [SP,#0x70+var_54]
3582E0:  LDR.W           R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x3582E8)
3582E4:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
3582E6:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
3582E8:  STR             R0, [SP,#0x70+var_6C]
3582EA:  LDR.W           R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x3582F2)
3582EE:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
3582F0:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
3582F2:  STR             R0, [SP,#0x70+var_58]
3582F4:  LDR.W           R0, =(_ZN11CTheScripts22ScriptSearchLightArrayE_ptr - 0x3582FC)
3582F8:  ADD             R0, PC; _ZN11CTheScripts22ScriptSearchLightArrayE_ptr
3582FA:  LDR             R0, [R0]; CTheScripts::ScriptSearchLightArray ...
3582FC:  STR             R0, [SP,#0x70+var_70]
3582FE:  LDRB.W          R0, [R11,R8]
358302:  CMP             R0, #0
358304:  BEQ.W           loc_358710
358308:  ADD.W           R0, R10, R8
35830C:  LDRSB.W         R1, [R0,#3]
358310:  CMP.W           R1, #0xFFFFFFFF
358314:  BGT.W           loc_358710
358318:  AND.W           R1, R1, #0x7F
35831C:  SUBS            R1, #1; switch 4 cases
35831E:  CMP             R1, #3
358320:  BHI.W           def_358324; jumptable 00358324 default case
358324:  TBB.W           [PC,R1]; switch jump
358328:  DCB 2; jump table for switch statement
358329:  DCB 0xD3
35832A:  DCB 0x3B
35832B:  DCB 0x7A
35832C:  LDR             R1, [SP,#0x70+var_5C]; jumptable 00358324 case 1
35832E:  ADD.W           R4, R1, R8
358332:  VLDR            S0, [R4,#0x14]
358336:  VLDR            S6, [R4,#0x28]
35833A:  VLDR            S2, [R4,#0x18]
35833E:  VLDR            S8, [R4,#0x2C]
358342:  VSUB.F32        S0, S6, S0
358346:  VLDR            S4, [R4,#0x1C]
35834A:  VSUB.F32        S2, S8, S2
35834E:  VLDR            S10, [R4,#0x30]
358352:  VSUB.F32        S4, S10, S4
358356:  VMUL.F32        S8, S0, S0
35835A:  VMUL.F32        S6, S2, S2
35835E:  VSTR            S2, [SP,#0x70+var_40]
358362:  VSTR            S0, [SP,#0x70+var_44]
358366:  VMUL.F32        S10, S4, S4
35836A:  VLDR            S0, [R4,#0x40]
35836E:  VSTR            S4, [SP,#0x70+y]
358372:  VADD.F32        S6, S8, S6
358376:  VADD.F32        S6, S6, S10
35837A:  VSQRT.F32       S6, S6
35837E:  VCMPE.F32       S6, S0
358382:  VMRS            APSR_nzcv, FPSCR
358386:  BGT.W           loc_35852A
35838A:  LDR             R1, [SP,#0x70+var_64]
35838C:  ADD             R1, R8
35838E:  VLDR            D16, [R1,#0x28]
358392:  LDR             R2, [R1,#0x30]
358394:  STR             R2, [R1,#0x1C]
358396:  VSTR            D16, [R1,#0x14]
35839A:  MOVS            R1, #0x82
35839C:  B               loc_3585B0
35839E:  LDR             R0, [SP,#0x70+var_54]; jumptable 00358324 case 3
3583A0:  ADD.W           R4, R0, R8
3583A4:  LDR             R1, [R4,#0x48]
3583A6:  VLDR            S0, [R4,#0x14]
3583AA:  VLDR            S2, [R4,#0x18]
3583AE:  LDR             R2, [R1,#0x14]
3583B0:  VLDR            S4, [R4,#0x1C]
3583B4:  ADD.W           R0, R2, #0x30 ; '0'
3583B8:  CMP             R2, #0
3583BA:  IT EQ
3583BC:  ADDEQ           R0, R1, #4
3583BE:  VLDR            S6, [R0]
3583C2:  VLDR            S8, [R0,#4]
3583C6:  VSUB.F32        S0, S6, S0
3583CA:  VLDR            S10, [R0,#8]
3583CE:  VSUB.F32        S2, S8, S2
3583D2:  VSUB.F32        S4, S10, S4
3583D6:  VMUL.F32        S8, S0, S0
3583DA:  VMUL.F32        S6, S2, S2
3583DE:  VSTR            S2, [SP,#0x70+var_40]
3583E2:  VMUL.F32        S10, S4, S4
3583E6:  VSTR            S0, [SP,#0x70+var_44]
3583EA:  VLDR            S0, [R4,#0x40]
3583EE:  VSTR            S4, [SP,#0x70+y]
3583F2:  VADD.F32        S6, S8, S6
3583F6:  VADD.F32        S6, S6, S10
3583FA:  VSQRT.F32       S6, S6
3583FE:  VCMPE.F32       S6, S0
358402:  VMRS            APSR_nzcv, FPSCR
358406:  BGT.W           loc_35852A
35840A:  LDR             R1, [SP,#0x70+var_6C]
35840C:  VLDR            D16, [R0]
358410:  ADD             R1, R8
358412:  LDR             R0, [R0,#8]
358414:  STR             R0, [R1,#0x1C]
358416:  VSTR            D16, [R1,#0x14]
35841A:  B               def_358324; jumptable 00358324 default case
35841C:  LDR             R1, [SP,#0x70+var_58]; jumptable 00358324 case 4
35841E:  ADD.W           R5, R1, R8
358422:  VLDR            S0, [R5,#0x14]
358426:  VLDR            S6, [R5,#0x28]
35842A:  VLDR            S2, [R5,#0x18]
35842E:  VLDR            S8, [R5,#0x2C]
358432:  VSUB.F32        S0, S6, S0
358436:  VLDR            S4, [R5,#0x1C]
35843A:  VSUB.F32        S2, S8, S2
35843E:  VLDR            S10, [R5,#0x30]
358442:  VSUB.F32        S4, S10, S4
358446:  VMUL.F32        S8, S0, S0
35844A:  VMUL.F32        S6, S2, S2
35844E:  VSTR            S2, [SP,#0x70+var_40]
358452:  VSTR            S0, [SP,#0x70+var_44]
358456:  VMUL.F32        S10, S4, S4
35845A:  VLDR            S0, [R5,#0x40]
35845E:  VSTR            S4, [SP,#0x70+y]
358462:  VADD.F32        S6, S8, S6
358466:  VADD.F32        S6, S6, S10
35846A:  VSQRT.F32       S6, S6
35846E:  VCMPE.F32       S6, S0
358472:  VMRS            APSR_nzcv, FPSCR
358476:  BLE.W           loc_35857E
35847A:  ADD             R0, SP, #0x70+var_44; this
35847C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
358480:  VLDR            S0, [SP,#0x70+var_44]
358484:  VLDR            S6, [R5,#0x40]
358488:  VLDR            S2, [SP,#0x70+var_40]
35848C:  VMUL.F32        S0, S6, S0
358490:  VLDR            S4, [SP,#0x70+y]
358494:  VMUL.F32        S2, S6, S2
358498:  VMUL.F32        S4, S6, S4
35849C:  VLDR            S6, [R5,#0x14]
3584A0:  VSTR            S0, [SP,#0x70+var_44]
3584A4:  VADD.F32        S0, S0, S6
3584A8:  VSTR            S2, [SP,#0x70+var_40]
3584AC:  VSTR            S4, [SP,#0x70+y]
3584B0:  VSTR            S0, [R5,#0x14]
3584B4:  VLDR            S0, [R5,#0x18]
3584B8:  VADD.F32        S0, S2, S0
3584BC:  VSTR            S0, [R5,#0x18]
3584C0:  VLDR            S0, [R5,#0x1C]
3584C4:  VADD.F32        S0, S4, S0
3584C8:  VSTR            S0, [R5,#0x1C]
3584CC:  B               def_358324; jumptable 00358324 default case
3584CE:  LDR             R1, [SP,#0x70+var_60]; jumptable 00358324 case 2
3584D0:  ADD.W           R4, R1, R8
3584D4:  VLDR            S0, [R4,#0x14]
3584D8:  VLDR            S6, [R4,#0x34]
3584DC:  VLDR            S2, [R4,#0x18]
3584E0:  VLDR            S8, [R4,#0x38]
3584E4:  VSUB.F32        S0, S6, S0
3584E8:  VLDR            S4, [R4,#0x1C]
3584EC:  VSUB.F32        S2, S8, S2
3584F0:  VLDR            S10, [R4,#0x3C]
3584F4:  VLDR            S12, [R4,#0x40]
3584F8:  VSUB.F32        S4, S10, S4
3584FC:  VMUL.F32        S8, S0, S0
358500:  VMUL.F32        S6, S2, S2
358504:  VSTR            S2, [SP,#0x70+var_40]
358508:  VSTR            S0, [SP,#0x70+var_44]
35850C:  VMUL.F32        S10, S4, S4
358510:  VSTR            S4, [SP,#0x70+y]
358514:  VADD.F32        S6, S8, S6
358518:  VADD.F32        S6, S6, S10
35851C:  VSQRT.F32       S6, S6
358520:  VCMPE.F32       S6, S12
358524:  VMRS            APSR_nzcv, FPSCR
358528:  BLE             loc_35859E
35852A:  ADD             R0, SP, #0x70+var_44; this
35852C:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
358530:  VLDR            S0, [SP,#0x70+var_44]
358534:  VLDR            S6, [R4,#0x40]
358538:  VLDR            S2, [SP,#0x70+var_40]
35853C:  VMUL.F32        S0, S6, S0
358540:  VLDR            S4, [SP,#0x70+y]
358544:  VMUL.F32        S2, S6, S2
358548:  VMUL.F32        S4, S6, S4
35854C:  VLDR            S6, [R4,#0x14]
358550:  VSTR            S0, [SP,#0x70+var_44]
358554:  VADD.F32        S0, S0, S6
358558:  VSTR            S2, [SP,#0x70+var_40]
35855C:  VSTR            S4, [SP,#0x70+y]
358560:  VSTR            S0, [R4,#0x14]
358564:  VLDR            S0, [R4,#0x18]
358568:  VADD.F32        S0, S2, S0
35856C:  VSTR            S0, [R4,#0x18]
358570:  VLDR            S0, [R4,#0x1C]
358574:  VADD.F32        S0, S4, S0
358578:  VSTR            S0, [R4,#0x1C]
35857C:  B               def_358324; jumptable 00358324 default case
35857E:  LDR             R1, [SP,#0x70+var_70]
358580:  ADD             R1, R8
358582:  VLDR            D16, [R1,#0x28]
358586:  LDR             R2, [R1,#0x30]
358588:  STR             R2, [R1,#0x1C]
35858A:  VSTR            D16, [R1,#0x14]
35858E:  MOVS            R1, #0x80
358590:  STRB            R1, [R0,#3]
358592:  MOVS            R0, #0
358594:  STRD.W          R0, R0, [R5,#0x28]
358598:  STR             R0, [R5,#0x30]
35859A:  STR             R0, [R5,#0x40]
35859C:  B               def_358324; jumptable 00358324 default case
35859E:  LDR             R1, [SP,#0x70+var_68]
3585A0:  ADD             R1, R8
3585A2:  VLDR            D16, [R1,#0x34]
3585A6:  LDR             R2, [R1,#0x3C]
3585A8:  STR             R2, [R1,#0x1C]
3585AA:  VSTR            D16, [R1,#0x14]
3585AE:  MOVS            R1, #0x81
3585B0:  STRB            R1, [R0,#3]
3585B2:  LDR             R0, [SP,#0x70+var_48]; jumptable 00358324 default case
3585B4:  ADD             R0, R8
3585B6:  LDR             R0, [R0,#0x54]
3585B8:  CMP             R0, #0
3585BA:  BEQ.W           loc_358710
3585BE:  LDR             R1, [R0,#0x14]
3585C0:  ADD.W           R2, R1, #0x30 ; '0'
3585C4:  CMP             R1, #0
3585C6:  IT EQ
3585C8:  ADDEQ           R2, R0, #4
3585CA:  LDR             R0, [SP,#0x70+var_4C]
3585CC:  VLDR            S0, [R2]
3585D0:  ADD.W           R9, R0, R8
3585D4:  VLDR            S2, [R2,#4]
3585D8:  VLDR            S4, [R2,#8]
3585DC:  ADD             R0, SP, #0x70+var_44; this
3585DE:  VLDR            S6, [R9,#0x14]
3585E2:  VLDR            S8, [R9,#0x18]
3585E6:  VLDR            S10, [R9,#0x1C]
3585EA:  VSUB.F32        S0, S6, S0
3585EE:  VSUB.F32        S2, S8, S2
3585F2:  VSUB.F32        S4, S10, S4
3585F6:  VSTR            S2, [SP,#0x70+var_40]
3585FA:  VSTR            S0, [SP,#0x70+var_44]
3585FE:  VSTR            S4, [SP,#0x70+y]
358602:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
358606:  VLDR            S16, [SP,#0x70+var_44]
35860A:  VLDR            S18, [SP,#0x70+var_40]
35860E:  VMOV            R0, S16
358612:  VMOV            R1, S18; x
358616:  EOR.W           R0, R0, #0x80000000; y
35861A:  BLX             atan2f
35861E:  VMUL.F32        S0, S18, S18
358622:  MOV             R5, R0
358624:  VMUL.F32        S2, S16, S16
358628:  LDR             R0, [SP,#0x70+y]; y
35862A:  VADD.F32        S0, S2, S0
35862E:  VSQRT.F32       S0, S0
358632:  VMOV            R1, S0; x
358636:  BLX             atan2f
35863A:  MOV             R6, R0
35863C:  LDR.W           R0, [R9,#0x54]
358640:  MOV             R1, R6; x
358642:  LDR             R0, [R0,#0x14]; this
358644:  VLDR            S16, [R0,#0x30]
358648:  VLDR            S18, [R0,#0x34]
35864C:  VLDR            S20, [R0,#0x38]
358650:  BLX             j__ZN7CMatrix10SetRotateXEf; CMatrix::SetRotateX(float)
358654:  LDR.W           R0, [R9,#0x54]
358658:  MOV             R1, R5; x
35865A:  LDR             R0, [R0,#0x14]; this
35865C:  BLX             j__ZN7CMatrix7RotateZEf; CMatrix::RotateZ(float)
358660:  LDR.W           R0, [R9,#0x54]
358664:  LDR             R0, [R0,#0x14]
358666:  VLDR            S0, [R0,#0x30]
35866A:  VLDR            S2, [R0,#0x34]
35866E:  VLDR            S4, [R0,#0x38]
358672:  VADD.F32        S0, S16, S0
358676:  VADD.F32        S2, S18, S2
35867A:  VADD.F32        S4, S20, S4
35867E:  VSTR            S0, [R0,#0x30]
358682:  VSTR            S2, [R0,#0x34]
358686:  VSTR            S4, [R0,#0x38]
35868A:  LDR.W           R2, [R9,#0x54]
35868E:  LDR             R0, [R2,#0x18]
358690:  CBZ             R0, loc_3586A6
358692:  LDR             R1, [R0,#4]
358694:  LDR             R0, [R2,#0x14]
358696:  ADDS            R1, #0x10
358698:  CBZ             R0, loc_3586A0
35869A:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
35869E:  B               loc_3586A6
3586A0:  ADDS            R0, R2, #4
3586A2:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
3586A6:  LDR.W           R0, [R9,#0x54]; this
3586AA:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
3586AE:  LDR             R0, [SP,#0x70+var_50]
3586B0:  MOV             R1, R6; x
3586B2:  ADD.W           R4, R0, R8
3586B6:  LDR             R0, [R4,#0x50]
3586B8:  LDR             R0, [R0,#0x14]; this
3586BA:  BLX             j__ZN7CMatrix10SetRotateXEf; CMatrix::SetRotateX(float)
3586BE:  LDR             R0, [R4,#0x50]
3586C0:  MOV             R1, R5; x
3586C2:  LDR             R0, [R0,#0x14]; this
3586C4:  BLX             j__ZN7CMatrix7RotateZEf; CMatrix::RotateZ(float)
3586C8:  LDR             R0, [R4,#0x50]
3586CA:  LDR             R0, [R0,#0x14]
3586CC:  VLDR            S0, [R0,#0x30]
3586D0:  VLDR            S2, [R0,#0x34]
3586D4:  VLDR            S4, [R0,#0x38]
3586D8:  VADD.F32        S0, S16, S0
3586DC:  VADD.F32        S2, S18, S2
3586E0:  VADD.F32        S4, S20, S4
3586E4:  VSTR            S0, [R0,#0x30]
3586E8:  VSTR            S2, [R0,#0x34]
3586EC:  VSTR            S4, [R0,#0x38]
3586F0:  LDR             R2, [R4,#0x50]
3586F2:  LDR             R0, [R2,#0x18]
3586F4:  CBZ             R0, loc_35870A
3586F6:  LDR             R1, [R0,#4]
3586F8:  LDR             R0, [R2,#0x14]
3586FA:  ADDS            R1, #0x10
3586FC:  CBZ             R0, loc_358704
3586FE:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
358702:  B               loc_35870A
358704:  ADDS            R0, R2, #4
358706:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
35870A:  LDR             R0, [R4,#0x50]; this
35870C:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
358710:  ADD.W           R8, R8, #0x7C ; '|'
358714:  CMP.W           R8, #0x3E0
358718:  BNE.W           loc_3582FE
35871C:  ADD             SP, SP, #0x38 ; '8'
35871E:  VPOP            {D8-D10}
358722:  ADD             SP, SP, #4
358724:  POP.W           {R8-R11}
358728:  POP             {R4-R7,PC}
