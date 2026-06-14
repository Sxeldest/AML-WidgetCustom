; =========================================================
; Game Engine Function: _ZN24CTaskComplexWalkRoundCarD2Ev
; Address            : 0x50C2E4 - 0x50C316
; =========================================================

50C2E4:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexWalkRoundCar::~CTaskComplexWalkRoundCar()'
50C2E6:  ADD             R7, SP, #8
50C2E8:  MOV             R4, R0
50C2EA:  LDR             R0, =(_ZTV24CTaskComplexWalkRoundCar_ptr - 0x50C2F2)
50C2EC:  MOV             R1, R4
50C2EE:  ADD             R0, PC; _ZTV24CTaskComplexWalkRoundCar_ptr
50C2F0:  LDR             R2, [R0]; `vtable for'CTaskComplexWalkRoundCar ...
50C2F2:  LDR.W           R0, [R1,#0x1C]!; CEntity **
50C2F6:  ADDS            R2, #8
50C2F8:  STR             R2, [R4]
50C2FA:  CMP             R0, #0
50C2FC:  IT NE
50C2FE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50C302:  LDR             R0, [R4,#0x20]; void *
50C304:  CMP             R0, #0
50C306:  IT NE
50C308:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
50C30C:  MOV             R0, R4; this
50C30E:  POP.W           {R4,R6,R7,LR}
50C312:  B.W             sub_18EDE8
