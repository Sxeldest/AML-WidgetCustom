; =========================================================
; Game Engine Function: _ZN28CTaskSimpleCarSlowDragPedOut14SetPedPositionEP4CPed
; Address            : 0x504554 - 0x504566
; =========================================================

504554:  PUSH            {R7,LR}
504556:  MOV             R7, SP
504558:  LDRD.W          R3, R2, [R0,#0xC]; CAnimBlendAssociation *
50455C:  LDR             R0, [R0,#0x18]; this
50455E:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar10ProcessPedEP4CPedP8CVehicleP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::ProcessPed(CPed *,CVehicle *,CAnimBlendAssociation *)
504562:  MOVS            R0, #1
504564:  POP             {R7,PC}
