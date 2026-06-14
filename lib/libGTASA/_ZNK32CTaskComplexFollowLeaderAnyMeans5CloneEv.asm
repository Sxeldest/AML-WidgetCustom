; =========================================================
; Game Engine Function: _ZNK32CTaskComplexFollowLeaderAnyMeans5CloneEv
; Address            : 0x546224 - 0x546272
; =========================================================

546224:  PUSH            {R4-R7,LR}
546226:  ADD             R7, SP, #0xC
546228:  PUSH.W          {R8}
54622C:  MOV             R6, R0
54622E:  MOVS            R0, #dword_24; this
546230:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
546234:  MOV             R4, R0
546236:  LDRD.W          R8, R5, [R6,#0xC]
54623A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
54623E:  LDR             R0, =(_ZTV32CTaskComplexFollowLeaderAnyMeans_ptr - 0x54624C)
546240:  MOV             R1, R4
546242:  STR.W           R8, [R4,#0xC]
546246:  CMP             R5, #0
546248:  ADD             R0, PC; _ZTV32CTaskComplexFollowLeaderAnyMeans_ptr
54624A:  LDR             R0, [R0]; `vtable for'CTaskComplexFollowLeaderAnyMeans ...
54624C:  ADD.W           R0, R0, #8
546250:  STR             R0, [R4]
546252:  STR.W           R5, [R1,#0x10]!; CEntity **
546256:  VLDR            D16, [R6,#0x14]
54625A:  LDR             R0, [R6,#0x1C]
54625C:  STR             R0, [R4,#0x1C]
54625E:  VSTR            D16, [R4,#0x14]
546262:  ITT NE
546264:  MOVNE           R0, R5; this
546266:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
54626A:  MOV             R0, R4
54626C:  POP.W           {R8}
546270:  POP             {R4-R7,PC}
