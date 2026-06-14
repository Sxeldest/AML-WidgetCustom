; =========================================================
; Game Engine Function: _ZN24CTaskComplexFleeShootingD2Ev
; Address            : 0x514180 - 0x5141CA
; =========================================================

514180:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexFleeShooting::~CTaskComplexFleeShooting()'
514182:  ADD             R7, SP, #8
514184:  MOV             R4, R0
514186:  LDR             R0, =(_ZTV24CTaskComplexFleeShooting_ptr - 0x51418E)
514188:  MOV             R5, R4
51418A:  ADD             R0, PC; _ZTV24CTaskComplexFleeShooting_ptr
51418C:  LDR             R1, [R0]; `vtable for'CTaskComplexFleeShooting ...
51418E:  LDR.W           R0, [R5,#0xC]!; this
514192:  ADDS            R1, #8
514194:  STR             R1, [R4]
514196:  CBZ             R0, loc_5141B6
514198:  MOV             R1, R5; CEntity **
51419A:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51419E:  LDR             R0, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x5141A4)
5141A0:  ADD             R0, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
5141A2:  LDR             R1, [R0]; `vtable for'CTaskComplexSmartFleeEntity ...
5141A4:  LDR             R0, [R4,#0xC]; this
5141A6:  ADDS            R1, #8
5141A8:  STR             R1, [R4]
5141AA:  CMP             R0, #0
5141AC:  ITT NE
5141AE:  MOVNE           R1, R5; CEntity **
5141B0:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5141B4:  B               loc_5141C0
5141B6:  LDR             R0, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x5141BC)
5141B8:  ADD             R0, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
5141BA:  LDR             R0, [R0]; `vtable for'CTaskComplexSmartFleeEntity ...
5141BC:  ADDS            R0, #8
5141BE:  STR             R0, [R4]
5141C0:  MOV             R0, R4; this
5141C2:  POP.W           {R4,R5,R7,LR}
5141C6:  B.W             sub_18EDE8
