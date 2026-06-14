; =========================================================
; Game Engine Function: _ZN6CCheat15BlowUpCarsCheatEv
; Address            : 0x2FDA68 - 0x2FDAB2
; =========================================================

2FDA68:  PUSH            {R4-R7,LR}
2FDA6A:  ADD             R7, SP, #0xC
2FDA6C:  PUSH.W          {R11}
2FDA70:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x2FDA76)
2FDA72:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
2FDA74:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
2FDA76:  LDR             R4, [R0]; CPools::ms_pVehiclePool
2FDA78:  LDR             R0, [R4,#8]
2FDA7A:  CBZ             R0, loc_2FDAAC
2FDA7C:  MOVW            R1, #0xA2C
2FDA80:  SUBS            R6, R0, #1
2FDA82:  MULS            R1, R0
2FDA84:  SUBW            R5, R1, #0xA2C
2FDA88:  LDR             R0, [R4,#4]
2FDA8A:  LDRSB           R0, [R0,R6]
2FDA8C:  CMP             R0, #0
2FDA8E:  BLT             loc_2FDAA2
2FDA90:  LDR             R1, [R4]
2FDA92:  ADDS            R0, R1, R5
2FDA94:  BEQ             loc_2FDAA2
2FDA96:  LDR             R1, [R1,R5]
2FDA98:  MOVS            R2, #0
2FDA9A:  LDR.W           R3, [R1,#0xA8]
2FDA9E:  MOVS            R1, #0
2FDAA0:  BLX             R3
2FDAA2:  SUBS            R6, #1
2FDAA4:  SUBW            R5, R5, #0xA2C
2FDAA8:  ADDS            R0, R6, #1
2FDAAA:  BNE             loc_2FDA88
2FDAAC:  POP.W           {R11}
2FDAB0:  POP             {R4-R7,PC}
