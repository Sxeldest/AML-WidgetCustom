; =========================================================
; Game Engine Function: _ZNK30CTaskComplexFollowPedFootsteps5CloneEv
; Address            : 0x546464 - 0x5464D0
; =========================================================

546464:  PUSH            {R4-R7,LR}
546466:  ADD             R7, SP, #0xC
546468:  PUSH.W          {R11}
54646C:  MOV             R5, R0
54646E:  MOVS            R0, #dword_20; this
546470:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
546474:  MOV             R4, R0
546476:  LDR             R5, [R5,#0xC]
546478:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
54647C:  LDR             R0, =(_ZTV30CTaskComplexFollowPedFootsteps_ptr - 0x546488)
54647E:  MOVS            R6, #0
546480:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x54648C)
546482:  CMP             R5, #0
546484:  ADD             R0, PC; _ZTV30CTaskComplexFollowPedFootsteps_ptr
546486:  LDRB            R3, [R4,#0x1E]
546488:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54648A:  LDR             R0, [R0]; `vtable for'CTaskComplexFollowPedFootsteps ...
54648C:  LDR             R2, [R1]; CTimer::m_snTimeInMilliseconds ...
54648E:  MOV             R1, R4
546490:  ADD.W           R0, R0, #8
546494:  STR             R0, [R4]
546496:  STR.W           R5, [R1,#0xC]!; CEntity **
54649A:  LDR             R0, [R2]; CTimer::m_snTimeInMilliseconds
54649C:  STRD.W          R0, R6, [R4,#0x10]
5464A0:  MOV.W           R0, #4
5464A4:  STR             R6, [R4,#0x18]
5464A6:  STRH            R0, [R4,#0x1C]
5464A8:  AND.W           R0, R3, #0xFE
5464AC:  STRB            R0, [R4,#0x1E]
5464AE:  ITT NE
5464B0:  MOVNE           R0, R5; this
5464B2:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5464B6:  MOVS            R0, #dword_64; this
5464B8:  BLX             j__ZN11CPointRoutenwEj; CPointRoute::operator new(uint)
5464BC:  CMP             R0, #0
5464BE:  STR             R6, [R0]
5464C0:  STR             R0, [R4,#0x18]
5464C2:  ITT NE
5464C4:  MOVNE           R1, #0
5464C6:  STRNE           R1, [R0]
5464C8:  MOV             R0, R4
5464CA:  POP.W           {R11}
5464CE:  POP             {R4-R7,PC}
