; =========================================================
; Game Engine Function: _ZN13CEventHandler25ComputePedToChaseResponseEP6CEventP5CTaskS3_
; Address            : 0x380800 - 0x380880
; =========================================================

380800:  PUSH            {R4-R7,LR}
380802:  ADD             R7, SP, #0xC
380804:  PUSH.W          {R11}
380808:  LDR             R5, [R1,#0xC]
38080A:  MOV             R4, R0
38080C:  CBZ             R5, loc_38087A
38080E:  MOVS            R0, #dword_4C; this
380810:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
380814:  MOV             R6, R0
380816:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
38081A:  ADR             R2, dword_380880
38081C:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr - 0x38082A)
38081E:  VLD1.64         {D16-D17}, [R2@128]
380822:  ADD.W           R2, R6, #0x18
380826:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr
380828:  MOV.W           R3, #0x3E8
38082C:  LDR             R1, =(_ZTV32CEntitySeekPosCalculatorStandard_ptr - 0x38083A)
38082E:  VST1.32         {D16-D17}, [R2]
380832:  MOVW            R2, #0x7530
380836:  ADD             R1, PC; _ZTV32CEntitySeekPosCalculatorStandard_ptr
380838:  STRD.W          R2, R3, [R6,#0x10]
38083C:  MOVS            R2, #0
38083E:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard> ...
380840:  STRH            R2, [R6,#0x30]
380842:  STRH            R2, [R6,#0x3C]
380844:  ADDS            R0, #8
380846:  STRD.W          R2, R2, [R6,#0x28]
38084A:  STRD.W          R2, R2, [R6,#0x34]
38084E:  MOVS            R2, #6
380850:  STR             R2, [R6,#0x44]
380852:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculatorStandard ...
380854:  LDRB.W          R2, [R6,#0x48]
380858:  STR             R0, [R6]
38085A:  ADD.W           R0, R1, #8
38085E:  STR             R0, [R6,#0x40]
380860:  AND.W           R0, R2, #0xF0
380864:  MOV             R1, R6
380866:  ORR.W           R0, R0, #3
38086A:  STRB.W          R0, [R6,#0x48]
38086E:  MOV             R0, R5; this
380870:  STR.W           R5, [R1,#0xC]!; CEntity **
380874:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
380878:  STR             R6, [R4,#0x24]
38087A:  POP.W           {R11}
38087E:  POP             {R4-R7,PC}
