; =========================================================
; Game Engine Function: _ZN24CTaskComplexShuffleSeats17CreateNextSubTaskEP4CPed
; Address            : 0x4FCCA0 - 0x4FCD8E
; =========================================================

4FCCA0:  PUSH            {R4-R7,LR}
4FCCA2:  ADD             R7, SP, #0xC
4FCCA4:  PUSH.W          {R11}
4FCCA8:  MOV             R5, R0
4FCCAA:  MOV             R4, R1
4FCCAC:  LDR             R0, [R5,#8]
4FCCAE:  LDRB.W          R6, [R5,#0x28]
4FCCB2:  LDR             R1, [R0]
4FCCB4:  LDR             R1, [R1,#0x14]
4FCCB6:  BLX             R1
4FCCB8:  MOV             R1, R0
4FCCBA:  SUB.W           R2, R1, #0x328; switch 9 cases
4FCCBE:  MOVS            R0, #0
4FCCC0:  CBZ             R6, loc_4FCCF4
4FCCC2:  CMP             R2, #8
4FCCC4:  BHI             def_4FCCC6; jumptable 004FCCC6 default case
4FCCC6:  TBB.W           [PC,R2]; switch jump
4FCCCA:  DCB 5; jump table for switch statement
4FCCCB:  DCB 0x36
4FCCCC:  DCB 0x36
4FCCCD:  DCB 5
4FCCCE:  DCB 5
4FCCCF:  DCB 0x36
4FCCD0:  DCB 0x36
4FCCD1:  DCB 0x36
4FCCD2:  DCB 0x29
4FCCD3:  ALIGN 2
4FCCD4:  LDR.W           R0, [R4,#0x590]; jumptable 004FCCC6 cases 808,811,812
4FCCD8:  MOV             R1, R4; CVehicle *
4FCCDA:  BLX             j__ZN13CCarEnterExit23ComputeTargetDoorToExitERK8CVehicleRK4CPed; CCarEnterExit::ComputeTargetDoorToExit(CVehicle const&,CPed const&)
4FCCDE:  MOV             R5, R0
4FCCE0:  MOVS            R0, #off_18; this
4FCCE2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FCCE6:  LDR.W           R1, [R4,#0x590]; CVehicle *
4FCCEA:  MOV             R2, R5; int
4FCCEC:  MOVS            R3, #1; bool
4FCCEE:  BLX             j__ZN23CTaskSimpleCarSetPedOutC2EP8CVehicleib; CTaskSimpleCarSetPedOut::CTaskSimpleCarSetPedOut(CVehicle *,int,bool)
4FCCF2:  B               loc_4FCD36; jumptable 004FCCC6 cases 809,810,813-815
4FCCF4:  CMP             R2, #8
4FCCF6:  BHI             def_4FCCC6; jumptable 004FCCC6 default case
4FCCF8:  TBB.W           [PC,R2]; switch jump
4FCCFC:  DCB 5; jump table for switch statement
4FCCFD:  DCB 0x1D
4FCCFE:  DCB 0x1D
4FCCFF:  DCB 0x10
4FCD00:  DCB 0x10
4FCD01:  DCB 0x1D
4FCD02:  DCB 0x1D
4FCD03:  DCB 0x1D
4FCD04:  DCB 0x10
4FCD05:  ALIGN 2
4FCD06:  LDR             R0, [R5,#0x10]; jumptable 004FCCF8 case 808
4FCD08:  SUBS            R0, #8
4FCD0A:  CMP             R0, #4
4FCD0C:  BCS             loc_4FCD3C
4FCD0E:  ADR             R1, dword_4FCD90
4FCD10:  LDR.W           R1, [R1,R0,LSL#2]
4FCD14:  STR             R1, [R5,#0x14]
4FCD16:  B               loc_4FCD3E
4FCD18:  CMP             R1, #0xC8; jumptable 004FCCC6 default case
4FCD1A:  BNE             loc_4FCD36; jumptable 004FCCC6 cases 809,810,813-815
4FCD1C:  CBZ             R4, loc_4FCD2E; jumptable 004FCCC6 case 816
4FCD1E:  LDRB.W          R0, [R4,#0x485]
4FCD22:  LSLS            R0, R0, #0x1F
4FCD24:  ITTT EQ
4FCD26:  LDREQ           R0, [R4,#0x1C]
4FCD28:  ORREQ.W         R0, R0, #1
4FCD2C:  STREQ           R0, [R4,#0x1C]
4FCD2E:  MOVS            R0, #0
4FCD30:  POP.W           {R11}
4FCD34:  POP             {R4-R7,PC}
4FCD36:  POP.W           {R11}; jumptable 004FCCC6 cases 809,810,813-815
4FCD3A:  POP             {R4-R7,PC}
4FCD3C:  LDR             R1, [R5,#0x14]; CVehicle *
4FCD3E:  LDR             R0, [R5,#0xC]; this
4FCD40:  CMP             R1, #0xA
4FCD42:  BNE             loc_4FCD66
4FCD44:  LDR.W           R1, [R0,#0x464]
4FCD48:  CMP             R1, #0
4FCD4A:  BNE             loc_4FCD1C; jumptable 004FCCC6 case 816
4FCD4C:  MOV             R1, R4; CPed *
4FCD4E:  BLX             j__ZN8CVehicle15RemovePassengerEP4CPed; CVehicle::RemovePassenger(CPed *)
4FCD52:  MOVS            R0, #dword_1C; this
4FCD54:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FCD58:  LDR             R1, [R5,#0xC]; CVehicle *
4FCD5A:  LDR             R2, [R5,#0x24]; CTaskUtilityLineUpPedWithCar *
4FCD5C:  BLX             j__ZN30CTaskSimpleCarSetPedInAsDriverC2EP8CVehicleP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsDriver::CTaskSimpleCarSetPedInAsDriver(CVehicle *,CTaskUtilityLineUpPedWithCar *)
4FCD60:  POP.W           {R11}
4FCD64:  POP             {R4-R7,PC}
4FCD66:  BLX             j__ZN13CCarEnterExit32ComputePassengerIndexFromCarDoorERK8CVehiclei; CCarEnterExit::ComputePassengerIndexFromCarDoor(CVehicle const&,int)
4FCD6A:  LDR             R1, [R5,#0xC]
4FCD6C:  MOV             R2, R4; CPed *
4FCD6E:  ADD.W           R0, R1, R0,LSL#2
4FCD72:  MOVW            R1, #0x516
4FCD76:  LDR.W           R0, [R0,#0x468]
4FCD7A:  CMP             R0, #0
4FCD7C:  MOV             R0, R5; this
4FCD7E:  IT EQ
4FCD80:  MOVWEQ          R1, #0x32B; int
4FCD84:  POP.W           {R11}
4FCD88:  POP.W           {R4-R7,LR}
4FCD8C:  B               _ZN24CTaskComplexShuffleSeats13CreateSubTaskEiP4CPed; CTaskComplexShuffleSeats::CreateSubTask(int,CPed *)
