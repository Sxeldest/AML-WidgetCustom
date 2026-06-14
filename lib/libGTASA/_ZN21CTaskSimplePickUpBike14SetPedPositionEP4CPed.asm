; =========================================================
; Game Engine Function: _ZN21CTaskSimplePickUpBike14SetPedPositionEP4CPed
; Address            : 0x501408 - 0x50141A
; =========================================================

501408:  PUSH            {R7,LR}
50140A:  MOV             R7, SP
50140C:  LDRD.W          R3, R2, [R0,#0xC]; CAnimBlendAssociation *
501410:  LDR             R0, [R0,#0x18]; this
501412:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar10ProcessPedEP4CPedP8CVehicleP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::ProcessPed(CPed *,CVehicle *,CAnimBlendAssociation *)
501416:  MOVS            R0, #1
501418:  POP             {R7,PC}
