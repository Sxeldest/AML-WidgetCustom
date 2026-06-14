; =========================================================
; Game Engine Function: _ZNK32CTaskComplexScreamInCarThenLeave5CloneEv
; Address            : 0x4FE9D0 - 0x4FEA18
; =========================================================

4FE9D0:  PUSH            {R4-R7,LR}
4FE9D2:  ADD             R7, SP, #0xC
4FE9D4:  PUSH.W          {R11}
4FE9D8:  MOV             R6, R0
4FE9DA:  MOVS            R0, #dword_20; this
4FE9DC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FE9E0:  MOV             R4, R0
4FE9E2:  LDRD.W          R5, R6, [R6,#0xC]
4FE9E6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FE9EA:  LDR             R0, =(_ZTV32CTaskComplexScreamInCarThenLeave_ptr - 0x4FE9F6)
4FE9EC:  MOVS            R1, #0
4FE9EE:  STR             R6, [R4,#0x10]
4FE9F0:  CMP             R5, #0
4FE9F2:  ADD             R0, PC; _ZTV32CTaskComplexScreamInCarThenLeave_ptr
4FE9F4:  STRH            R1, [R4,#0x1C]
4FE9F6:  STRD.W          R1, R1, [R4,#0x14]
4FE9FA:  MOV             R1, R4
4FE9FC:  LDR             R0, [R0]; `vtable for'CTaskComplexScreamInCarThenLeave ...
4FE9FE:  ADD.W           R0, R0, #8
4FEA02:  STR             R0, [R4]
4FEA04:  STR.W           R5, [R1,#0xC]!; CEntity **
4FEA08:  ITT NE
4FEA0A:  MOVNE           R0, R5; this
4FEA0C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FEA10:  MOV             R0, R4
4FEA12:  POP.W           {R11}
4FEA16:  POP             {R4-R7,PC}
