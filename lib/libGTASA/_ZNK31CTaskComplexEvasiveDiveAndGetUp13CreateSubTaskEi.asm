; =========================================================
; Game Engine Function: _ZNK31CTaskComplexEvasiveDiveAndGetUp13CreateSubTaskEi
; Address            : 0x50B3CC - 0x50B486
; =========================================================

50B3CC:  PUSH            {R4,R5,R7,LR}; float
50B3CE:  ADD             R7, SP, #8
50B3D0:  MOV             R5, R0
50B3D2:  MOVS            R4, #0
50B3D4:  CMP.W           R1, #0x1F6
50B3D8:  BGT             loc_50B3F0
50B3DA:  CMP             R1, #0xCA
50B3DC:  BEQ             loc_50B42A
50B3DE:  CMP             R1, #0xCD
50B3E0:  BNE             loc_50B482
50B3E2:  MOVS            R0, #word_10; this
50B3E4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50B3E8:  MOV             R4, R0
50B3EA:  BLX             j__ZN16CTaskSimpleGetUpC2Ev; CTaskSimpleGetUp::CTaskSimpleGetUp(void)
50B3EE:  POP             {R4,R5,R7,PC}
50B3F0:  MOVW            R0, #0x1F7
50B3F4:  CMP             R1, R0
50B3F6:  BEQ             loc_50B44E
50B3F8:  MOVW            R0, #0x386
50B3FC:  CMP             R1, R0
50B3FE:  BNE             loc_50B482
50B400:  MOVS            R0, #off_18; this
50B402:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50B406:  MOV             R4, R0
50B408:  LDRD.W          R0, R1, [R5,#0x14]; float
50B40C:  MOVS            R2, #0; float
50B40E:  MOVS            R3, #0; float
50B410:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
50B414:  MOV             R1, R0; float
50B416:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x50B420)
50B418:  MOV.W           R2, #0x40000000; float
50B41C:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
50B41E:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
50B420:  LDR             R3, [R0]; float
50B422:  MOV             R0, R4; this
50B424:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
50B428:  POP             {R4,R5,R7,PC}
50B42A:  MOVS            R0, #off_18; this
50B42C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50B430:  MOV             R4, R0
50B432:  LDR             R5, [R5,#0x10]
50B434:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50B438:  LDR             R0, =(_ZTV16CTaskSimplePause_ptr - 0x50B442)
50B43A:  MOVS            R1, #0; unsigned int
50B43C:  STRH            R1, [R4,#0x10]
50B43E:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
50B440:  STR             R5, [R4,#0x14]
50B442:  STRD.W          R1, R1, [R4,#8]
50B446:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
50B448:  ADDS            R0, #8
50B44A:  STR             R0, [R4]
50B44C:  B               loc_50B482
50B44E:  MOVS            R0, #dword_14; this
50B450:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50B454:  MOV             R4, R0
50B456:  LDR             R5, [R5,#0xC]
50B458:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50B45C:  LDR             R0, =(_ZTV22CTaskSimpleEvasiveDive_ptr - 0x50B468)
50B45E:  MOVS            R1, #0
50B460:  STRB            R1, [R4,#0xC]
50B462:  CMP             R5, #0
50B464:  ADD             R0, PC; _ZTV22CTaskSimpleEvasiveDive_ptr
50B466:  STR             R1, [R4,#0x10]
50B468:  MOV             R1, R4
50B46A:  LDR             R0, [R0]; `vtable for'CTaskSimpleEvasiveDive ...
50B46C:  ADD.W           R0, R0, #8
50B470:  STR             R0, [R4]
50B472:  STR.W           R5, [R1,#8]!; CEntity **
50B476:  BEQ             loc_50B482
50B478:  MOV             R0, R5; this
50B47A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50B47E:  MOV             R0, R4
50B480:  POP             {R4,R5,R7,PC}
50B482:  MOV             R0, R4
50B484:  POP             {R4,R5,R7,PC}
