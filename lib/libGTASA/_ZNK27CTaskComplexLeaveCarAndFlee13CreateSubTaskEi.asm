; =========================================================
; Game Engine Function: _ZNK27CTaskComplexLeaveCarAndFlee13CreateSubTaskEi
; Address            : 0x4F9A7C - 0x4F9B78
; =========================================================

4F9A7C:  PUSH            {R4-R7,LR}
4F9A7E:  ADD             R7, SP, #0xC
4F9A80:  PUSH.W          {R8,R9,R11}
4F9A84:  SUB             SP, SP, #8
4F9A86:  MOV             R5, R0
4F9A88:  MOVW            R0, #0x38E
4F9A8C:  CMP             R1, R0
4F9A8E:  BEQ             loc_4F9AF8
4F9A90:  CMP.W           R1, #0x384
4F9A94:  BEQ             loc_4F9B28
4F9A96:  CMP.W           R1, #0x2C0
4F9A9A:  BNE             loc_4F9B4C
4F9A9C:  MOVS            R0, #dword_34; this
4F9A9E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F9AA2:  LDRD.W          R6, R8, [R5,#0xC]
4F9AA6:  MOV             R4, R0
4F9AA8:  LDR.W           R9, [R5,#0x20]
4F9AAC:  LDRB.W          R5, [R5,#0x24]
4F9AB0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F9AB4:  LDR             R0, =(_ZTV20CTaskComplexLeaveCar_ptr - 0x4F9AC2)
4F9AB6:  MOVS            R1, #1
4F9AB8:  STRD.W          R8, R9, [R4,#0x10]
4F9ABC:  MOVS            R2, #0xF
4F9ABE:  ADD             R0, PC; _ZTV20CTaskComplexLeaveCar_ptr
4F9AC0:  STRB            R5, [R4,#0x18]
4F9AC2:  STRH.W          R1, [R4,#0x19]
4F9AC6:  MOVS            R1, #0
4F9AC8:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCar ...
4F9ACA:  MOV.W           R3, #0x40800000
4F9ACE:  MOV.W           R5, #0x3F800000
4F9AD2:  ADD.W           R12, R4, #0x24 ; '$'
4F9AD6:  STR             R1, [R4,#0x1C]
4F9AD8:  ADDS            R0, #8
4F9ADA:  STRH            R1, [R4,#0x20]
4F9ADC:  CMP             R6, #0
4F9ADE:  STM.W           R12, {R2,R3,R5}
4F9AE2:  STRB.W          R1, [R4,#0x30]
4F9AE6:  MOV             R1, R4
4F9AE8:  STR             R0, [R4]
4F9AEA:  STR.W           R6, [R1,#0xC]!; CEntity **
4F9AEE:  BEQ             loc_4F9B6E
4F9AF0:  MOV             R0, R6; this
4F9AF2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F9AF6:  B               loc_4F9B6E
4F9AF8:  MOVS            R0, #dword_44; this
4F9AFA:  LDRB.W          R6, [R5,#0x24]
4F9AFE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F9B02:  MOV             R4, R0
4F9B04:  CBZ             R6, loc_4F9B50
4F9B06:  LDR             R0, =(_ZN26CTaskComplexSmartFleePoint16ms_fSafeDistanceE_ptr - 0x4F9B0E)
4F9B08:  LDR             R1, =(_ZN26CTaskComplexSmartFleePoint12ms_iFleeTimeE_ptr - 0x4F9B12)
4F9B0A:  ADD             R0, PC; _ZN26CTaskComplexSmartFleePoint16ms_fSafeDistanceE_ptr
4F9B0C:  LDR             R2, [R5,#0xC]
4F9B0E:  ADD             R1, PC; _ZN26CTaskComplexSmartFleePoint12ms_iFleeTimeE_ptr
4F9B10:  LDR             R0, [R0]; CTaskComplexSmartFleePoint::ms_fSafeDistance ...
4F9B12:  LDR             R1, [R1]; CTaskComplexSmartFleePoint::ms_iFleeTime ...
4F9B14:  LDR             R6, [R2,#0x14]
4F9B16:  LDR             R3, [R0]; CTaskComplexSmartFleePoint::ms_fSafeDistance
4F9B18:  LDR             R0, [R1]; CTaskComplexSmartFleePoint::ms_iFleeTime
4F9B1A:  ADD.W           R1, R6, #0x30 ; '0'
4F9B1E:  CMP             R6, #0
4F9B20:  STR             R0, [SP,#0x20+var_20]
4F9B22:  IT EQ
4F9B24:  ADDEQ           R1, R2, #4; unsigned int
4F9B26:  B               loc_4F9B66
4F9B28:  MOVS            R0, #word_2C; this
4F9B2A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F9B2E:  MOV             R4, R0
4F9B30:  LDR             R0, =(_ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr - 0x4F9B3C)
4F9B32:  MOVS            R1, #0
4F9B34:  ADD.W           R2, R5, #0x14; CVector *
4F9B38:  ADD             R0, PC; _ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr
4F9B3A:  STRD.W          R1, R1, [SP,#0x20+var_20]; bool
4F9B3E:  MOVS            R1, #6; int
4F9B40:  LDR             R0, [R0]; CTaskSimpleGoTo::ms_fTargetRadius ...
4F9B42:  LDR             R3, [R0]; float
4F9B44:  MOV             R0, R4; this
4F9B46:  BLX             j__ZN20CTaskSimpleGoToPointC2EiRK7CVectorfbb; CTaskSimpleGoToPoint::CTaskSimpleGoToPoint(int,CVector const&,float,bool,bool)
4F9B4A:  B               loc_4F9B6E
4F9B4C:  MOVS            R4, #0
4F9B4E:  B               loc_4F9B6E
4F9B50:  LDR             R0, =(_ZN26CTaskComplexSmartFleePoint16ms_fSafeDistanceE_ptr - 0x4F9B58)
4F9B52:  LDR             R1, =(_ZN26CTaskComplexSmartFleePoint12ms_iFleeTimeE_ptr - 0x4F9B5A)
4F9B54:  ADD             R0, PC; _ZN26CTaskComplexSmartFleePoint16ms_fSafeDistanceE_ptr
4F9B56:  ADD             R1, PC; _ZN26CTaskComplexSmartFleePoint12ms_iFleeTimeE_ptr
4F9B58:  LDR             R0, [R0]; CTaskComplexSmartFleePoint::ms_fSafeDistance ...
4F9B5A:  LDR             R2, [R1]; CTaskComplexSmartFleePoint::ms_iFleeTime ...
4F9B5C:  ADD.W           R1, R5, #0x14; CVector *
4F9B60:  LDR             R3, [R0]; float
4F9B62:  LDR             R0, [R2]; CTaskComplexSmartFleePoint::ms_iFleeTime
4F9B64:  STR             R0, [SP,#0x20+var_20]; int
4F9B66:  MOV             R0, R4; this
4F9B68:  MOVS            R2, #0; bool
4F9B6A:  BLX             j__ZN26CTaskComplexSmartFleePointC2ERK7CVectorbfi; CTaskComplexSmartFleePoint::CTaskComplexSmartFleePoint(CVector const&,bool,float,int)
4F9B6E:  MOV             R0, R4
4F9B70:  ADD             SP, SP, #8
4F9B72:  POP.W           {R8,R9,R11}
4F9B76:  POP             {R4-R7,PC}
