; =========================================================
; Game Engine Function: _ZN6CPools13GetVehicleRefEP8CVehicle
; Address            : 0x40D46C - 0x40D48E
; =========================================================

40D46C:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x40D472)
40D46E:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
40D470:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
40D472:  LDR             R1, [R1]; CPools::ms_pVehiclePool
40D474:  LDRD.W          R2, R1, [R1]
40D478:  SUBS            R0, R0, R2
40D47A:  MOV             R2, #0xBFE6D523
40D482:  ASRS            R0, R0, #2
40D484:  MULS            R0, R2
40D486:  LDRB            R1, [R1,R0]
40D488:  ORR.W           R0, R1, R0,LSL#8
40D48C:  BX              LR
