; =========================================================
; Game Engine Function: _Z19RwBBoxContainsPointPK6RwBBoxPK5RwV3d
; Address            : 0x1D46B4 - 0x1D4722
; =========================================================

1D46B4:  VLDR            S4, [R1]
1D46B8:  VLDR            S0, [R0,#0xC]
1D46BC:  VCMPE.F32       S0, S4
1D46C0:  VMRS            APSR_nzcv, FPSCR
1D46C4:  BGT             loc_1D46F8
1D46C6:  VLDR            S2, [R1,#4]
1D46CA:  VLDR            S0, [R0,#0x10]
1D46CE:  VCMPE.F32       S0, S2
1D46D2:  VMRS            APSR_nzcv, FPSCR
1D46D6:  BGT             loc_1D46F8
1D46D8:  VLDR            S0, [R1,#8]
1D46DC:  VLDR            S6, [R0,#0x14]
1D46E0:  VCMPE.F32       S6, S0
1D46E4:  VMRS            APSR_nzcv, FPSCR
1D46E8:  BGT             loc_1D46F8
1D46EA:  VLDR            S6, [R0]
1D46EE:  VCMPE.F32       S6, S4
1D46F2:  VMRS            APSR_nzcv, FPSCR
1D46F6:  BGE             loc_1D46FE
1D46F8:  MOVS            R1, #0
1D46FA:  MOV             R0, R1
1D46FC:  BX              LR
1D46FE:  VLDR            S4, [R0,#4]
1D4702:  MOVS            R1, #0
1D4704:  VCMPE.F32       S4, S2
1D4708:  VMRS            APSR_nzcv, FPSCR
1D470C:  BLT             loc_1D471E
1D470E:  VLDR            S2, [R0,#8]
1D4712:  VCMPE.F32       S2, S0
1D4716:  VMRS            APSR_nzcv, FPSCR
1D471A:  IT GE
1D471C:  MOVGE           R1, #1
1D471E:  MOV             R0, R1
1D4720:  BX              LR
