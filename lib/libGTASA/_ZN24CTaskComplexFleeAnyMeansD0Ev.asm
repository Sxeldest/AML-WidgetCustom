; =========================================================
; Game Engine Function: _ZN24CTaskComplexFleeAnyMeansD0Ev
; Address            : 0x514544 - 0x514592
; =========================================================

514544:  PUSH            {R4,R5,R7,LR}
514546:  ADD             R7, SP, #8
514548:  MOV             R4, R0
51454A:  LDR             R0, =(_ZTV24CTaskComplexFleeAnyMeans_ptr - 0x514552)
51454C:  MOV             R5, R4
51454E:  ADD             R0, PC; _ZTV24CTaskComplexFleeAnyMeans_ptr
514550:  LDR             R1, [R0]; `vtable for'CTaskComplexFleeAnyMeans ...
514552:  LDR.W           R0, [R5,#0xC]!; this
514556:  ADDS            R1, #8
514558:  STR             R1, [R4]
51455A:  CBZ             R0, loc_51457A
51455C:  MOV             R1, R5; CEntity **
51455E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
514562:  LDR             R0, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x514568)
514564:  ADD             R0, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
514566:  LDR             R1, [R0]; `vtable for'CTaskComplexSmartFleeEntity ...
514568:  LDR             R0, [R4,#0xC]; this
51456A:  ADDS            R1, #8
51456C:  STR             R1, [R4]
51456E:  CMP             R0, #0
514570:  ITT NE
514572:  MOVNE           R1, R5; CEntity **
514574:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
514578:  B               loc_514584
51457A:  LDR             R0, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x514580)
51457C:  ADD             R0, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
51457E:  LDR             R0, [R0]; `vtable for'CTaskComplexSmartFleeEntity ...
514580:  ADDS            R0, #8
514582:  STR             R0, [R4]
514584:  MOV             R0, R4; this
514586:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
51458A:  POP.W           {R4,R5,R7,LR}
51458E:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
