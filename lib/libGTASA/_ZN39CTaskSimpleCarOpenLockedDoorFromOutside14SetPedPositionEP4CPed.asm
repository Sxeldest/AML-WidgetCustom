; =========================================================
; Game Engine Function: _ZN39CTaskSimpleCarOpenLockedDoorFromOutside14SetPedPositionEP4CPed
; Address            : 0x50116C - 0x50117E
; =========================================================

50116C:  PUSH            {R7,LR}
50116E:  MOV             R7, SP
501170:  LDRD.W          R3, R2, [R0,#0xC]; CAnimBlendAssociation *
501174:  LDR             R0, [R0,#0x18]; this
501176:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar10ProcessPedEP4CPedP8CVehicleP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::ProcessPed(CPed *,CVehicle *,CAnimBlendAssociation *)
50117A:  MOVS            R0, #1
50117C:  POP             {R7,PC}
