; =========================================================
; Game Engine Function: _ZN24CTaskComplexShuffleSeatsD2Ev
; Address            : 0x4FCB5C - 0x4FCB90
; =========================================================

4FCB5C:  PUSH            {R4,R6,R7,LR}
4FCB5E:  ADD             R7, SP, #8
4FCB60:  MOV             R4, R0
4FCB62:  LDR             R0, =(_ZTV24CTaskComplexShuffleSeats_ptr - 0x4FCB6A)
4FCB64:  MOV             R1, R4
4FCB66:  ADD             R0, PC; _ZTV24CTaskComplexShuffleSeats_ptr
4FCB68:  LDR             R2, [R0]; `vtable for'CTaskComplexShuffleSeats ...
4FCB6A:  LDR.W           R0, [R1,#0xC]!; CEntity **
4FCB6E:  ADDS            R2, #8
4FCB70:  STR             R2, [R4]
4FCB72:  CMP             R0, #0
4FCB74:  IT NE
4FCB76:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4FCB7A:  LDR             R0, [R4,#0x24]; this
4FCB7C:  CBZ             R0, loc_4FCB86
4FCB7E:  BLX             j__ZN28CTaskUtilityLineUpPedWithCarD2Ev; CTaskUtilityLineUpPedWithCar::~CTaskUtilityLineUpPedWithCar()
4FCB82:  BLX             _ZdlPv; operator delete(void *)
4FCB86:  MOV             R0, R4; this
4FCB88:  POP.W           {R4,R6,R7,LR}
4FCB8C:  B.W             sub_18EDE8
