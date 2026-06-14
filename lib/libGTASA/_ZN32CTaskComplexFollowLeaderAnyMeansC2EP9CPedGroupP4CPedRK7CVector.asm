; =========================================================
; Game Engine Function: _ZN32CTaskComplexFollowLeaderAnyMeansC2EP9CPedGroupP4CPedRK7CVector
; Address            : 0x545260 - 0x5452A8
; =========================================================

545260:  PUSH            {R4-R7,LR}
545262:  ADD             R7, SP, #0xC
545264:  PUSH.W          {R8}
545268:  MOV             R6, R3
54526A:  MOV             R5, R2
54526C:  MOV             R8, R1
54526E:  MOV             R4, R0
545270:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
545274:  LDR             R0, =(_ZTV32CTaskComplexFollowLeaderAnyMeans_ptr - 0x545282)
545276:  MOV             R1, R4
545278:  STR.W           R8, [R4,#0xC]
54527C:  CMP             R5, #0
54527E:  ADD             R0, PC; _ZTV32CTaskComplexFollowLeaderAnyMeans_ptr
545280:  LDR             R0, [R0]; `vtable for'CTaskComplexFollowLeaderAnyMeans ...
545282:  ADD.W           R0, R0, #8
545286:  STR             R0, [R4]
545288:  STR.W           R5, [R1,#0x10]!; CEntity **
54528C:  VLDR            D16, [R6]
545290:  LDR             R0, [R6,#8]
545292:  STR             R0, [R4,#0x1C]
545294:  VSTR            D16, [R4,#0x14]
545298:  ITT NE
54529A:  MOVNE           R0, R5; this
54529C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5452A0:  MOV             R0, R4
5452A2:  POP.W           {R8}
5452A6:  POP             {R4-R7,PC}
