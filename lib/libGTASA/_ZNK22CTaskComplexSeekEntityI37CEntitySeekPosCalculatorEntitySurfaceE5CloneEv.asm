; =========================================================
; Game Engine Function: _ZNK22CTaskComplexSeekEntityI37CEntitySeekPosCalculatorEntitySurfaceE5CloneEv
; Address            : 0x49A3F4 - 0x49A4B2
; =========================================================

49A3F4:  PUSH            {R4-R7,LR}
49A3F6:  ADD             R7, SP, #0xC
49A3F8:  PUSH.W          {R8,R9,R11}
49A3FC:  VPUSH           {D8-D9}
49A400:  MOV             R4, R0
49A402:  MOVS            R0, #dword_4C; this
49A404:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49A408:  MOV             R5, R0
49A40A:  ADD.W           R0, R4, #0x10
49A40E:  VLD1.32         {D8-D9}, [R0]
49A412:  MOV             R0, R5; this
49A414:  LDR             R6, [R4,#0xC]
49A416:  LDR.W           R8, [R4,#0x24]
49A41A:  LDRB.W          R9, [R4,#0x48]
49A41E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
49A422:  LDR             R0, =(_ZTV37CEntitySeekPosCalculatorEntitySurface_ptr - 0x49A430)
49A424:  ADD.W           R2, R5, #0x10
49A428:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI37CEntitySeekPosCalculatorEntitySurfaceE_ptr - 0x49A436)
49A42A:  CMP             R6, #0
49A42C:  ADD             R0, PC; _ZTV37CEntitySeekPosCalculatorEntitySurface_ptr
49A42E:  VST1.32         {D8-D9}, [R2]
49A432:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI37CEntitySeekPosCalculatorEntitySurfaceE_ptr
49A434:  MOV.W           R2, #0
49A438:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorEntitySurface ...
49A43A:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorEntitySurface> ...
49A43C:  STRD.W          R2, R8, [R5,#0x20]
49A440:  ADD.W           R0, R0, #8
49A444:  STRH            R2, [R5,#0x30]
49A446:  ADD.W           R1, R1, #8
49A44A:  STRH            R2, [R5,#0x3C]
49A44C:  STRD.W          R2, R2, [R5,#0x28]
49A450:  STRD.W          R2, R2, [R5,#0x34]
49A454:  MOV.W           R2, #6
49A458:  LDRB.W          R3, [R5,#0x48]
49A45C:  STR             R1, [R5]
49A45E:  STRD.W          R0, R2, [R5,#0x40]
49A462:  AND.W           R0, R9, #1
49A466:  BIC.W           R1, R3, #0xF
49A46A:  ORR.W           R0, R0, R1
49A46E:  MOV             R1, R5
49A470:  ORR.W           R0, R0, #2
49A474:  STRB.W          R0, [R5,#0x48]
49A478:  STR.W           R6, [R1,#0xC]!; CEntity **
49A47C:  BEQ             loc_49A488
49A47E:  MOV             R0, R6; this
49A480:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
49A484:  LDRB.W          R0, [R5,#0x48]
49A488:  LDR             R1, [R4,#0x44]
49A48A:  AND.W           R0, R0, #0xF7
49A48E:  STR             R1, [R5,#0x44]
49A490:  LDRB.W          R1, [R4,#0x48]
49A494:  AND.W           R1, R1, #8
49A498:  ORRS            R0, R1
49A49A:  STRB.W          R0, [R5,#0x48]
49A49E:  LDR             R0, [R4,#0x20]
49A4A0:  STR             R0, [R5,#0x20]
49A4A2:  LDR             R0, [R4,#0x44]
49A4A4:  STR             R0, [R5,#0x44]
49A4A6:  MOV             R0, R5
49A4A8:  VPOP            {D8-D9}
49A4AC:  POP.W           {R8,R9,R11}
49A4B0:  POP             {R4-R7,PC}
