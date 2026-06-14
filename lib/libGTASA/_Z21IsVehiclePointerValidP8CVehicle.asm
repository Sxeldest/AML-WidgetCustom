; =========================================================
; Game Engine Function: _Z21IsVehiclePointerValidP8CVehicle
; Address            : 0x585390 - 0x5853D6
; =========================================================

585390:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x585396)
585392:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
585394:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
585396:  LDR             R1, [R1]; CPools::ms_pVehiclePool
585398:  LDR             R2, [R1]
58539A:  SUBS            R2, R0, R2
58539C:  CMP             R2, #0
58539E:  BLT             loc_5853D2
5853A0:  MOVW            R3, #0xD523
5853A4:  ASRS            R2, R2, #2
5853A6:  MOVT            R3, #0xBFE6
5853AA:  MULS            R2, R3
5853AC:  LDR             R3, [R1,#8]
5853AE:  CMP             R2, R3
5853B0:  BGE             loc_5853D2
5853B2:  LDR             R1, [R1,#4]
5853B4:  LDRSB           R1, [R1,R2]
5853B6:  CMP             R1, #0
5853B8:  BLT             loc_5853D2
5853BA:  LDR.W           R1, [R0,#0x5A0]
5853BE:  CMP             R1, #8
5853C0:  ITT EQ
5853C2:  MOVEQ           R0, #1
5853C4:  BXEQ            LR
5853C6:  LDR.W           R0, [R0,#0xB4]
5853CA:  CMP             R0, #0
5853CC:  IT NE
5853CE:  MOVNE           R0, #1
5853D0:  BX              LR
5853D2:  MOVS            R0, #0
5853D4:  BX              LR
