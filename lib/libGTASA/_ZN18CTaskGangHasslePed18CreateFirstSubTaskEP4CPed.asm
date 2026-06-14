; =========================================================
; Game Engine Function: _ZN18CTaskGangHasslePed18CreateFirstSubTaskEP4CPed
; Address            : 0x519484 - 0x519586
; =========================================================

519484:  PUSH            {R4-R7,LR}
519486:  ADD             R7, SP, #0xC
519488:  PUSH.W          {R8-R10}
51948C:  MOV             R5, R0
51948E:  MOV.W           R9, #0
519492:  LDR             R0, [R5,#0xC]
519494:  CMP             R0, #0
519496:  BEQ             loc_51957C
519498:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51949E)
51949A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51949C:  LDR             R4, [R0]; CTimer::m_snTimeInMilliseconds ...
51949E:  BLX             rand
5194A2:  LDRD.W          R6, R10, [R5,#0x14]
5194A6:  MOV             R8, R0
5194A8:  LDR             R4, [R4]; CTimer::m_snTimeInMilliseconds
5194AA:  BLX             rand
5194AE:  UXTH            R0, R0
5194B0:  VLDR            S2, =0.000015259
5194B4:  VMOV            S0, R0
5194B8:  SUB.W           R0, R10, R6
5194BC:  VCVT.F32.S32    S0, S0
5194C0:  VMOV            S4, R0
5194C4:  MOVS            R0, #1
5194C6:  VCVT.F32.S32    S4, S4
5194CA:  STR             R4, [R5,#0x20]
5194CC:  VMUL.F32        S0, S0, S2
5194D0:  VMUL.F32        S0, S0, S4
5194D4:  VCVT.S32.F32    S0, S0
5194D8:  STRB.W          R0, [R5,#0x28]
5194DC:  VMOV            R0, S0
5194E0:  ADD             R0, R6
5194E2:  STR             R0, [R5,#0x24]
5194E4:  MOVS            R0, #dword_4C; this
5194E6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5194EA:  MOV             R4, R0
5194EC:  LDR             R5, [R5,#0xC]
5194EE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5194F2:  VMOV            S0, R8
5194F6:  VLDR            S2, =4.6566e-10
5194FA:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr - 0x51950A)
5194FC:  MOV.W           R2, #0x3E8
519500:  VCVT.F32.S32    S0, S0
519504:  LDR             R1, =(_ZTV32CEntitySeekPosCalculatorStandard_ptr - 0x51950E)
519506:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr
519508:  CMP             R5, #0
51950A:  ADD             R1, PC; _ZTV32CEntitySeekPosCalculatorStandard_ptr
51950C:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard> ...
51950E:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculatorStandard ...
519510:  ADD.W           R0, R0, #8
519514:  STR             R0, [R4]
519516:  MOVW            R0, #:lower16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
51951A:  VMUL.F32        S0, S0, S2
51951E:  MOVT            R0, #:upper16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
519522:  VMOV.F32        S2, #3.0
519526:  STRD.W          R0, R2, [R4,#0x10]
51952A:  MOV.W           R0, #0x40000000
51952E:  MOV.W           R2, #6
519532:  VADD.F32        S0, S0, S0
519536:  VADD.F32        S0, S0, S2
51953A:  VSTR            S0, [R4,#0x18]
51953E:  STRD.W          R0, R9, [R4,#0x1C]
519542:  STR             R0, [R4,#0x24]
519544:  ADD.W           R0, R1, #8
519548:  STRH.W          R9, [R4,#0x30]
51954C:  STRH.W          R9, [R4,#0x3C]
519550:  STRD.W          R9, R9, [R4,#0x28]
519554:  STRD.W          R9, R9, [R4,#0x34]
519558:  LDRB.W          R1, [R4,#0x48]
51955C:  STRD.W          R0, R2, [R4,#0x40]
519560:  AND.W           R0, R1, #0xF0
519564:  MOV             R1, R4
519566:  ORR.W           R0, R0, #2
51956A:  STRB.W          R0, [R4,#0x48]
51956E:  STR.W           R5, [R1,#0xC]!; CEntity **
519572:  ITT NE
519574:  MOVNE           R0, R5; this
519576:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
51957A:  B               loc_51957E
51957C:  MOVS            R4, #0
51957E:  MOV             R0, R4
519580:  POP.W           {R8-R10}
519584:  POP             {R4-R7,PC}
