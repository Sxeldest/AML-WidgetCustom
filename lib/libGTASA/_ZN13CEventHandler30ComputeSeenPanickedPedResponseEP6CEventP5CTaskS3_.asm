; =========================================================
; Game Engine Function: _ZN13CEventHandler30ComputeSeenPanickedPedResponseEP6CEventP5CTaskS3_
; Address            : 0x3839A4 - 0x383A84
; =========================================================

3839A4:  PUSH            {R4-R7,LR}
3839A6:  ADD             R7, SP, #0xC
3839A8:  PUSH.W          {R11}
3839AC:  SUB             SP, SP, #0x10
3839AE:  MOV             R6, R1
3839B0:  MOV             R4, R0
3839B2:  LDR             R0, [R6]
3839B4:  LDR             R1, [R0,#0x2C]
3839B6:  MOV             R0, R6
3839B8:  BLX             R1
3839BA:  CMP             R0, #0
3839BC:  BEQ             loc_383A7C
3839BE:  LDR.W           R1, [R0,#0x440]
3839C2:  LDR             R0, [R1,#0x40]
3839C4:  CMP             R0, #0
3839C6:  ITT EQ
3839C8:  LDREQ           R0, [R1,#0x3C]
3839CA:  CMPEQ           R0, #0
3839CC:  BEQ             loc_383A7C
3839CE:  LDR             R1, [R0]
3839D0:  LDR             R1, [R1,#0x2C]
3839D2:  BLX             R1
3839D4:  MOV             R5, R0
3839D6:  CMP             R5, #0
3839D8:  BEQ             loc_383A7C
3839DA:  LDRSH.W         R0, [R6,#0xA]
3839DE:  MOVW            R1, #0x1AB; unsigned int
3839E2:  CMP             R0, R1
3839E4:  BEQ             loc_383A2E
3839E6:  MOVW            R1, #0x38D; unsigned int
3839EA:  CMP             R0, R1
3839EC:  BEQ             loc_383A44
3839EE:  MOVW            R1, #0x38F; unsigned int
3839F2:  CMP             R0, R1
3839F4:  BNE             loc_383A7C
3839F6:  MOVS            R0, #dword_40; this
3839F8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3839FC:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x383A06)
3839FE:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x383A08)
383A00:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x383A0A)
383A02:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
383A04:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
383A06:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
383A08:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
383A0A:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
383A0C:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
383A0E:  VLDR            S0, [R1]
383A12:  LDR             R1, [R2]; CTaskComplexSmartFleeEntity::ms_iFleeTime
383A14:  LDR             R2, [R3]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
383A16:  MOVS            R3, #0x42340000; float
383A1C:  STRD.W          R1, R2, [SP,#0x20+var_20]; int
383A20:  MOV             R1, R5; CEntity *
383A22:  MOVS            R2, #1; bool
383A24:  VSTR            S0, [SP,#0x20+var_18]
383A28:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
383A2C:  B               loc_383A7A
383A2E:  MOVS            R0, #word_28; this
383A30:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383A34:  MOVS            R1, #0; unsigned __int8
383A36:  MOVW            R2, #0xFFFF; unsigned __int16
383A3A:  MOV.W           R3, #0xFFFFFFFF; __int16
383A3E:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
383A42:  B               loc_383A7A
383A44:  MOVS            R0, #off_3C; this
383A46:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383A4A:  LDR             R1, =(_ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x383A54)
383A4C:  LDR             R2, =(_ZN22CTaskComplexFleeEntity12ms_iFleeTimeE_ptr - 0x383A56)
383A4E:  LDR             R3, =(_ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x383A58)
383A50:  ADD             R1, PC; _ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr
383A52:  ADD             R2, PC; _ZN22CTaskComplexFleeEntity12ms_iFleeTimeE_ptr
383A54:  ADD             R3, PC; _ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr
383A56:  LDR             R1, [R1]; CTaskComplexFleeEntity::ms_fEntityPosChangeThreshold ...
383A58:  LDR             R2, [R2]; CTaskComplexFleeEntity::ms_iFleeTime ...
383A5A:  LDR             R3, [R3]; CTaskComplexFleeEntity::ms_iEntityPosCheckPeriod ...
383A5C:  VLDR            S0, [R1]
383A60:  LDR             R1, [R2]; CTaskComplexFleeEntity::ms_iFleeTime
383A62:  LDR             R2, [R3]; CTaskComplexFleeEntity::ms_iEntityPosCheckPeriod
383A64:  MOVS            R3, #0x42340000; float
383A6A:  STRD.W          R1, R2, [SP,#0x20+var_20]; int
383A6E:  MOV             R1, R5; CEntity *
383A70:  MOVS            R2, #1; bool
383A72:  VSTR            S0, [SP,#0x20+var_18]
383A76:  BLX             j__ZN22CTaskComplexFleeEntityC2EP7CEntitybfiif; CTaskComplexFleeEntity::CTaskComplexFleeEntity(CEntity *,bool,float,int,int,float)
383A7A:  STR             R0, [R4,#0x24]
383A7C:  ADD             SP, SP, #0x10
383A7E:  POP.W           {R11}
383A82:  POP             {R4-R7,PC}
