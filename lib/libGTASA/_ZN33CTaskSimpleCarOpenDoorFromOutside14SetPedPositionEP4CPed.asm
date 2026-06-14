; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarOpenDoorFromOutside14SetPedPositionEP4CPed
; Address            : 0x500F28 - 0x500F3A
; =========================================================

500F28:  PUSH            {R7,LR}
500F2A:  MOV             R7, SP
500F2C:  LDRD.W          R3, R2, [R0,#0xC]; CAnimBlendAssociation *
500F30:  LDR             R0, [R0,#0x1C]; this
500F32:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar10ProcessPedEP4CPedP8CVehicleP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::ProcessPed(CPed *,CVehicle *,CAnimBlendAssociation *)
500F36:  MOVS            R0, #1
500F38:  POP             {R7,PC}
