; =========================================================
; Game Engine Function: _ZNK30CTaskComplexSeekEntityAnyMeansI32CEntitySeekPosCalculatorXYOffsetE5CloneEv
; Address            : 0x54653C - 0x5465B4
; =========================================================

54653C:  PUSH            {R4-R7,LR}
54653E:  ADD             R7, SP, #0xC
546540:  PUSH.W          {R8}
546544:  MOV             R8, R0
546546:  MOVS            R0, #dword_34; this
546548:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
54654C:  MOV             R5, R0
54654E:  LDR.W           R6, [R8,#0xC]
546552:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
546556:  LDR             R1, =(_ZTV30CTaskComplexSeekEntityAnyMeansI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x546564)
546558:  MOV.W           R2, #0x3E8
54655C:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorXYOffset_ptr - 0x546568)
54655E:  MOV             R4, R5
546560:  ADD             R1, PC; _ZTV30CTaskComplexSeekEntityAnyMeansI32CEntitySeekPosCalculatorXYOffsetE_ptr
546562:  STR             R2, [R5,#0x10]
546564:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorXYOffset_ptr
546566:  MOV.W           R2, #0x41000000
54656A:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntityAnyMeans<CEntitySeekPosCalculatorXYOffset> ...
54656C:  CMP             R6, #0
54656E:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorXYOffset ...
546570:  STR             R2, [R5,#0x14]
546572:  MOV.W           R2, #0
546576:  ADD.W           R1, R1, #8
54657A:  STRH            R2, [R5,#0x20]
54657C:  STRD.W          R2, R2, [R5,#0x2C]
546580:  ADD.W           R0, R0, #8
546584:  STRD.W          R2, R2, [R5,#0x18]
546588:  STR             R1, [R5]
54658A:  MOV             R1, R5
54658C:  STR             R0, [R5,#0x24]
54658E:  STR.W           R2, [R4,#0x28]!
546592:  STR.W           R6, [R1,#0xC]!; CEntity **
546596:  ITT NE
546598:  MOVNE           R0, R6; this
54659A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
54659E:  VLDR            D16, [R8,#0x28]
5465A2:  LDR.W           R0, [R8,#0x30]
5465A6:  STR             R0, [R4,#8]
5465A8:  MOV             R0, R5
5465AA:  VSTR            D16, [R4]
5465AE:  POP.W           {R8}
5465B2:  POP             {R4-R7,PC}
