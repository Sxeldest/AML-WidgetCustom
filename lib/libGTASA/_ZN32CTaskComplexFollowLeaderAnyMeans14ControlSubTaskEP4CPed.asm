; =========================================================
; Game Engine Function: _ZN32CTaskComplexFollowLeaderAnyMeans14ControlSubTaskEP4CPed
; Address            : 0x545524 - 0x5455C6
; =========================================================

545524:  PUSH            {R4-R7,LR}
545526:  ADD             R7, SP, #0xC
545528:  PUSH.W          {R8}
54552C:  MOV             R5, R0
54552E:  LDR             R0, [R5,#0x10]
545530:  CMP             R0, #0
545532:  BEQ             loc_5455BC
545534:  LDR             R4, [R5,#8]
545536:  LDR             R0, [R4]
545538:  LDR             R1, [R0,#0x14]
54553A:  MOV             R0, R4
54553C:  BLX             R1
54553E:  MOVW            R1, #0x391; unsigned int
545542:  CMP             R0, R1
545544:  BNE             loc_5455BE
545546:  LDR             R0, [R5,#0x10]
545548:  LDRB.W          R0, [R0,#0x485]
54554C:  LSLS            R0, R0, #0x1F
54554E:  BEQ             loc_5455BE
545550:  MOVS            R0, #dword_34; this
545552:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
545556:  MOV             R4, R0
545558:  LDR.W           R8, [R5,#0x10]
54555C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
545560:  LDR             R1, =(_ZTV30CTaskComplexSeekEntityAnyMeansI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x54556E)
545562:  MOV.W           R2, #0x3E8
545566:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorXYOffset_ptr - 0x545572)
545568:  MOV             R6, R4
54556A:  ADD             R1, PC; _ZTV30CTaskComplexSeekEntityAnyMeansI32CEntitySeekPosCalculatorXYOffsetE_ptr
54556C:  STR             R2, [R4,#0x10]
54556E:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorXYOffset_ptr
545570:  MOV.W           R2, #0x41000000
545574:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntityAnyMeans<CEntitySeekPosCalculatorXYOffset> ...
545576:  CMP.W           R8, #0
54557A:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorXYOffset ...
54557C:  STR             R2, [R4,#0x14]
54557E:  MOV.W           R2, #0
545582:  ADD.W           R1, R1, #8
545586:  STRH            R2, [R4,#0x20]
545588:  STRD.W          R2, R2, [R4,#0x2C]
54558C:  ADD.W           R0, R0, #8
545590:  STRD.W          R2, R2, [R4,#0x18]
545594:  STR             R1, [R4]
545596:  MOV             R1, R4
545598:  STR             R0, [R4,#0x24]
54559A:  STR.W           R2, [R6,#0x28]!
54559E:  STR.W           R8, [R1,#0xC]!; CEntity **
5455A2:  ITT NE
5455A4:  MOVNE           R0, R8; this
5455A6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5455AA:  VLDR            D16, [R5,#0x14]
5455AE:  LDR             R0, [R5,#0x1C]
5455B0:  STR             R0, [R6,#8]
5455B2:  MOVS            R0, #7
5455B4:  VSTR            D16, [R6]
5455B8:  STR             R0, [R4,#0x50]
5455BA:  B               loc_5455BE
5455BC:  MOVS            R4, #0
5455BE:  MOV             R0, R4
5455C0:  POP.W           {R8}
5455C4:  POP             {R4-R7,PC}
