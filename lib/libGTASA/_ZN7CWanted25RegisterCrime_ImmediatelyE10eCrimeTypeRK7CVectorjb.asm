; =========================================================
; Game Engine Function: _ZN7CWanted25RegisterCrime_ImmediatelyE10eCrimeTypeRK7CVectorjb
; Address            : 0x421FB8 - 0x421FF8
; =========================================================

421FB8:  PUSH            {R4-R7,LR}
421FBA:  ADD             R7, SP, #0xC
421FBC:  PUSH.W          {R8}
421FC0:  SUB             SP, SP, #8
421FC2:  LDR             R6, [R7,#arg_0]
421FC4:  MOV             R8, R2
421FC6:  MOV             R4, R0
421FC8:  MOVS            R0, #1
421FCA:  MOV             R2, R3
421FCC:  MOV             R3, R8
421FCE:  STRD.W          R0, R6, [SP,#0x18+var_18]
421FD2:  MOV             R0, R4
421FD4:  MOV             R5, R1
421FD6:  BLX             j__ZN7CWanted11AddCrimeToQE10eCrimeTypejRK7CVectorbb; CWanted::AddCrimeToQ(eCrimeType,uint,CVector const&,bool,bool)
421FDA:  CBZ             R0, loc_421FE4
421FDC:  ADD             SP, SP, #8
421FDE:  POP.W           {R8}
421FE2:  POP             {R4-R7,PC}
421FE4:  MOV             R0, R4
421FE6:  MOV             R1, R5
421FE8:  MOV             R2, R8
421FEA:  MOV             R3, R6
421FEC:  ADD             SP, SP, #8
421FEE:  POP.W           {R8}
421FF2:  POP.W           {R4-R7,LR}
421FF6:  B               _ZN7CWanted14ReportCrimeNowE10eCrimeTypeRK7CVectorb; CWanted::ReportCrimeNow(eCrimeType,CVector const&,bool)
