; =========================================================
; Game Engine Function: _ZNK27CTaskComplexDestroyCarMelee5CloneEv
; Address            : 0x4EA4C8 - 0x4EA518
; =========================================================

4EA4C8:  PUSH            {R4,R5,R7,LR}
4EA4CA:  ADD             R7, SP, #8
4EA4CC:  MOV             R5, R0
4EA4CE:  MOVS            R0, #dword_34; this
4EA4D0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EA4D4:  MOV             R4, R0
4EA4D6:  LDR             R5, [R5,#0x10]
4EA4D8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EA4DC:  LDR             R0, =(_ZTV27CTaskComplexDestroyCarMelee_ptr - 0x4EA4EE)
4EA4DE:  VMOV.I32        Q8, #0
4EA4E2:  ADD.W           R1, R4, #0x14
4EA4E6:  MOV.W           R2, #0xFFFFFFFF
4EA4EA:  ADD             R0, PC; _ZTV27CTaskComplexDestroyCarMelee_ptr
4EA4EC:  CMP             R5, #0
4EA4EE:  VST1.32         {D16-D17}, [R1]
4EA4F2:  MOV.W           R1, #0
4EA4F6:  LDR             R0, [R0]; `vtable for'CTaskComplexDestroyCarMelee ...
4EA4F8:  STRH            R1, [R4,#0xC]
4EA4FA:  STRD.W          R1, R1, [R4,#0x28]
4EA4FE:  MOV             R1, R4
4EA500:  STR             R2, [R4,#0x30]
4EA502:  ADD.W           R0, R0, #8
4EA506:  STR             R0, [R4]
4EA508:  STR.W           R5, [R1,#0x10]!; CEntity **
4EA50C:  ITT NE
4EA50E:  MOVNE           R0, R5; this
4EA510:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4EA514:  MOV             R0, R4
4EA516:  POP             {R4,R5,R7,PC}
