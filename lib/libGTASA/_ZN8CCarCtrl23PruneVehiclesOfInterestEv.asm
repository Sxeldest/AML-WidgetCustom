; =========================================================
; Game Engine Function: _ZN8CCarCtrl23PruneVehiclesOfInterestEv
; Address            : 0x2FAD2C - 0x2FADBC
; =========================================================

2FAD2C:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x2FAD32)
2FAD2E:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
2FAD30:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
2FAD32:  LDR             R0, [R0]; CTimer::m_FrameCounter
2FAD34:  AND.W           R0, R0, #0x3F ; '?'
2FAD38:  CMP             R0, #0x13
2FAD3A:  BNE             locret_2FADBA
2FAD3C:  PUSH            {R7,LR}
2FAD3E:  MOV             R7, SP
2FAD40:  SUB             SP, SP, #0x10
2FAD42:  ADD             R0, SP, #0x18+var_14; int
2FAD44:  MOV.W           R1, #0xFFFFFFFF
2FAD48:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2FAD4C:  VLDR            S0, =950.0
2FAD50:  VLDR            S2, [SP,#0x18+var_C]
2FAD54:  VCMPE.F32       S2, S0
2FAD58:  VMRS            APSR_nzcv, FPSCR
2FAD5C:  ADD             SP, SP, #0x10
2FAD5E:  POP.W           {R7,LR}
2FAD62:  BGE             locret_2FADBA
2FAD64:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2FAD6C)
2FAD66:  LDR             R1, =(apCarsToKeep_ptr - 0x2FAD6E)
2FAD68:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2FAD6A:  ADD             R1, PC; apCarsToKeep_ptr
2FAD6C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2FAD6E:  LDR             R1, [R1]; apCarsToKeep
2FAD70:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2FAD72:  LDR             R2, [R1]
2FAD74:  MOV             R1, #0x2BF20
2FAD7C:  CBZ             R2, loc_2FAD96
2FAD7E:  LDR             R2, =(aCarsToKeepTime_ptr - 0x2FAD84)
2FAD80:  ADD             R2, PC; aCarsToKeepTime_ptr
2FAD82:  LDR             R2, [R2]; aCarsToKeepTime
2FAD84:  LDR             R2, [R2]
2FAD86:  ADD             R2, R1
2FAD88:  CMP             R0, R2
2FAD8A:  BLS             loc_2FAD96
2FAD8C:  LDR             R2, =(apCarsToKeep_ptr - 0x2FAD94)
2FAD8E:  MOVS            R3, #0
2FAD90:  ADD             R2, PC; apCarsToKeep_ptr
2FAD92:  LDR             R2, [R2]; apCarsToKeep
2FAD94:  STR             R3, [R2]
2FAD96:  LDR             R2, =(apCarsToKeep_ptr - 0x2FAD9C)
2FAD98:  ADD             R2, PC; apCarsToKeep_ptr
2FAD9A:  LDR             R2, [R2]; apCarsToKeep
2FAD9C:  LDR             R2, [R2,#(dword_7967A8 - 0x7967A4)]
2FAD9E:  CBZ             R2, locret_2FADBA
2FADA0:  LDR             R2, =(aCarsToKeepTime_ptr - 0x2FADA6)
2FADA2:  ADD             R2, PC; aCarsToKeepTime_ptr
2FADA4:  LDR             R2, [R2]; aCarsToKeepTime
2FADA6:  LDR             R2, [R2,#(dword_7967B0 - 0x7967AC)]
2FADA8:  ADD             R1, R2
2FADAA:  CMP             R0, R1
2FADAC:  IT LS
2FADAE:  BXLS            LR
2FADB0:  LDR             R0, =(apCarsToKeep_ptr - 0x2FADB8)
2FADB2:  MOVS            R1, #0
2FADB4:  ADD             R0, PC; apCarsToKeep_ptr
2FADB6:  LDR             R0, [R0]; apCarsToKeep
2FADB8:  STR             R1, [R0,#(dword_7967A8 - 0x7967A4)]
2FADBA:  BX              LR
