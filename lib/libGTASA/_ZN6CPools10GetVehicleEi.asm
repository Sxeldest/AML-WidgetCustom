; =========================================================
; Game Engine Function: _ZN6CPools10GetVehicleEi
; Address            : 0x40D494 - 0x40D4BC
; =========================================================

40D494:  CMP             R0, #0
40D496:  BLT             loc_40D4B8
40D498:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x40D4A2)
40D49A:  UXTB            R3, R0
40D49C:  LSRS            R0, R0, #8
40D49E:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
40D4A0:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
40D4A2:  LDR             R1, [R1]; CPools::ms_pVehiclePool
40D4A4:  LDR             R2, [R1,#4]
40D4A6:  LDRB            R2, [R2,R0]
40D4A8:  CMP             R2, R3
40D4AA:  BNE             loc_40D4B8
40D4AC:  MOVW            R2, #0xA2C
40D4B0:  LDR             R1, [R1]
40D4B2:  MLA.W           R0, R0, R2, R1
40D4B6:  BX              LR
40D4B8:  MOVS            R0, #0
40D4BA:  BX              LR
