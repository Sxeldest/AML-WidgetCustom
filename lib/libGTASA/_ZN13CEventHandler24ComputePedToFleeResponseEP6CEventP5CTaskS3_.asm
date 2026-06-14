; =========================================================
; Game Engine Function: _ZN13CEventHandler24ComputePedToFleeResponseEP6CEventP5CTaskS3_
; Address            : 0x380898 - 0x3808F2
; =========================================================

380898:  PUSH            {R4,R5,R7,LR}
38089A:  ADD             R7, SP, #8
38089C:  SUB             SP, SP, #0x10
38089E:  LDR             R5, [R1,#0xC]
3808A0:  MOV             R4, R0
3808A2:  CBZ             R5, loc_3808EE
3808A4:  LDR             R0, [R4]; this
3808A6:  MOVS            R1, #0
3808A8:  STRD.W          R1, R1, [SP,#0x18+var_18]; unsigned __int8
3808AC:  MOVS            R2, #0; unsigned int
3808AE:  STR             R1, [SP,#0x18+var_10]; float
3808B0:  MOVS            R1, #0x45 ; 'E'; unsigned __int16
3808B2:  MOV.W           R3, #0x3F800000; float
3808B6:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
3808BA:  MOVS            R0, #dword_40; this
3808BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3808C0:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3808CE)
3808C2:  MOVS            R3, #0
3808C4:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3808D0)
3808C6:  MOVT            R3, #0x42C8; float
3808CA:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3808CC:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3808CE:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
3808D0:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
3808D2:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
3808D4:  VLDR            S0, [R2]
3808D8:  MOV.W           R2, #0xFFFFFFFF
3808DC:  VSTR            S0, [SP,#0x18+var_10]
3808E0:  STRD.W          R2, R1, [SP,#0x18+var_18]; int
3808E4:  MOV             R1, R5; CEntity *
3808E6:  MOVS            R2, #1; bool
3808E8:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
3808EC:  STR             R0, [R4,#0x24]
3808EE:  ADD             SP, SP, #0x10
3808F0:  POP             {R4,R5,R7,PC}
