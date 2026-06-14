; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarGetIn14SetPedPositionEP4CPed
; Address            : 0x501EE0 - 0x501EF2
; =========================================================

501EE0:  PUSH            {R7,LR}
501EE2:  MOV             R7, SP
501EE4:  LDR             R3, [R0,#0xC]; CAnimBlendAssociation *
501EE6:  LDR             R2, [R0,#0x18]; CVehicle *
501EE8:  LDR             R0, [R0,#0x20]; this
501EEA:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar10ProcessPedEP4CPedP8CVehicleP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::ProcessPed(CPed *,CVehicle *,CAnimBlendAssociation *)
501EEE:  MOVS            R0, #1
501EF0:  POP             {R7,PC}
