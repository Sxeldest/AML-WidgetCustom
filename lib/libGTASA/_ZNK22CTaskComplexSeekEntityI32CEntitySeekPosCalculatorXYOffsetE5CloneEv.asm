; =========================================================
; Game Engine Function: _ZNK22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE5CloneEv
; Address            : 0x499380 - 0x499452
; =========================================================

499380:  PUSH            {R4-R7,LR}
499382:  ADD             R7, SP, #0xC
499384:  PUSH.W          {R8,R9,R11}
499388:  VPUSH           {D8-D9}
49938C:  MOV             R4, R0
49938E:  MOVS            R0, #dword_58; this
499390:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
499394:  MOV             R5, R0
499396:  ADD.W           R0, R4, #0x10
49939A:  VLD1.32         {D8-D9}, [R0]
49939E:  MOV             R0, R5; this
4993A0:  LDR.W           R9, [R4,#0xC]
4993A4:  LDR             R6, [R4,#0x24]
4993A6:  LDRB.W          R8, [R4,#0x54]
4993AA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4993AE:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorXYOffset_ptr - 0x4993BC)
4993B0:  ADD.W           R2, R5, #0x10
4993B4:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x4993C2)
4993B6:  MOVS            R3, #0
4993B8:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorXYOffset_ptr
4993BA:  VST1.32         {D8-D9}, [R2]
4993BE:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr
4993C0:  MOVS            R2, #6
4993C2:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorXYOffset ...
4993C4:  CMP.W           R9, #0
4993C8:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorXYOffset> ...
4993CA:  STR             R2, [R5,#0x50]
4993CC:  ADD.W           R0, R0, #8
4993D0:  LDRB.W          R2, [R5,#0x54]
4993D4:  ADD.W           R1, R1, #8
4993D8:  STRD.W          R3, R6, [R5,#0x20]
4993DC:  MOV             R6, R5
4993DE:  STRH            R3, [R5,#0x30]
4993E0:  STRH            R3, [R5,#0x3C]
4993E2:  STRD.W          R3, R3, [R5,#0x28]
4993E6:  STRD.W          R3, R3, [R5,#0x34]
4993EA:  STRD.W          R3, R3, [R5,#0x48]
4993EE:  STR             R1, [R5]
4993F0:  BIC.W           R1, R2, #0xF
4993F4:  STR             R0, [R5,#0x40]
4993F6:  AND.W           R0, R8, #1
4993FA:  ORR.W           R0, R0, R1
4993FE:  MOV             R1, R5
499400:  ORR.W           R0, R0, #2
499404:  STRB.W          R0, [R5,#0x54]
499408:  STR.W           R3, [R6,#0x44]!
49940C:  STR.W           R9, [R1,#0xC]!; CEntity **
499410:  BEQ             loc_49941C
499412:  MOV             R0, R9; this
499414:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
499418:  LDRB.W          R0, [R5,#0x54]
49941C:  VLDR            D16, [R4,#0x44]
499420:  AND.W           R0, R0, #0xF7
499424:  LDR             R1, [R4,#0x4C]
499426:  STR             R1, [R6,#8]
499428:  VSTR            D16, [R6]
49942C:  LDR             R1, [R4,#0x50]
49942E:  STR             R1, [R5,#0x50]
499430:  LDRB.W          R1, [R4,#0x54]
499434:  AND.W           R1, R1, #8
499438:  ORRS            R0, R1
49943A:  STRB.W          R0, [R5,#0x54]
49943E:  LDR             R0, [R4,#0x20]
499440:  STR             R0, [R5,#0x20]
499442:  LDR             R0, [R4,#0x50]
499444:  STR             R0, [R5,#0x50]
499446:  MOV             R0, R5
499448:  VPOP            {D8-D9}
49944C:  POP.W           {R8,R9,R11}
499450:  POP             {R4-R7,PC}
