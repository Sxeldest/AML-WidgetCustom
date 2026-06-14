; =========================================================
; Game Engine Function: _ZN26CTaskComplexDriveFireTruck18CreateFirstSubTaskEP4CPed
; Address            : 0x5119B0 - 0x511A06
; =========================================================

5119B0:  PUSH            {R4,R6,R7,LR}
5119B2:  ADD             R7, SP, #8
5119B4:  MOV             R4, R0
5119B6:  LDRB.W          R0, [R1,#0x485]
5119BA:  LSLS            R0, R0, #0x1F
5119BC:  BEQ             loc_5119F4
5119BE:  LDR.W           R0, [R1,#0x590]
5119C2:  CBZ             R0, loc_5119F4
5119C4:  LDRB            R0, [R4,#0x10]
5119C6:  CBZ             R0, loc_511A00
5119C8:  LDR             R0, =(gFireManager_ptr - 0x5119D0)
5119CA:  LDR             R2, [R4,#0xC]
5119CC:  ADD             R0, PC; gFireManager_ptr
5119CE:  LDR             R3, [R2,#0x14]
5119D0:  LDR             R0, [R0]; gFireManager ; this
5119D2:  ADD.W           R1, R3, #0x30 ; '0'
5119D6:  CMP             R3, #0
5119D8:  IT EQ
5119DA:  ADDEQ           R1, R2, #4; CVector *
5119DC:  MOVS            R2, #1; bool
5119DE:  MOVS            R3, #1; bool
5119E0:  BLX             j__ZN12CFireManager15FindNearestFireERK7CVectorbb; CFireManager::FindNearestFire(CVector const&,bool,bool)
5119E4:  MOVW            R1, #0x2C6
5119E8:  CMP             R0, #0
5119EA:  STR             R0, [R4,#0x18]
5119EC:  IT EQ
5119EE:  MOVWEQ          R1, #0x2C7
5119F2:  B               loc_5119F8
5119F4:  MOVW            R1, #0x516; int
5119F8:  MOV             R0, R4; this
5119FA:  POP.W           {R4,R6,R7,LR}
5119FE:  B               _ZNK26CTaskComplexDriveFireTruck13CreateSubTaskEiP4CPed; CTaskComplexDriveFireTruck::CreateSubTask(int,CPed *)
511A00:  MOVW            R1, #0x2C5
511A04:  B               loc_5119F8
