; =========================================================
; Game Engine Function: _ZN4CPed34WorkOutHeadingForMovingFirstPersonEf
; Address            : 0x4A1884 - 0x4A191E
; =========================================================

4A1884:  PUSH            {R4,R5,R7,LR}
4A1886:  ADD             R7, SP, #8
4A1888:  VPUSH           {D8}; float
4A188C:  MOV             R4, R0
4A188E:  LDR.W           R0, [R4,#0x59C]
4A1892:  CMP             R0, #1
4A1894:  BHI             loc_4A18E2
4A1896:  LDR.W           R0, [R4,#0x444]
4A189A:  CBZ             R0, loc_4A18E2
4A189C:  MOVS            R0, #0; this
4A189E:  VMOV            S16, R1; int
4A18A2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4A18A6:  BLX             j__ZN4CPad19GetPedWalkLeftRightEv; CPad::GetPedWalkLeftRight(void)
4A18AA:  MOV             R5, R0
4A18AC:  MOVS            R0, #0; this
4A18AE:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4A18B2:  BLX             j__ZN4CPad16GetPedWalkUpDownEv; CPad::GetPedWalkUpDown(void)
4A18B6:  CBZ             R0, loc_4A18EA
4A18B8:  VMOV            S0, R5
4A18BC:  MOVS            R1, #0; float
4A18BE:  VMOV            S2, R0
4A18C2:  VCVT.F32.S32    S0, S0
4A18C6:  VCVT.F32.S32    S2, S2
4A18CA:  VMOV            R0, S0
4A18CE:  VMOV            R3, S2; float
4A18D2:  EOR.W           R2, R0, #0x80000000; float
4A18D6:  MOVS            R0, #0; this
4A18D8:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
4A18DC:  VMOV            S0, R0
4A18E0:  B               loc_4A18F2
4A18E2:  MOVS            R0, #0
4A18E4:  VPOP            {D8}
4A18E8:  POP             {R4,R5,R7,PC}
4A18EA:  CMP             R5, #0
4A18EC:  BLE             loc_4A1916
4A18EE:  VLDR            S0, =-1.5708
4A18F2:  LDR.W           R0, [R4,#0x444]
4A18F6:  VSTR            S0, [R0,#0x50]
4A18FA:  LDR.W           R0, [R4,#0x444]
4A18FE:  VLDR            S0, [R0,#0x50]
4A1902:  VADD.F32        S0, S0, S16
4A1906:  VMOV            R0, S0; this
4A190A:  VPOP            {D8}
4A190E:  POP.W           {R4,R5,R7,LR}
4A1912:  B.W             j_j__ZN8CGeneral16LimitRadianAngleEf; j_CGeneral::LimitRadianAngle(float)
4A1916:  BGE             loc_4A18FA
4A1918:  VLDR            S0, =1.5708
4A191C:  B               loc_4A18F2
