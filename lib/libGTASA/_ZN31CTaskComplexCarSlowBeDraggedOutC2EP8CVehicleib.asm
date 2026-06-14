; =========================================================
; Game Engine Function: _ZN31CTaskComplexCarSlowBeDraggedOutC2EP8CVehicleib
; Address            : 0x504D38 - 0x504D7A
; =========================================================

504D38:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskComplexCarSlowBeDraggedOut::CTaskComplexCarSlowBeDraggedOut(CVehicle *, int, bool)'
504D3A:  ADD             R7, SP, #0xC
504D3C:  PUSH.W          {R8}
504D40:  MOV             R8, R3
504D42:  MOV             R6, R2
504D44:  MOV             R5, R1
504D46:  MOV             R4, R0
504D48:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
504D4C:  LDR             R0, =(_ZTV31CTaskComplexCarSlowBeDraggedOut_ptr - 0x504D58)
504D4E:  MOVS            R1, #0
504D50:  STR             R6, [R4,#0x10]
504D52:  CMP             R5, #0
504D54:  ADD             R0, PC; _ZTV31CTaskComplexCarSlowBeDraggedOut_ptr
504D56:  STRB.W          R8, [R4,#0x14]
504D5A:  STR             R1, [R4,#0x18]
504D5C:  MOV             R1, R4
504D5E:  LDR             R0, [R0]; `vtable for'CTaskComplexCarSlowBeDraggedOut ...
504D60:  ADD.W           R0, R0, #8
504D64:  STR             R0, [R4]
504D66:  STR.W           R5, [R1,#0xC]!; CEntity **
504D6A:  ITT NE
504D6C:  MOVNE           R0, R5; this
504D6E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
504D72:  MOV             R0, R4
504D74:  POP.W           {R8}
504D78:  POP             {R4-R7,PC}
