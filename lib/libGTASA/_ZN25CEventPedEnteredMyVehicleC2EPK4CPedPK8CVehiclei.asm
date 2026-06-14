; =========================================================
; Game Engine Function: _ZN25CEventPedEnteredMyVehicleC2EPK4CPedPK8CVehiclei
; Address            : 0x374580 - 0x3745C6
; =========================================================

374580:  PUSH            {R4,R5,R7,LR}
374582:  ADD             R7, SP, #8
374584:  MOV             R4, R0
374586:  LDR             R0, =(_ZTV25CEventPedEnteredMyVehicle_ptr - 0x37458E)
374588:  MOVS            R5, #0
37458A:  ADD             R0, PC; _ZTV25CEventPedEnteredMyVehicle_ptr
37458C:  STR             R5, [R4,#4]
37458E:  MOV             R5, #0xC80100
374596:  LDR             R0, [R0]; `vtable for'CEventPedEnteredMyVehicle ...
374598:  STR             R5, [R4,#8]
37459A:  MOVW            R5, #0xFFFF
37459E:  STRH            R5, [R4,#0xC]
3745A0:  MOV             R5, R4
3745A2:  STR             R3, [R4,#0x18]
3745A4:  ADDS            R0, #8
3745A6:  STR             R0, [R4]
3745A8:  MOV             R0, R1; this
3745AA:  STR.W           R2, [R5,#0x14]!
3745AE:  MOV             R2, R4
3745B0:  STR.W           R1, [R2,#0x10]!
3745B4:  MOV             R1, R2; CEntity **
3745B6:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3745BA:  LDR             R0, [R5]; this
3745BC:  MOV             R1, R5; CEntity **
3745BE:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3745C2:  MOV             R0, R4
3745C4:  POP             {R4,R5,R7,PC}
