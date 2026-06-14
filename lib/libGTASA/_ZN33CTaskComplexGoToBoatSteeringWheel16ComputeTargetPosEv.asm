; =========================================================
; Game Engine Function: _ZN33CTaskComplexGoToBoatSteeringWheel16ComputeTargetPosEv
; Address            : 0x506170 - 0x506202
; =========================================================

506170:  PUSH            {R4,R6,R7,LR}
506172:  ADD             R7, SP, #8
506174:  SUB             SP, SP, #0x20
506176:  MOV             R4, R0
506178:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x506180)
50617A:  LDR             R1, [R4,#0x18]
50617C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
50617E:  LDRSH.W         R2, [R1,#0x26]
506182:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
506184:  LDR.W           R0, [R0,R2,LSL#2]
506188:  LDR             R2, [R0,#0x54]
50618A:  LDR             R0, [R0,#0x74]
50618C:  CMP             R2, #5
50618E:  ADD             R2, SP, #0x28+var_18
506190:  IT NE
506192:  ADDNE           R0, #0x30 ; '0'
506194:  VLDR            D16, [R0]
506198:  LDR             R0, [R0,#8]
50619A:  STR             R0, [SP,#0x28+var_10]
50619C:  MOV             R0, SP; CMatrix *
50619E:  VSTR            D16, [SP,#0x28+var_18]
5061A2:  LDR             R1, [R1,#0x14]; CVector *
5061A4:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
5061A8:  VLDR            D16, [SP,#0x28+var_28]
5061AC:  LDR             R0, [SP,#0x28+var_20]
5061AE:  STR             R0, [SP,#0x28+var_10]
5061B0:  VSTR            D16, [SP,#0x28+var_18]
5061B4:  LDR             R0, [R4,#0x18]
5061B6:  VLDR            S0, [SP,#0x28+var_18]
5061BA:  VLDR            S2, [SP,#0x28+var_18+4]
5061BE:  LDR             R1, [R0,#0x14]
5061C0:  VLDR            S4, [SP,#0x28+var_10]
5061C4:  ADD.W           R2, R1, #0x30 ; '0'
5061C8:  CMP             R1, #0
5061CA:  IT EQ
5061CC:  ADDEQ           R2, R0, #4
5061CE:  VLDR            S6, [R2]
5061D2:  VADD.F32        S0, S6, S0
5061D6:  VSTR            S0, [SP,#0x28+var_18]
5061DA:  VLDR            S0, [R2,#4]
5061DE:  VADD.F32        S0, S0, S2
5061E2:  VSTR            S0, [SP,#0x28+var_18+4]
5061E6:  VLDR            S0, [R2,#8]
5061EA:  VLDR            D16, [SP,#0x28+var_18]
5061EE:  VADD.F32        S0, S0, S4
5061F2:  VSTR            S0, [SP,#0x28+var_10]
5061F6:  LDR             R0, [SP,#0x28+var_10]
5061F8:  VSTR            D16, [R4,#0xC]
5061FC:  STR             R0, [R4,#0x14]
5061FE:  ADD             SP, SP, #0x20 ; ' '
506200:  POP             {R4,R6,R7,PC}
