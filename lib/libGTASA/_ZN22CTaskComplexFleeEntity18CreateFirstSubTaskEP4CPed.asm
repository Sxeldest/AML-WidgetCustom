; =========================================================
; Game Engine Function: _ZN22CTaskComplexFleeEntity18CreateFirstSubTaskEP4CPed
; Address            : 0x513340 - 0x513454
; =========================================================

513340:  PUSH            {R4-R7,LR}
513342:  ADD             R7, SP, #0xC
513344:  PUSH.W          {R8,R9,R11}
513348:  SUB             SP, SP, #0x20
51334A:  MOV             R4, R0
51334C:  LDR             R0, =(g_InterestingEvents_ptr - 0x513356)
51334E:  MOV             R5, R1
513350:  MOVS            R1, #0xD
513352:  ADD             R0, PC; g_InterestingEvents_ptr
513354:  MOV             R2, R5
513356:  LDR             R0, [R0]; g_InterestingEvents
513358:  BLX             j__ZN18CInterestingEvents3AddENS_5ETypeEP7CEntity; CInterestingEvents::Add(CInterestingEvents::EType,CEntity *)
51335C:  LDR             R0, =(g_ikChainMan_ptr - 0x513364)
51335E:  MOV             R1, R5; CPed *
513360:  ADD             R0, PC; g_ikChainMan_ptr
513362:  LDR             R0, [R0]; g_ikChainMan ; this
513364:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
513368:  CBNZ            R0, loc_5133CC
51336A:  LDR             R3, [R4,#0xC]; int
51336C:  LDRB.W          R0, [R3,#0x3A]
513370:  AND.W           R0, R0, #7
513374:  CMP             R0, #3
513376:  BNE             loc_513392
513378:  LDR.W           R12, =(g_ikChainMan_ptr - 0x51338A)
51337C:  MOVS            R1, #0
51337E:  MOV.W           LR, #3
513382:  MOV.W           R8, #0x1F4
513386:  ADD             R12, PC; g_ikChainMan_ptr
513388:  MOV.W           R9, #0x3E800000
51338C:  MOVS            R2, #1
51338E:  MOVS            R6, #5
513390:  B               loc_5133AC
513392:  LDR.W           R12, =(g_ikChainMan_ptr - 0x5133A4)
513396:  MOVS            R1, #0
513398:  MOV.W           LR, #3
51339C:  MOV.W           R8, #0x1F4
5133A0:  ADD             R12, PC; g_ikChainMan_ptr
5133A2:  MOV.W           R9, #0x3E800000
5133A6:  MOVS            R2, #1
5133A8:  MOV.W           R6, #0xFFFFFFFF
5133AC:  MOVW            R0, #0xBB8
5133B0:  STRD.W          R0, R6, [SP,#0x38+var_38]; int
5133B4:  ADD             R0, SP, #0x38+var_30
5133B6:  STM.W           R0, {R1,R2,R9}
5133BA:  MOV             R2, R5; CPed *
5133BC:  LDR.W           R0, [R12]; g_ikChainMan ; int
5133C0:  STRD.W          R8, LR, [SP,#0x38+var_24]; int
5133C4:  STR             R1, [SP,#0x38+var_1C]; int
5133C6:  ADR             R1, aTaskfleeentity; "TaskFleeEntity"
5133C8:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
5133CC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5133D8)
5133CE:  MOV.W           R8, #1
5133D2:  LDR             R2, [R4,#0x34]
5133D4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5133D6:  LDR             R1, [R4,#0xC]; unsigned int
5133D8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5133DA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5133DC:  STRB.W          R8, [R4,#0x28]
5133E0:  STRD.W          R0, R2, [R4,#0x20]
5133E4:  LDR             R0, [R1,#0x14]
5133E6:  ADD.W           R2, R0, #0x30 ; '0'
5133EA:  CMP             R0, #0
5133EC:  IT EQ
5133EE:  ADDEQ           R2, R1, #4
5133F0:  VLDR            D16, [R2]
5133F4:  LDR             R0, [R2,#8]
5133F6:  STR             R0, [R4,#0x18]
5133F8:  MOVS            R0, #off_3C; this
5133FA:  VSTR            D16, [R4,#0x10]
5133FE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
513402:  LDR             R6, [R4,#0x1C]
513404:  LDR             R5, [R4,#0x2C]
513406:  LDRB.W          R9, [R4,#0x30]
51340A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51340E:  LDR             R1, =(_ZTV21CTaskComplexFleePoint_ptr - 0x513414)
513410:  ADD             R1, PC; _ZTV21CTaskComplexFleePoint_ptr
513412:  LDR             R1, [R1]; `vtable for'CTaskComplexFleePoint ...
513414:  ADDS            R1, #8
513416:  STR             R1, [R0]
513418:  LDR             R1, [R4,#0x18]
51341A:  VLDR            D16, [R4,#0x10]
51341E:  STR             R1, [R0,#0x14]
513420:  MOVS            R1, #0
513422:  STRD.W          R6, R1, [R0,#0x24]
513426:  STR             R1, [R0,#0x2C]
513428:  STRH            R1, [R0,#0x30]
51342A:  STR             R5, [R0,#0x34]
51342C:  STRB.W          R9, [R0,#0x38]
513430:  STRB.W          R1, [R0,#0x39]
513434:  ADDS            R1, R6, #1
513436:  VSTR            D16, [R0,#0xC]
51343A:  BEQ             loc_51344C
51343C:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x513442)
51343E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
513440:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
513442:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
513444:  STRD.W          R1, R6, [R0,#0x28]
513448:  STRB.W          R8, [R0,#0x30]
51344C:  ADD             SP, SP, #0x20 ; ' '
51344E:  POP.W           {R8,R9,R11}
513452:  POP             {R4-R7,PC}
