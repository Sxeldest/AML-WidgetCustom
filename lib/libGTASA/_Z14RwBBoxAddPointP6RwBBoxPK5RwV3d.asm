; =========================================================
; Game Engine Function: _Z14RwBBoxAddPointP6RwBBoxPK5RwV3d
; Address            : 0x1D462E - 0x1D46B4
; =========================================================

1D462E:  VLDR            S0, [R1]
1D4632:  VLDR            S2, [R0,#0xC]
1D4636:  VCMPE.F32       S2, S0
1D463A:  VMRS            APSR_nzcv, FPSCR
1D463E:  IT GT
1D4640:  VSTRGT          S0, [R0,#0xC]
1D4644:  VLDR            S0, [R1,#4]
1D4648:  VLDR            S2, [R0,#0x10]
1D464C:  VCMPE.F32       S2, S0
1D4650:  VMRS            APSR_nzcv, FPSCR
1D4654:  IT GT
1D4656:  VSTRGT          S0, [R0,#0x10]
1D465A:  VLDR            S0, [R1,#8]
1D465E:  VLDR            S2, [R0,#0x14]
1D4662:  VCMPE.F32       S2, S0
1D4666:  VMRS            APSR_nzcv, FPSCR
1D466A:  IT GT
1D466C:  VSTRGT          S0, [R0,#0x14]
1D4670:  VLDR            S0, [R1]
1D4674:  VLDR            S2, [R0]
1D4678:  VCMPE.F32       S2, S0
1D467C:  VMRS            APSR_nzcv, FPSCR
1D4680:  IT LT
1D4682:  VSTRLT          S0, [R0]
1D4686:  VLDR            S0, [R1,#4]
1D468A:  VLDR            S2, [R0,#4]
1D468E:  VCMPE.F32       S2, S0
1D4692:  VMRS            APSR_nzcv, FPSCR
1D4696:  IT LT
1D4698:  VSTRLT          S0, [R0,#4]
1D469C:  VLDR            S0, [R1,#8]
1D46A0:  VLDR            S2, [R0,#8]
1D46A4:  VCMPE.F32       S2, S0
1D46A8:  VMRS            APSR_nzcv, FPSCR
1D46AC:  IT LT
1D46AE:  VSTRLT          S0, [R0,#8]
1D46B2:  BX              LR
