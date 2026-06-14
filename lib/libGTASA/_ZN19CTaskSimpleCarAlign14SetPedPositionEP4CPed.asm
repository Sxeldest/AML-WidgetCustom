; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarAlign14SetPedPositionEP4CPed
; Address            : 0x500A98 - 0x500ABE
; =========================================================

500A98:  PUSH            {R4,R5,R7,LR}
500A9A:  ADD             R7, SP, #8
500A9C:  SUB             SP, SP, #0x10
500A9E:  MOV             R5, R0
500AA0:  MOV             R4, R1
500AA2:  LDR             R1, [R5,#0x10]; CVehicle *
500AA4:  ADD             R0, SP, #0x18+var_14; this
500AA6:  LDR             R2, [R5,#0x20]; int
500AA8:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
500AAC:  LDRD.W          R3, R2, [R5,#0xC]; CAnimBlendAssociation *
500AB0:  MOV             R1, R4; CPed *
500AB2:  LDR             R0, [R5,#0x24]; this
500AB4:  BLX             j__ZN28CTaskUtilityLineUpPedWithCar10ProcessPedEP4CPedP8CVehicleP21CAnimBlendAssociation; CTaskUtilityLineUpPedWithCar::ProcessPed(CPed *,CVehicle *,CAnimBlendAssociation *)
500AB8:  MOVS            R0, #1
500ABA:  ADD             SP, SP, #0x10
500ABC:  POP             {R4,R5,R7,PC}
