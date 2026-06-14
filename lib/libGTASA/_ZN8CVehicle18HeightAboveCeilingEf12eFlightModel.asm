; =========================================================
; Game Engine Function: _ZN8CVehicle18HeightAboveCeilingEf12eFlightModel
; Address            : 0x5855FC - 0x585672
; =========================================================

5855FC:  SUBS            R0, R2, #1
5855FE:  VMOV            S0, R1
585602:  CMP             R0, #1
585604:  BHI             loc_58562C
585606:  VMOV.F32        S2, #-1.0
58560A:  VLDR            S4, =500.0
58560E:  VCMPE.F32       S0, S4
585612:  VMRS            APSR_nzcv, FPSCR
585616:  BLT             loc_58564C
585618:  VLDR            S6, =950.0
58561C:  VCMPE.F32       S0, S6
585620:  VMRS            APSR_nzcv, FPSCR
585624:  BGE             loc_585652
585626:  VLDR            S2, =-500.0
58562A:  B               loc_585648
58562C:  VLDR            S2, =800.0
585630:  VCMPE.F32       S0, S2
585634:  VMRS            APSR_nzcv, FPSCR
585638:  ITTT LT
58563A:  VMOVLT.F32      S2, #-1.0
58563E:  VMOVLT          R0, S2
585642:  BXLT            LR
585644:  VLDR            S2, =-800.0
585648:  VADD.F32        S2, S0, S2
58564C:  VMOV            R0, S2
585650:  BX              LR
585652:  VLDR            S6, =1500.0
585656:  VCMPE.F32       S0, S6
58565A:  VMRS            APSR_nzcv, FPSCR
58565E:  BLT             loc_58564C
585660:  VLDR            S2, =-1000.0
585664:  VADD.F32        S0, S0, S2
585668:  VADD.F32        S2, S0, S4
58566C:  VMOV            R0, S2
585670:  BX              LR
