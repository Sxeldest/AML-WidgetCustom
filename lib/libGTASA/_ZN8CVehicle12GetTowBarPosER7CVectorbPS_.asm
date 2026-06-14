; =========================================================
; Game Engine Function: _ZN8CVehicle12GetTowBarPosER7CVectorbPS_
; Address            : 0x58D6F4 - 0x58D744
; =========================================================

58D6F4:  PUSH            {R4,R6,R7,LR}
58D6F6:  ADD             R7, SP, #8
58D6F8:  SUB             SP, SP, #0x10
58D6FA:  MOV             R4, R1
58D6FC:  MOV             R1, R0
58D6FE:  MOVS            R0, #0
58D700:  CMP             R2, #1
58D702:  BNE             loc_58D740
58D704:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58D710)
58D706:  VMOV.F32        S0, #-1.0
58D70A:  STR             R0, [R4]
58D70C:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58D70E:  LDRSH.W         R3, [R1,#0x26]
58D712:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
58D714:  LDR.W           R2, [R2,R3,LSL#2]
58D718:  LDR             R2, [R2,#0x2C]
58D71A:  VLDR            S2, [R2,#4]
58D71E:  MOV             R2, R4
58D720:  STR             R0, [R4,#8]
58D722:  MOV             R0, SP
58D724:  VADD.F32        S0, S2, S0
58D728:  VSTR            S0, [R4,#4]
58D72C:  LDR             R1, [R1,#0x14]
58D72E:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
58D732:  VLDR            D16, [SP,#0x18+var_18]
58D736:  LDR             R0, [SP,#0x18+var_10]
58D738:  STR             R0, [R4,#8]
58D73A:  MOVS            R0, #1
58D73C:  VSTR            D16, [R4]
58D740:  ADD             SP, SP, #0x10
58D742:  POP             {R4,R6,R7,PC}
