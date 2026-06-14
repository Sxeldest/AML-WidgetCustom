; =========================================================
; Game Engine Function: _ZN8CVehicle14GetTowHitchPosER7CVectorbPS_
; Address            : 0x58D6A0 - 0x58D6F0
; =========================================================

58D6A0:  PUSH            {R4,R6,R7,LR}
58D6A2:  ADD             R7, SP, #8
58D6A4:  SUB             SP, SP, #0x10
58D6A6:  MOV             R4, R1
58D6A8:  MOV             R1, R0
58D6AA:  MOVS            R0, #0
58D6AC:  CMP             R2, #1
58D6AE:  BNE             loc_58D6EC
58D6B0:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58D6BC)
58D6B2:  VMOV.F32        S0, #1.0
58D6B6:  STR             R0, [R4]
58D6B8:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58D6BA:  LDRSH.W         R3, [R1,#0x26]
58D6BE:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
58D6C0:  LDR.W           R2, [R2,R3,LSL#2]
58D6C4:  LDR             R2, [R2,#0x2C]
58D6C6:  VLDR            S2, [R2,#0x10]
58D6CA:  MOV             R2, R4
58D6CC:  STR             R0, [R4,#8]
58D6CE:  MOV             R0, SP
58D6D0:  VADD.F32        S0, S2, S0
58D6D4:  VSTR            S0, [R4,#4]
58D6D8:  LDR             R1, [R1,#0x14]
58D6DA:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
58D6DE:  VLDR            D16, [SP,#0x18+var_18]
58D6E2:  LDR             R0, [SP,#0x18+var_10]
58D6E4:  STR             R0, [R4,#8]
58D6E6:  MOVS            R0, #1
58D6E8:  VSTR            D16, [R4]
58D6EC:  ADD             SP, SP, #0x10
58D6EE:  POP             {R4,R6,R7,PC}
