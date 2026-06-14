; =========================================================
; Game Engine Function: _ZN6CPlane19CountPlanesAndHelisEv
; Address            : 0x57901C - 0x579074
; =========================================================

57901C:  PUSH            {R4,R6,R7,LR}
57901E:  ADD             R7, SP, #8
579020:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x579026)
579022:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
579024:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
579026:  LDR.W           LR, [R0]; CPools::ms_pVehiclePool
57902A:  LDR.W           R2, [LR,#8]
57902E:  CBZ             R2, loc_579070
579030:  LDR.W           R3, [LR,#4]
579034:  MOVS            R0, #0
579036:  MOVW            R12, #0xA2C
57903A:  MUL.W           R1, R2, R12
57903E:  SUBS            R2, #1
579040:  SUBW            R1, R1, #0xA2C
579044:  LDRSB           R4, [R3,R2]
579046:  CMP             R4, #0
579048:  BLT             loc_579052
57904A:  LDR.W           R4, [LR]
57904E:  ADDS            R4, R4, R1
579050:  BNE             loc_57905E
579052:  SUBS            R2, #1
579054:  SUBW            R1, R1, #0xA2C
579058:  ADDS            R4, R2, #1
57905A:  BNE             loc_579044
57905C:  B               locret_57906E
57905E:  LDR.W           R1, [R4,#0x5A4]
579062:  SUBS            R1, #3
579064:  CMP             R1, #2
579066:  IT CC
579068:  ADDCC           R0, #1
57906A:  CMP             R2, #0
57906C:  BNE             loc_57903A
57906E:  POP             {R4,R6,R7,PC}
579070:  MOVS            R0, #0
579072:  POP             {R4,R6,R7,PC}
