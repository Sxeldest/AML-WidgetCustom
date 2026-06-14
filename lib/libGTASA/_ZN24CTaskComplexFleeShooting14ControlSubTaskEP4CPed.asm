; =========================================================
; Game Engine Function: _ZN24CTaskComplexFleeShooting14ControlSubTaskEP4CPed
; Address            : 0x5142E8 - 0x51442A
; =========================================================

5142E8:  PUSH            {R4-R7,LR}
5142EA:  ADD             R7, SP, #0xC
5142EC:  PUSH.W          {R8}
5142F0:  SUB             SP, SP, #0x10
5142F2:  MOV             R4, R1
5142F4:  MOV             R5, R0
5142F6:  LDR.W           R0, [R4,#0x440]
5142FA:  MOVS            R1, #0; int
5142FC:  ADDS            R0, #4; this
5142FE:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
514302:  MOV             R6, R0
514304:  CBZ             R6, loc_51433E
514306:  MOVS            R0, #6
514308:  STR             R0, [R5,#0x30]
51430A:  LDR             R0, [R6]
51430C:  LDR             R1, [R0,#0x14]
51430E:  MOV             R0, R6
514310:  BLX             R1
514312:  MOVW            R1, #0x3F9
514316:  CMP             R0, R1
514318:  BNE             loc_5143FE
51431A:  LDRB.W          R0, [R5,#0x50]
51431E:  CMP             R0, #0
514320:  BEQ             loc_5143F2
514322:  LDRB.W          R0, [R5,#0x51]
514326:  CMP             R0, #0
514328:  BEQ             loc_5143E0
51432A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x514332)
51432C:  MOVS            R1, #0
51432E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
514330:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
514332:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
514334:  STRB.W          R1, [R5,#0x51]
514338:  STR             R0, [R5,#0x48]
51433A:  MOV             R1, R0
51433C:  B               loc_5143EA
51433E:  LDRB.W          R0, [R5,#0x50]
514342:  MOVS            R1, #7
514344:  STR             R1, [R5,#0x30]
514346:  CMP             R0, #0
514348:  BEQ             loc_5143FE
51434A:  LDRB.W          R0, [R5,#0x51]
51434E:  CBZ             R0, loc_514364
514350:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x514358)
514352:  MOVS            R1, #0
514354:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
514356:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
514358:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
51435A:  STRB.W          R1, [R5,#0x51]
51435E:  STR             R0, [R5,#0x48]
514360:  MOV             R1, R0
514362:  B               loc_51436E
514364:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51436C)
514366:  LDR             R1, [R5,#0x48]
514368:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51436A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
51436C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
51436E:  LDR             R2, [R5,#0x4C]
514370:  ADD             R1, R2
514372:  CMP             R1, R0
514374:  BHI             loc_5143FE
514376:  LDRSB.W         R0, [R4,#0x71C]
51437A:  RSB.W           R0, R0, R0,LSL#3
51437E:  ADD.W           R0, R4, R0,LSL#2
514382:  LDR.W           R6, [R0,#0x5A4]
514386:  MOV             R0, R4; this
514388:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
51438C:  MOV             R1, R0
51438E:  MOV             R0, R6
514390:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
514394:  LDRB            R0, [R0,#0x18]
514396:  LSLS            R0, R0, #0x1E
514398:  BPL             loc_5143FE
51439A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5143A2)
51439C:  LDR             R1, [R5,#0x40]; unsigned int
51439E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5143A0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5143A2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5143A4:  STRD.W          R0, R1, [R5,#0x48]
5143A8:  MOVS            R0, #1
5143AA:  STRB.W          R0, [R5,#0x50]
5143AE:  MOVS            R0, #off_3C; this
5143B0:  LDR.W           R8, [R4,#0x440]
5143B4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5143B8:  LDR             R1, [R5,#0xC]
5143BA:  MOV             R6, R0
5143BC:  MOVS            R0, #0
5143BE:  MOVS            R2, #3
5143C0:  STRD.W          R0, R2, [SP,#0x20+var_20]
5143C4:  MOVS            R3, #0
5143C6:  STRD.W          R2, R0, [SP,#0x20+var_18]
5143CA:  MOV             R0, R6
5143CC:  MOVS            R2, #0
5143CE:  BLX             j__ZN17CTaskSimpleUseGunC2EP7CEntity7CVectorash; CTaskSimpleUseGun::CTaskSimpleUseGun(CEntity *,CVector,signed char,short,uchar)
5143D2:  ADD.W           R0, R8, #4; this
5143D6:  MOV             R1, R6; CTask *
5143D8:  MOVS            R2, #0; int
5143DA:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
5143DE:  B               loc_5143FE
5143E0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5143E8)
5143E2:  LDR             R1, [R5,#0x48]
5143E4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5143E6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5143E8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5143EA:  LDR             R2, [R5,#0x4C]
5143EC:  ADD             R1, R2
5143EE:  CMP             R1, R0
5143F0:  BLS             loc_51440E
5143F2:  LDR             R2, [R5,#0xC]; CEntity *
5143F4:  MOV             R0, R6; this
5143F6:  MOV             R1, R4; CPed *
5143F8:  MOVS            R3, #3; signed __int8
5143FA:  BLX             j__ZN17CTaskSimpleUseGun10ControlGunEP4CPedP7CEntitya; CTaskSimpleUseGun::ControlGun(CPed *,CEntity *,signed char)
5143FE:  MOV             R0, R5; this
514400:  MOV             R1, R4; CPed *
514402:  ADD             SP, SP, #0x10
514404:  POP.W           {R8}
514408:  POP.W           {R4-R7,LR}
51440C:  B               _ZN27CTaskComplexSmartFleeEntity14ControlSubTaskEP4CPed; CTaskComplexSmartFleeEntity::ControlSubTask(CPed *)
51440E:  LDRB            R1, [R6,#0x10]
514410:  CMP             R1, #3
514412:  BNE             loc_5143FE
514414:  LDR             R1, [R5,#0x44]
514416:  MOVS            R3, #1
514418:  LDR             R2, [R5,#0xC]
51441A:  STRB.W          R3, [R5,#0x50]
51441E:  MOVS            R3, #6
514420:  STRD.W          R0, R1, [R5,#0x48]
514424:  MOV             R0, R6
514426:  MOV             R1, R4
514428:  B               loc_5143FA
