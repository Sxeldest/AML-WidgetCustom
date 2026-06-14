; =========================================================
; Game Engine Function: _ZN25CTaskComplexKillPedOnFoot17CreateNextSubTaskEP4CPed
; Address            : 0x4E02B8 - 0x4E0586
; =========================================================

4E02B8:  PUSH            {R4-R7,LR}
4E02BA:  ADD             R7, SP, #0xC
4E02BC:  PUSH.W          {R8,R9,R11}
4E02C0:  VPUSH           {D8-D13}
4E02C4:  SUB             SP, SP, #0x28
4E02C6:  MOV             R9, R0
4E02C8:  MOV             R4, R1
4E02CA:  LDR.W           R0, [R9,#0x10]
4E02CE:  MOV.W           R5, #0xFFFFFFFF
4E02D2:  MOV             R8, #0xFFBFFFFF
4E02D6:  CMP             R0, #0
4E02D8:  BEQ.W           loc_4E0440
4E02DC:  LDR.W           R0, [R9,#8]
4E02E0:  LDR             R1, [R0]
4E02E2:  LDR             R1, [R1,#0x14]
4E02E4:  BLX             R1
4E02E6:  MOVW            R1, #0x2CE
4E02EA:  MOVS            R6, #0
4E02EC:  CMP             R0, R1
4E02EE:  BGT             loc_4E0370
4E02F0:  CMP             R0, #0xCA
4E02F2:  BLE             loc_4E03A6
4E02F4:  CMP             R0, #0xCB
4E02F6:  BEQ.W           loc_4E0440
4E02FA:  MOVW            R1, #0x2BF
4E02FE:  CMP             R0, R1
4E0300:  BEQ             loc_4E03D4
4E0302:  CMP.W           R0, #0x2C0
4E0306:  BNE.W           loc_4E046C
4E030A:  LDR.W           R0, [R9,#0x10]; this
4E030E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4E0312:  CMP             R0, #1
4E0314:  ITE EQ
4E0316:  LDREQ.W         R5, [R9,#0x10]
4E031A:  MOVNE           R5, #0
4E031C:  LDRB.W          R0, [R4,#0x485]
4E0320:  LSLS            R0, R0, #0x1F
4E0322:  BNE.W           loc_4E047A
4E0326:  LDR.W           R2, [R9,#0x10]
4E032A:  LDR             R1, [R4,#0x14]
4E032C:  LDR             R3, [R2,#0x14]
4E032E:  ADD.W           R0, R1, #0x30 ; '0'
4E0332:  CMP             R1, #0
4E0334:  IT EQ
4E0336:  ADDEQ           R0, R4, #4; this
4E0338:  ADD.W           R1, R3, #0x30 ; '0'
4E033C:  CMP             R3, #0
4E033E:  IT EQ
4E0340:  ADDEQ           R1, R2, #4
4E0342:  CMP             R2, #0
4E0344:  BEQ             loc_4E03DE
4E0346:  VLDR            S16, [R0]
4E034A:  VLDR            S20, [R0,#4]
4E034E:  VLDR            S18, [R0,#8]
4E0352:  VLDR            S22, [R1]
4E0356:  VLDR            S26, [R1,#4]
4E035A:  VLDR            S24, [R1,#8]
4E035E:  BLX             j__ZN10CCullZones8NoPoliceEv; CCullZones::NoPolice(void)
4E0362:  CMP             R0, #0
4E0364:  BEQ.W           loc_4E0498
4E0368:  CMP             R5, #0
4E036A:  BNE.W           loc_4E04E6
4E036E:  B               loc_4E03DE
4E0370:  SUBW            R1, R0, #0x3E9
4E0374:  CMP             R1, #2
4E0376:  BCC             loc_4E0440
4E0378:  MOVW            R1, #0x3EB
4E037C:  CMP             R0, R1
4E037E:  BEQ             loc_4E0440
4E0380:  MOVW            R1, #0x2CF; unsigned int
4E0384:  CMP             R0, R1
4E0386:  BNE             loc_4E046C
4E0388:  MOVS            R0, #dword_34; this
4E038A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E038E:  LDR.W           R1, [R4,#0x590]; CVehicle *
4E0392:  MOV             R6, R0
4E0394:  MOVS            R0, #1
4E0396:  MOVS            R2, #0; int
4E0398:  STRD.W          R0, R0, [SP,#0x70+var_70]; bool
4E039C:  MOV             R0, R6; this
4E039E:  MOVS            R3, #0; int
4E03A0:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
4E03A4:  B               loc_4E046C
4E03A6:  CMP             R0, #0xC8
4E03A8:  BEQ             loc_4E0440
4E03AA:  CMP             R0, #0xCA
4E03AC:  BNE             loc_4E046C
4E03AE:  LDR.W           R0, [R4,#0x59C]
4E03B2:  CMP             R0, #6
4E03B4:  BNE             loc_4E0400
4E03B6:  LDRB.W          R0, [R4,#0x7A4]
4E03BA:  CBZ             R0, loc_4E0400
4E03BC:  MOV.W           R0, #0xFFFFFFFF; int
4E03C0:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
4E03C4:  LDRH            R0, [R0,#0x1C]
4E03C6:  CMP             R0, #0
4E03C8:  BEQ.W           loc_4E052E
4E03CC:  MOV             R0, R9
4E03CE:  MOVW            R1, #0x3EA
4E03D2:  B               loc_4E0486
4E03D4:  LDR.W           R0, [R9,#8]
4E03D8:  LDRB            R0, [R0,#0x10]
4E03DA:  LSLS            R0, R0, #0x1D
4E03DC:  BMI             loc_4E0480
4E03DE:  LDRSB.W         R0, [R4,#0x71C]
4E03E2:  RSB.W           R0, R0, R0,LSL#3
4E03E6:  ADD.W           R0, R4, R0,LSL#2
4E03EA:  ADDW            R0, R0, #0x5A4; this
4E03EE:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
4E03F2:  MOVW            R1, #0x3EA
4E03F6:  CMP             R0, #0
4E03F8:  IT NE
4E03FA:  MOVWNE          R1, #0x3E9
4E03FE:  B               loc_4E0484
4E0400:  LDRB.W          R0, [R9,#0xC]
4E0404:  AND.W           R0, R0, #0x60 ; '`'
4E0408:  CMP             R0, #0x60 ; '`'
4E040A:  BNE             loc_4E0440
4E040C:  MOV.W           R0, #0xFFFFFFFF; int
4E0410:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
4E0414:  LDRB            R0, [R0,#0x1E]
4E0416:  LSLS            R0, R0, #0x1D
4E0418:  BMI             loc_4E0440
4E041A:  LDRB.W          R1, [R9,#0xC]
4E041E:  LDR.W           R0, [R9]
4E0422:  AND.W           R1, R1, #0xBF
4E0426:  STRB.W          R1, [R9,#0xC]
4E042A:  MOV             R1, R4
4E042C:  LDR             R2, [R0,#0x2C]
4E042E:  MOV             R0, R9
4E0430:  ADD             SP, SP, #0x28 ; '('
4E0432:  VPOP            {D8-D13}
4E0436:  POP.W           {R8,R9,R11}
4E043A:  POP.W           {R4-R7,LR}
4E043E:  BX              R2
4E0440:  LDR.W           R0, [R4,#0x484]
4E0444:  MOVS            R6, #0
4E0446:  LDR.W           R1, [R4,#0x488]
4E044A:  LDR.W           R2, [R4,#0x48C]
4E044E:  ANDS            R0, R5
4E0450:  LDR.W           R3, [R4,#0x490]
4E0454:  ANDS            R1, R5
4E0456:  STR.W           R0, [R4,#0x484]
4E045A:  AND.W           R2, R2, R8
4E045E:  STR.W           R1, [R4,#0x488]
4E0462:  ANDS            R3, R5
4E0464:  STR.W           R2, [R4,#0x48C]
4E0468:  STR.W           R3, [R4,#0x490]
4E046C:  MOV             R0, R6
4E046E:  ADD             SP, SP, #0x28 ; '('
4E0470:  VPOP            {D8-D13}
4E0474:  POP.W           {R8,R9,R11}
4E0478:  POP             {R4-R7,PC}
4E047A:  MOVW            R1, #0x2CF
4E047E:  B               loc_4E0484
4E0480:  MOVW            R1, #0x3EB; int
4E0484:  MOV             R0, R9; this
4E0486:  MOV             R2, R4; CPed *
4E0488:  ADD             SP, SP, #0x28 ; '('
4E048A:  VPOP            {D8-D13}
4E048E:  POP.W           {R8,R9,R11}
4E0492:  POP.W           {R4-R7,LR}
4E0496:  B               _ZN25CTaskComplexKillPedOnFoot13CreateSubTaskEiP4CPed; CTaskComplexKillPedOnFoot::CreateSubTask(int,CPed *)
4E0498:  LDR.W           R0, [R9,#0x10]
4E049C:  LDR.W           R0, [R0,#0x56C]
4E04A0:  CMP             R0, #0
4E04A2:  IT NE
4E04A4:  CMPNE           R5, #0
4E04A6:  BEQ             loc_4E03DE
4E04A8:  VSUB.F32        S0, S26, S20
4E04AC:  VSUB.F32        S2, S22, S16
4E04B0:  VSUB.F32        S4, S24, S18
4E04B4:  VMUL.F32        S0, S0, S0
4E04B8:  VMUL.F32        S2, S2, S2
4E04BC:  VMUL.F32        S4, S4, S4
4E04C0:  VADD.F32        S0, S2, S0
4E04C4:  VMOV.F32        S2, #5.0
4E04C8:  VADD.F32        S0, S0, S4
4E04CC:  VSQRT.F32       S0, S0
4E04D0:  VCMPE.F32       S0, S2
4E04D4:  VMRS            APSR_nzcv, FPSCR
4E04D8:  BGE.W           loc_4E03DE
4E04DC:  LDR.W           R1, [R4,#0x56C]
4E04E0:  CMP             R0, R1
4E04E2:  BEQ.W           loc_4E03DE
4E04E6:  LDR.W           R0, [R5,#(elf_hash_bucket+0x348)]
4E04EA:  LDRB.W          R0, [R0,#(elf_hash_bucket+0x27D2 - 0x289A)]
4E04EE:  LSLS            R0, R0, #0x1F
4E04F0:  BEQ.W           loc_4E03DE
4E04F4:  LDR.W           R0, [R4,#0x59C]
4E04F8:  CMP             R0, #6
4E04FA:  ITT NE
4E04FC:  SUBNE           R0, #7
4E04FE:  CMPNE           R0, #9
4E0500:  BHI.W           loc_4E03DE
4E0504:  LDRB.W          R0, [R4,#0x448]
4E0508:  CMP             R0, #2
4E050A:  BEQ.W           loc_4E03DE
4E050E:  MOV             R0, R4
4E0510:  MOVS            R1, #0x16
4E0512:  MOV.W           R2, #0x3E8
4E0516:  MOVS            R3, #1
4E0518:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
4E051C:  MOV             R0, R4
4E051E:  MOVS            R1, #0x16
4E0520:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
4E0524:  MOV             R0, R4
4E0526:  MOVS            R1, #1
4E0528:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4E052C:  B               loc_4E03DE
4E052E:  ADD.W           R8, SP, #0x70+var_68
4E0532:  MOV.W           R0, #0x41000000
4E0536:  STR             R0, [SP,#0x70+var_70]; float
4E0538:  MOVS            R1, #0; int
4E053A:  MOV             R0, R8; this
4E053C:  MOVS            R2, #0; bool
4E053E:  MOVS            R3, #0; bool
4E0540:  MOVS            R5, #0
4E0542:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4E0546:  MOV             R1, R4; CPed *
4E0548:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
4E054C:  MOVS            R0, #off_18; this
4E054E:  LDRB.W          R4, [R9,#0xC]
4E0552:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4E0556:  MOV             R6, R0
4E0558:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4E055C:  LDR             R0, =(_ZTV16CTaskSimplePause_ptr - 0x4E056C)
4E055E:  AND.W           R1, R4, #0x60 ; '`'
4E0562:  MOVW            R2, #0x2710
4E0566:  CMP             R1, #0x60 ; '`'
4E0568:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
4E056A:  STRH            R5, [R6,#0x10]
4E056C:  IT NE
4E056E:  MOVNE.W         R2, #0x7D0
4E0572:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
4E0574:  STR             R2, [R6,#0x14]
4E0576:  ADDS            R0, #8
4E0578:  STRD.W          R5, R5, [R6,#8]
4E057C:  STR             R0, [R6]
4E057E:  MOV             R0, R8; this
4E0580:  BLX             j__ZN21CTaskSimpleStandStillD2Ev; CTaskSimpleStandStill::~CTaskSimpleStandStill()
4E0584:  B               loc_4E046C
