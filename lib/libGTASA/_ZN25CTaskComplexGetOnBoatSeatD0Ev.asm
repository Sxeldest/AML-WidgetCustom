; =========================================================
; Game Engine Function: _ZN25CTaskComplexGetOnBoatSeatD0Ev
; Address            : 0x506264 - 0x506290
; =========================================================

506264:  PUSH            {R4,R6,R7,LR}
506266:  ADD             R7, SP, #8
506268:  MOV             R4, R0
50626A:  LDR             R0, =(_ZTV25CTaskComplexGetOnBoatSeat_ptr - 0x506272)
50626C:  MOV             R1, R4
50626E:  ADD             R0, PC; _ZTV25CTaskComplexGetOnBoatSeat_ptr
506270:  LDR             R2, [R0]; `vtable for'CTaskComplexGetOnBoatSeat ...
506272:  LDR.W           R0, [R1,#0xC]!; CEntity **
506276:  ADDS            R2, #8
506278:  STR             R2, [R4]
50627A:  CMP             R0, #0
50627C:  IT NE
50627E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
506282:  MOV             R0, R4; this
506284:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
506288:  POP.W           {R4,R6,R7,LR}
50628C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
