; =========================================================
; Game Engine Function: _ZN25CTaskSimpleCarForcePedOut10ProcessPedEP4CPed
; Address            : 0x503C00 - 0x503C72
; =========================================================

503C00:  PUSH            {R4,R5,R7,LR}
503C02:  ADD             R7, SP, #8
503C04:  MOV             R5, R0
503C06:  MOV             R4, R1
503C08:  LDR             R0, [R5,#8]; this
503C0A:  CBZ             R0, loc_503C1A
503C0C:  MOV             R1, R4; CPed *
503C0E:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
503C12:  CMP             R0, #1
503C14:  BNE             loc_503C20
503C16:  LDR             R2, [R5,#8]
503C18:  B               loc_503C62
503C1A:  MOVS            R5, #1
503C1C:  MOV             R0, R5
503C1E:  POP             {R4,R5,R7,PC}
503C20:  LDRD.W          R0, R1, [R5,#8]; CVehicle *
503C24:  MOVS            R2, #0; int
503C26:  BLX             j__ZN13CCarEnterExit23ComputeOppositeDoorFlagERK8CVehicleib; CCarEnterExit::ComputeOppositeDoorFlag(CVehicle const&,int,bool)
503C2A:  LDR             R2, [R5,#8]; int
503C2C:  LDRB.W          R1, [R2,#0x48B]
503C30:  TST             R0, R1
503C32:  BEQ             loc_503C62
503C34:  LDR.W           R0, [R2,#0x464]
503C38:  CBZ             R0, loc_503C40
503C3A:  MOVS            R5, #0
503C3C:  MOV             R0, R5
503C3E:  POP             {R4,R5,R7,PC}
503C40:  LDR             R1, [R5,#0xC]; CVehicle *
503C42:  MOV             R0, R2; this
503C44:  BLX             j__ZN13CCarEnterExit32ComputePassengerIndexFromCarDoorERK8CVehiclei; CCarEnterExit::ComputePassengerIndexFromCarDoor(CVehicle const&,int)
503C48:  LDR             R2, [R5,#8]; CVehicle *
503C4A:  CMP             R0, #1
503C4C:  BLT             loc_503C62
503C4E:  MOVS            R1, #0
503C50:  ADD.W           R3, R2, R1,LSL#2
503C54:  LDR.W           R3, [R3,#0x468]
503C58:  CMP             R3, #0
503C5A:  BNE             loc_503C3A
503C5C:  ADDS            R1, #1
503C5E:  CMP             R1, R0
503C60:  BLT             loc_503C50
503C62:  LDR             R1, [R5,#0xC]; int
503C64:  MOV             R0, R4; this
503C66:  MOVS            R3, #1; bool
503C68:  MOVS            R5, #1
503C6A:  BLX             j__ZN4CPed25PositionPedOutOfCollisionEiP8CVehicleb; CPed::PositionPedOutOfCollision(int,CVehicle *,bool)
503C6E:  MOV             R0, R5
503C70:  POP             {R4,R5,R7,PC}
