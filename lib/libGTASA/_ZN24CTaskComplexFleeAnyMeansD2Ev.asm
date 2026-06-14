; =========================================================
; Game Engine Function: _ZN24CTaskComplexFleeAnyMeansD2Ev
; Address            : 0x5144EC - 0x514536
; =========================================================

5144EC:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexFleeAnyMeans::~CTaskComplexFleeAnyMeans()'
5144EE:  ADD             R7, SP, #8
5144F0:  MOV             R4, R0
5144F2:  LDR             R0, =(_ZTV24CTaskComplexFleeAnyMeans_ptr - 0x5144FA)
5144F4:  MOV             R5, R4
5144F6:  ADD             R0, PC; _ZTV24CTaskComplexFleeAnyMeans_ptr
5144F8:  LDR             R1, [R0]; `vtable for'CTaskComplexFleeAnyMeans ...
5144FA:  LDR.W           R0, [R5,#0xC]!; this
5144FE:  ADDS            R1, #8
514500:  STR             R1, [R4]
514502:  CBZ             R0, loc_514522
514504:  MOV             R1, R5; CEntity **
514506:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51450A:  LDR             R0, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x514510)
51450C:  ADD             R0, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
51450E:  LDR             R1, [R0]; `vtable for'CTaskComplexSmartFleeEntity ...
514510:  LDR             R0, [R4,#0xC]; this
514512:  ADDS            R1, #8
514514:  STR             R1, [R4]
514516:  CMP             R0, #0
514518:  ITT NE
51451A:  MOVNE           R1, R5; CEntity **
51451C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
514520:  B               loc_51452C
514522:  LDR             R0, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x514528)
514524:  ADD             R0, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
514526:  LDR             R0, [R0]; `vtable for'CTaskComplexSmartFleeEntity ...
514528:  ADDS            R0, #8
51452A:  STR             R0, [R4]
51452C:  MOV             R0, R4; this
51452E:  POP.W           {R4,R5,R7,LR}
514532:  B.W             sub_18EDE8
