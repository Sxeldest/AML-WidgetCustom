; =========================================================
; Game Engine Function: _ZN29CTaskComplexEnterBoatAsDriverD2Ev
; Address            : 0x4F8398 - 0x4F83C0
; =========================================================

4F8398:  PUSH            {R4,R6,R7,LR}
4F839A:  ADD             R7, SP, #8
4F839C:  MOV             R4, R0
4F839E:  LDR             R0, =(_ZTV29CTaskComplexEnterBoatAsDriver_ptr - 0x4F83A6)
4F83A0:  MOV             R1, R4
4F83A2:  ADD             R0, PC; _ZTV29CTaskComplexEnterBoatAsDriver_ptr
4F83A4:  LDR             R2, [R0]; `vtable for'CTaskComplexEnterBoatAsDriver ...
4F83A6:  LDR.W           R0, [R1,#0xC]!; CEntity **
4F83AA:  ADDS            R2, #8
4F83AC:  STR             R2, [R4]
4F83AE:  CMP             R0, #0
4F83B0:  IT NE
4F83B2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F83B6:  MOV             R0, R4; this
4F83B8:  POP.W           {R4,R6,R7,LR}
4F83BC:  B.W             sub_18EDE8
