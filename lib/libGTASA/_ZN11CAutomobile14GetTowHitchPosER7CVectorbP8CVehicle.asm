; =========================================================
; Game Engine Function: _ZN11CAutomobile14GetTowHitchPosER7CVectorbP8CVehicle
; Address            : 0x55E4FC - 0x55E55E
; =========================================================

55E4FC:  PUSH            {R4,R6,R7,LR}
55E4FE:  ADD             R7, SP, #8
55E500:  SUB             SP, SP, #0x10
55E502:  MOV             R4, R1
55E504:  MOVS            R1, #0
55E506:  CMP             R2, #1
55E508:  BNE             loc_55E558
55E50A:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55E516)
55E50C:  VMOV.F32        S0, #-0.5
55E510:  STR             R1, [R4]
55E512:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55E514:  LDRSH.W         R1, [R0,#0x26]
55E518:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
55E51A:  LDR.W           R1, [R2,R1,LSL#2]
55E51E:  MOV             R2, R4
55E520:  LDR             R1, [R1,#0x2C]
55E522:  VLDR            S2, [R1,#0x10]
55E526:  ADDW            R1, R0, #0x8AC
55E52A:  VADD.F32        S0, S2, S0
55E52E:  VMOV.F32        S2, #0.5
55E532:  VSTR            S0, [R4,#4]
55E536:  VLDR            S0, [R1]
55E53A:  VSUB.F32        S0, S2, S0
55E53E:  VSTR            S0, [R4,#8]
55E542:  LDR             R1, [R0,#0x14]
55E544:  MOV             R0, SP
55E546:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
55E54A:  VLDR            D16, [SP,#0x18+var_18]
55E54E:  MOVS            R1, #1
55E550:  LDR             R0, [SP,#0x18+var_10]
55E552:  STR             R0, [R4,#8]
55E554:  VSTR            D16, [R4]
55E558:  MOV             R0, R1
55E55A:  ADD             SP, SP, #0x10
55E55C:  POP             {R4,R6,R7,PC}
