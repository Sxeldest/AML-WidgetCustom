; =========================================================
; Game Engine Function: _Z15RwBBoxCalculateP6RwBBoxPK5RwV3di
; Address            : 0x1D455C - 0x1D4614
; =========================================================

1D455C:  VLDR            D16, [R1]
1D4560:  CMP             R2, #1
1D4562:  LDR             R3, [R1,#8]
1D4564:  STR             R3, [R0,#0x14]
1D4566:  VSTR            D16, [R0,#0xC]
1D456A:  VLDR            D16, [R1]
1D456E:  LDR             R3, [R1,#8]
1D4570:  STR             R3, [R0,#8]
1D4572:  VSTR            D16, [R0]
1D4576:  IT EQ
1D4578:  BXEQ            LR
1D457A:  ADD.W           R3, R0, #0xC
1D457E:  RSB.W           R2, R2, #1
1D4582:  VLDR            S0, [R0,#0xC]
1D4586:  ADDS            R1, #0xC
1D4588:  VLDR            S2, [R1]
1D458C:  VCMPE.F32       S0, S2
1D4590:  VMRS            APSR_nzcv, FPSCR
1D4594:  ITT GT
1D4596:  VSTRGT          S2, [R3]
1D459A:  VMOVGT.F32      S0, S2
1D459E:  VLDR            S2, [R1,#4]
1D45A2:  VLDR            S4, [R0,#0x10]
1D45A6:  VCMPE.F32       S4, S2
1D45AA:  VMRS            APSR_nzcv, FPSCR
1D45AE:  IT GT
1D45B0:  VSTRGT          S2, [R0,#0x10]
1D45B4:  VLDR            S2, [R1,#8]
1D45B8:  VLDR            S4, [R0,#0x14]
1D45BC:  VCMPE.F32       S4, S2
1D45C0:  VMRS            APSR_nzcv, FPSCR
1D45C4:  IT GT
1D45C6:  VSTRGT          S2, [R0,#0x14]
1D45CA:  VLDR            S2, [R1]
1D45CE:  VLDR            S4, [R0]
1D45D2:  VCMPE.F32       S4, S2
1D45D6:  VMRS            APSR_nzcv, FPSCR
1D45DA:  IT LT
1D45DC:  VSTRLT          S2, [R0]
1D45E0:  VLDR            S2, [R1,#4]
1D45E4:  VLDR            S4, [R0,#4]
1D45E8:  VCMPE.F32       S4, S2
1D45EC:  VMRS            APSR_nzcv, FPSCR
1D45F0:  IT LT
1D45F2:  VSTRLT          S2, [R0,#4]
1D45F6:  VLDR            S2, [R1,#8]
1D45FA:  ADDS            R1, #0xC
1D45FC:  VLDR            S4, [R0,#8]
1D4600:  VCMPE.F32       S4, S2
1D4604:  VMRS            APSR_nzcv, FPSCR
1D4608:  IT LT
1D460A:  VSTRLT          S2, [R0,#8]
1D460E:  ADDS            R2, #1
1D4610:  BNE             loc_1D4588
1D4612:  BX              LR
