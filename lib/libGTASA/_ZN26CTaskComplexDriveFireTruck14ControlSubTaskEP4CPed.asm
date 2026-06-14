; =========================================================
; Game Engine Function: _ZN26CTaskComplexDriveFireTruck14ControlSubTaskEP4CPed
; Address            : 0x511A0C - 0x511AE4
; =========================================================

511A0C:  PUSH            {R4-R7,LR}
511A0E:  ADD             R7, SP, #0xC
511A10:  PUSH.W          {R11}
511A14:  MOV             R6, R1
511A16:  MOV             R5, R0
511A18:  LDRB.W          R0, [R6,#0x485]
511A1C:  LSLS            R0, R0, #0x1F
511A1E:  ITT NE
511A20:  LDRNE.W         R0, [R6,#0x590]
511A24:  CMPNE           R0, #0
511A26:  BNE             loc_511A3A
511A28:  LDR             R0, [R5]
511A2A:  MOV             R1, R6
511A2C:  LDR             R2, [R0,#0x2C]
511A2E:  MOV             R0, R5
511A30:  POP.W           {R11}
511A34:  POP.W           {R4-R7,LR}
511A38:  BX              R2
511A3A:  LDR             R4, [R5,#8]
511A3C:  LDR             R0, [R4]
511A3E:  LDR             R1, [R0,#0x14]
511A40:  MOV             R0, R4
511A42:  BLX             R1
511A44:  MOVW            R1, #0x2C6
511A48:  CMP             R0, R1
511A4A:  BNE             loc_511A90
511A4C:  LDRB            R0, [R5,#0x10]
511A4E:  CMP             R0, #0
511A50:  BEQ             loc_511ADC
511A52:  LDR             R0, [R5,#0x18]
511A54:  LDRB            R0, [R0]
511A56:  LSLS            R0, R0, #0x1C
511A58:  BPL             loc_511ADC
511A5A:  LDR             R0, =(gFireManager_ptr - 0x511A62)
511A5C:  LDR             R2, [R5,#0xC]
511A5E:  ADD             R0, PC; gFireManager_ptr
511A60:  LDR             R3, [R2,#0x14]
511A62:  LDR             R0, [R0]; gFireManager ; this
511A64:  ADD.W           R1, R3, #0x30 ; '0'
511A68:  CMP             R3, #0
511A6A:  IT EQ
511A6C:  ADDEQ           R1, R2, #4; CVector *
511A6E:  MOVS            R2, #1; bool
511A70:  MOVS            R3, #1; bool
511A72:  BLX             j__ZN12CFireManager15FindNearestFireERK7CVectorbb; CFireManager::FindNearestFire(CVector const&,bool,bool)
511A76:  CBZ             R0, loc_511AC6
511A78:  LDR             R1, [R5,#0x18]
511A7A:  CMP             R0, R1
511A7C:  BEQ             loc_511ADC
511A7E:  LDR             R1, [R5,#8]
511A80:  STR             R0, [R5,#0x18]
511A82:  VLDR            D16, [R0,#4]
511A86:  LDR             R0, [R0,#0xC]
511A88:  STR             R0, [R1,#0x2C]
511A8A:  VSTR            D16, [R1,#0x24]
511A8E:  B               loc_511ADC
511A90:  LDR             R0, [R5,#8]
511A92:  LDR             R1, [R0]
511A94:  LDR             R1, [R1,#0x14]
511A96:  BLX             R1
511A98:  MOVW            R1, #0x2C7
511A9C:  CMP             R0, R1
511A9E:  BNE             loc_511ADC
511AA0:  LDRB            R0, [R5,#0x10]
511AA2:  CBZ             R0, loc_511ADC
511AA4:  LDR             R0, =(gFireManager_ptr - 0x511AAC)
511AA6:  LDR             R2, [R5,#0xC]
511AA8:  ADD             R0, PC; gFireManager_ptr
511AAA:  LDR             R3, [R2,#0x14]
511AAC:  LDR             R0, [R0]; gFireManager ; this
511AAE:  ADD.W           R1, R3, #0x30 ; '0'
511AB2:  CMP             R3, #0
511AB4:  IT EQ
511AB6:  ADDEQ           R1, R2, #4; CVector *
511AB8:  MOVS            R2, #1; bool
511ABA:  MOVS            R3, #1; bool
511ABC:  BLX             j__ZN12CFireManager15FindNearestFireERK7CVectorbb; CFireManager::FindNearestFire(CVector const&,bool,bool)
511AC0:  CMP             R0, #0
511AC2:  BNE             loc_511A28
511AC4:  B               loc_511ADC
511AC6:  MOVS            R0, #dword_24; this
511AC8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
511ACC:  LDR             R1, [R5,#0xC]; CVehicle *
511ACE:  MOVS            R3, #0x41200000; float
511AD4:  MOVS            R2, #0; int
511AD6:  MOV             R4, R0
511AD8:  BLX             j__ZN26CTaskComplexCarDriveWanderC2EP8CVehicleif; CTaskComplexCarDriveWander::CTaskComplexCarDriveWander(CVehicle *,int,float)
511ADC:  MOV             R0, R4
511ADE:  POP.W           {R11}
511AE2:  POP             {R4-R7,PC}
