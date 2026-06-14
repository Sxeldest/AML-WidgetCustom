; =========================================================
; Game Engine Function: _ZN8CVehicle23SetFiringRateMultiplierEf
; Address            : 0x58F5D8 - 0x58F638
; =========================================================

58F5D8:  VMOV            S0, R1
58F5DC:  VCMPE.F32       S0, #0.0
58F5E0:  VMRS            APSR_nzcv, FPSCR
58F5E4:  BGE             loc_58F5EC
58F5E6:  VLDR            S0, =0.0
58F5EA:  B               loc_58F5FE
58F5EC:  VLDR            S2, =15.938
58F5F0:  VCMPE.F32       S0, S2
58F5F4:  VMRS            APSR_nzcv, FPSCR
58F5F8:  IT GT
58F5FA:  VMOVGT.F32      S0, S2
58F5FE:  LDR.W           R1, [R0,#0x5A4]
58F602:  CMP             R1, #3
58F604:  BEQ             loc_58F622
58F606:  CMP             R1, #4
58F608:  IT NE
58F60A:  BXNE            LR
58F60C:  VMOV.F32        S2, #16.0
58F610:  VMUL.F32        S0, S0, S2
58F614:  VCVT.U32.F32    S0, S0
58F618:  VMOV            R1, S0
58F61C:  STRB.W          R1, [R0,#0x9EC]
58F620:  BX              LR
58F622:  VMOV.F32        S2, #16.0
58F626:  VMUL.F32        S0, S0, S2
58F62A:  VCVT.U32.F32    S0, S0
58F62E:  VMOV            R1, S0
58F632:  STRB.W          R1, [R0,#0xA24]
58F636:  BX              LR
