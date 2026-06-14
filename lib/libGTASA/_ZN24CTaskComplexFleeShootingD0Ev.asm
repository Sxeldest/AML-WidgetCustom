; =========================================================
; Game Engine Function: _ZN24CTaskComplexFleeShootingD0Ev
; Address            : 0x5141D8 - 0x514226
; =========================================================

5141D8:  PUSH            {R4,R5,R7,LR}
5141DA:  ADD             R7, SP, #8
5141DC:  MOV             R4, R0
5141DE:  LDR             R0, =(_ZTV24CTaskComplexFleeShooting_ptr - 0x5141E6)
5141E0:  MOV             R5, R4
5141E2:  ADD             R0, PC; _ZTV24CTaskComplexFleeShooting_ptr
5141E4:  LDR             R1, [R0]; `vtable for'CTaskComplexFleeShooting ...
5141E6:  LDR.W           R0, [R5,#0xC]!; this
5141EA:  ADDS            R1, #8
5141EC:  STR             R1, [R4]
5141EE:  CBZ             R0, loc_51420E
5141F0:  MOV             R1, R5; CEntity **
5141F2:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5141F6:  LDR             R0, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x5141FC)
5141F8:  ADD             R0, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
5141FA:  LDR             R1, [R0]; `vtable for'CTaskComplexSmartFleeEntity ...
5141FC:  LDR             R0, [R4,#0xC]; this
5141FE:  ADDS            R1, #8
514200:  STR             R1, [R4]
514202:  CMP             R0, #0
514204:  ITT NE
514206:  MOVNE           R1, R5; CEntity **
514208:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51420C:  B               loc_514218
51420E:  LDR             R0, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x514214)
514210:  ADD             R0, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
514212:  LDR             R0, [R0]; `vtable for'CTaskComplexSmartFleeEntity ...
514214:  ADDS            R0, #8
514216:  STR             R0, [R4]
514218:  MOV             R0, R4; this
51421A:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
51421E:  POP.W           {R4,R5,R7,LR}
514222:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
