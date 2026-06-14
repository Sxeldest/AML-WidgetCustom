; =========================================================
; Game Engine Function: _ZN25CTaskComplexGetOnBoatSeatD2Ev
; Address            : 0x506238 - 0x506260
; =========================================================

506238:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexGetOnBoatSeat::~CTaskComplexGetOnBoatSeat()'
50623A:  ADD             R7, SP, #8
50623C:  MOV             R4, R0
50623E:  LDR             R0, =(_ZTV25CTaskComplexGetOnBoatSeat_ptr - 0x506246)
506240:  MOV             R1, R4
506242:  ADD             R0, PC; _ZTV25CTaskComplexGetOnBoatSeat_ptr
506244:  LDR             R2, [R0]; `vtable for'CTaskComplexGetOnBoatSeat ...
506246:  LDR.W           R0, [R1,#0xC]!; CEntity **
50624A:  ADDS            R2, #8
50624C:  STR             R2, [R4]
50624E:  CMP             R0, #0
506250:  IT NE
506252:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
506256:  MOV             R0, R4; this
506258:  POP.W           {R4,R6,R7,LR}
50625C:  B.W             sub_18EDE8
