; =========================================================
; Game Engine Function: _ZN6CTrain20ReleaseMissionTrainsEv
; Address            : 0x57FE0C - 0x57FE76
; =========================================================

57FE0C:  PUSH            {R4-R7,LR}
57FE0E:  ADD             R7, SP, #0xC
57FE10:  PUSH.W          {R8,R9,R11}
57FE14:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x57FE1A)
57FE16:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
57FE18:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
57FE1A:  LDR.W           R8, [R0]; CPools::ms_pVehiclePool
57FE1E:  LDR.W           R0, [R8,#8]
57FE22:  CBZ             R0, loc_57FE70
57FE24:  MOVW            R1, #0xA2C
57FE28:  SUBS            R6, R0, #1
57FE2A:  MULS            R1, R0
57FE2C:  SUBW            R5, R1, #0x48C
57FE30:  LDR.W           R0, [R8,#4]
57FE34:  LDRSB           R0, [R0,R6]
57FE36:  CMP             R0, #0
57FE38:  BLT             loc_57FE66
57FE3A:  LDR.W           R0, [R8]
57FE3E:  ADDS            R4, R0, R5
57FE40:  CMP.W           R4, #0x5A0
57FE44:  BEQ             loc_57FE66
57FE46:  LDR             R0, [R0,R5]
57FE48:  CMP             R0, #6
57FE4A:  BNE             loc_57FE66
57FE4C:  MOV.W           R0, #0xFFFFFFFF; int
57FE50:  MOVS            R1, #0; bool
57FE52:  SUB.W           R9, R4, #0x5A0
57FE56:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
57FE5A:  CMP             R9, R0
57FE5C:  ITTT NE
57FE5E:  LDRHNE          R0, [R4,#0x2C]
57FE60:  BICNE.W         R0, R0, #0x20 ; ' '
57FE64:  STRHNE          R0, [R4,#0x2C]
57FE66:  SUBS            R6, #1
57FE68:  SUBW            R5, R5, #0xA2C
57FE6C:  ADDS            R0, R6, #1
57FE6E:  BNE             loc_57FE30
57FE70:  POP.W           {R8,R9,R11}
57FE74:  POP             {R4-R7,PC}
