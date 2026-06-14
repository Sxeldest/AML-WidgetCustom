; =========================================================
; Game Engine Function: _ZN34CTaskSimpleCarCloseDoorFromOutside14SetPedPositionEP4CPed
; Address            : 0x501C1C - 0x501C2E
; =========================================================

501C1C:  PUSH            {R7,LR}
501C1E:  MOV             R7, SP
501C20:  LDRD.W          R3, R2, [R0,#0xC]; CAnimBlendAssociation *
501C24:  LDR             R0, [R0,#0x18]; this
501C26:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar10ProcessPedEP4CPedP8CVehicleP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::ProcessPed(CPed *,CVehicle *,CAnimBlendAssociation *)
501C2A:  MOVS            R0, #1
501C2C:  POP             {R7,PC}
