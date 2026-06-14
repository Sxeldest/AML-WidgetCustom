; =========================================================
; Game Engine Function: _ZN13CEventHandler21ComputeDangerResponseEP6CEventP5CTaskS3_
; Address            : 0x383AF0 - 0x383BA8
; =========================================================

383AF0:  PUSH            {R4,R5,R7,LR}
383AF2:  ADD             R7, SP, #8
383AF4:  SUB             SP, SP, #0x10
383AF6:  LDR             R5, [R1,#0x10]
383AF8:  MOV             R4, R0
383AFA:  CBZ             R5, loc_383B68
383AFC:  LDRSH.W         R0, [R1,#0xA]
383B00:  MOVW            R1, #0x2D6
383B04:  CMP             R0, R1
383B06:  BEQ             loc_383B24
383B08:  MOVW            R1, #0x38F; unsigned int
383B0C:  CMP             R0, R1
383B0E:  BNE             loc_383B68
383B10:  MOVS            R0, #dword_40; this
383B12:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383B16:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x383B20)
383B18:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x383B22)
383B1A:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x383B24)
383B1C:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
383B1E:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
383B20:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
383B22:  B               loc_383B40
383B24:  LDR             R1, [R4]; CPed *
383B26:  LDRB.W          R0, [R1,#0x485]
383B2A:  LSLS            R0, R0, #0x1F
383B2C:  BNE             loc_383B6C
383B2E:  MOVS            R0, #dword_40; this
383B30:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383B34:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x383B3E)
383B36:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x383B40)
383B38:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x383B42)
383B3A:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
383B3C:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
383B3E:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
383B40:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
383B42:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
383B44:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
383B46:  VLDR            S0, [R1]
383B4A:  LDR             R1, [R2]; CTaskComplexSmartFleeEntity::ms_iFleeTime
383B4C:  LDR             R2, [R3]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
383B4E:  MOV             R3, #0x47C35000; float
383B56:  STRD.W          R1, R2, [SP,#0x18+var_18]; int
383B5A:  MOV             R1, R5; CEntity *
383B5C:  MOVS            R2, #1; bool
383B5E:  VSTR            S0, [SP,#0x18+var_10]
383B62:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
383B66:  STR             R0, [R4,#0x24]
383B68:  ADD             SP, SP, #0x10
383B6A:  POP             {R4,R5,R7,PC}
383B6C:  LDR.W           R0, [R1,#0x590]; this
383B70:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
383B74:  CMP             R0, #1
383B76:  BNE             loc_383BA4
383B78:  MOVS            R0, #word_2C; this
383B7A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383B7E:  LDR             R1, [R4]
383B80:  MOVS            R2, #0x42200000
383B86:  MOVS            R3, #2
383B88:  LDR.W           R1, [R1,#0x590]; CVehicle *
383B8C:  STRD.W          R3, R2, [SP,#0x18+var_18]; int
383B90:  MOVS            R2, #0; CEntity *
383B92:  MOVS            R3, #1; int
383B94:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
383B98:  LDR             R1, =(_ZTV36CTaskComplexCarDriveMissionFleeScene_ptr - 0x383B9E)
383B9A:  ADD             R1, PC; _ZTV36CTaskComplexCarDriveMissionFleeScene_ptr
383B9C:  LDR             R1, [R1]; `vtable for'CTaskComplexCarDriveMissionFleeScene ...
383B9E:  ADDS            R1, #8
383BA0:  STR             R1, [R0]
383BA2:  B               loc_383B66
383BA4:  MOVS            R0, #0
383BA6:  B               loc_383B66
