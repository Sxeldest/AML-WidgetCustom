; =========================================================
; Game Engine Function: _ZN6CWorld22SetAllCarsCanBeDamagedEb
; Address            : 0x42C3D4 - 0x42C41E
; =========================================================

42C3D4:  PUSH            {R4,R6,R7,LR}
42C3D6:  ADD             R7, SP, #8
42C3D8:  LDR             R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x42C3DE)
42C3DA:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
42C3DC:  LDR             R1, [R1]; CPools::ms_pVehiclePool ...
42C3DE:  LDR             R1, [R1]; CPools::ms_pVehiclePool
42C3E0:  LDR.W           LR, [R1,#8]
42C3E4:  CMP.W           LR, #1
42C3E8:  IT LT
42C3EA:  POPLT           {R4,R6,R7,PC}
42C3EC:  MOV.W           R12, R0,LSL#21
42C3F0:  MOVS            R3, #0
42C3F2:  MOVS            R0, #0
42C3F4:  LDR             R2, [R1,#4]
42C3F6:  LDRSB           R2, [R2,R0]
42C3F8:  CMP             R2, #0
42C3FA:  BLT             loc_42C412
42C3FC:  LDR             R2, [R1]
42C3FE:  ADDS            R2, R2, R3
42C400:  ITTTT NE
42C402:  LDRNE.W         R4, [R2,#0x42C]
42C406:  BICNE.W         R4, R4, #0x200000
42C40A:  ORRNE.W         R4, R4, R12
42C40E:  STRNE.W         R4, [R2,#0x42C]
42C412:  ADDS            R0, #1
42C414:  ADDW            R3, R3, #0xA2C
42C418:  CMP             LR, R0
42C41A:  BNE             loc_42C3F4
42C41C:  POP             {R4,R6,R7,PC}
