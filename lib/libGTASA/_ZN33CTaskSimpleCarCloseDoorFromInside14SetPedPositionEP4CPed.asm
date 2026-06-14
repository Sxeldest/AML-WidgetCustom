; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarCloseDoorFromInside14SetPedPositionEP4CPed
; Address            : 0x501758 - 0x50176A
; =========================================================

501758:  PUSH            {R7,LR}
50175A:  MOV             R7, SP
50175C:  LDRD.W          R3, R2, [R0,#0xC]; CAnimBlendAssociation *
501760:  LDR             R0, [R0,#0x18]; this
501762:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar10ProcessPedEP4CPedP8CVehicleP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::ProcessPed(CPed *,CVehicle *,CAnimBlendAssociation *)
501766:  MOVS            R0, #1
501768:  POP             {R7,PC}
