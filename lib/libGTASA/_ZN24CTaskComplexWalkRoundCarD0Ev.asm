; =========================================================
; Game Engine Function: _ZN24CTaskComplexWalkRoundCarD0Ev
; Address            : 0x50C31C - 0x50C352
; =========================================================

50C31C:  PUSH            {R4,R6,R7,LR}
50C31E:  ADD             R7, SP, #8
50C320:  MOV             R4, R0
50C322:  LDR             R0, =(_ZTV24CTaskComplexWalkRoundCar_ptr - 0x50C32A)
50C324:  MOV             R1, R4
50C326:  ADD             R0, PC; _ZTV24CTaskComplexWalkRoundCar_ptr
50C328:  LDR             R2, [R0]; `vtable for'CTaskComplexWalkRoundCar ...
50C32A:  LDR.W           R0, [R1,#0x1C]!; CEntity **
50C32E:  ADDS            R2, #8
50C330:  STR             R2, [R4]
50C332:  CMP             R0, #0
50C334:  IT NE
50C336:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50C33A:  LDR             R0, [R4,#0x20]; void *
50C33C:  CMP             R0, #0
50C33E:  IT NE
50C340:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
50C344:  MOV             R0, R4; this
50C346:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
50C34A:  POP.W           {R4,R6,R7,LR}
50C34E:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
