; =========================================================
; Game Engine Function: _ZN19CEventDraggedOutCarC2EPK8CVehiclePK4CPedb
; Address            : 0x3719A8 - 0x3719FA
; =========================================================

3719A8:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CEventDraggedOutCar::CEventDraggedOutCar(CVehicle const*, CPed const*, bool)'
3719AA:  ADD             R7, SP, #8
3719AC:  MOV             R4, R0
3719AE:  LDR             R0, =(_ZTV19CEventDraggedOutCar_ptr - 0x3719B8)
3719B0:  MOVS            R5, #0
3719B2:  CMP             R1, #0
3719B4:  ADD             R0, PC; _ZTV19CEventDraggedOutCar_ptr
3719B6:  STR             R5, [R4,#4]
3719B8:  MOV             R5, #0xC80100
3719C0:  LDR             R0, [R0]; `vtable for'CEventDraggedOutCar ...
3719C2:  STR             R5, [R4,#8]
3719C4:  MOVW            R5, #0xFFFF
3719C8:  STRH            R5, [R4,#0xC]
3719CA:  MOV             R5, R4
3719CC:  STRB            R3, [R4,#0x18]
3719CE:  MOV             R3, R4
3719D0:  ADD.W           R0, R0, #8
3719D4:  STR             R0, [R4]
3719D6:  STR.W           R1, [R3,#0x14]!
3719DA:  STR.W           R2, [R5,#0x10]!
3719DE:  BEQ             loc_3719EA
3719E0:  MOV             R0, R1; this
3719E2:  MOV             R1, R3; CEntity **
3719E4:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3719E8:  LDR             R2, [R5]
3719EA:  CMP             R2, #0
3719EC:  ITTT NE
3719EE:  MOVNE           R0, R2; this
3719F0:  MOVNE           R1, R5; CEntity **
3719F2:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3719F6:  MOV             R0, R4
3719F8:  POP             {R4,R5,R7,PC}
