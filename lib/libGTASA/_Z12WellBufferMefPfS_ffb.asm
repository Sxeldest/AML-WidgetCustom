; =========================================================
; Game Engine Function: _Z12WellBufferMefPfS_ffb
; Address            : 0x3D204C - 0x3D2136
; =========================================================

3D204C:  VMOV            S2, R0
3D2050:  VLDR            S0, [R1]
3D2054:  LDR             R0, [SP,#arg_4]
3D2056:  VMOV            S4, R3
3D205A:  VSUB.F32        S2, S2, S0
3D205E:  VLDR            S0, [SP,#arg_0]
3D2062:  CMP             R0, #1
3D2064:  BNE             loc_3D20A6
3D2066:  VLDR            S6, =3.1416
3D206A:  VCMPE.F32       S2, S6
3D206E:  VMRS            APSR_nzcv, FPSCR
3D2072:  BLT             loc_3D2086
3D2074:  VLDR            S8, =-6.2832
3D2078:  VADD.F32        S2, S2, S8
3D207C:  VCMPE.F32       S2, S6
3D2080:  VMRS            APSR_nzcv, FPSCR
3D2084:  BGE             loc_3D2078
3D2086:  VLDR            S6, =-3.1416
3D208A:  VCMPE.F32       S2, S6
3D208E:  VMRS            APSR_nzcv, FPSCR
3D2092:  BGE             loc_3D20A6
3D2094:  VLDR            S8, =6.2832
3D2098:  VADD.F32        S2, S2, S8
3D209C:  VCMPE.F32       S2, S6
3D20A0:  VMRS            APSR_nzcv, FPSCR
3D20A4:  BLT             loc_3D2098
3D20A6:  VMUL.F32        S2, S2, S4
3D20AA:  VLDR            S4, [R2]
3D20AE:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3D20B4)
3D20B0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3D20B2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3D20B4:  VSUB.F32        S6, S2, S4
3D20B8:  VABS.F32        S8, S6
3D20BC:  VCMPE.F32       S6, #0.0
3D20C0:  VMRS            APSR_nzcv, FPSCR
3D20C4:  VCMPE.F32       S2, #0.0
3D20C8:  VMUL.F32        S0, S8, S0
3D20CC:  VLDR            S8, [R0]
3D20D0:  VNMUL.F32       S10, S8, S0
3D20D4:  VMUL.F32        S0, S8, S0
3D20D8:  IT GT
3D20DA:  VMOVGT.F32      S10, S0
3D20DE:  VMRS            APSR_nzcv, FPSCR
3D20E2:  VADD.F32        S0, S4, S10
3D20E6:  VSTR            S0, [R2]
3D20EA:  ITT LT
3D20EC:  VCMPELT.F32     S0, S2
3D20F0:  VMRSLT          APSR_nzcv, FPSCR
3D20F4:  BLT             loc_3D210A
3D20F6:  VCMPE.F32       S2, #0.0
3D20FA:  VMRS            APSR_nzcv, FPSCR
3D20FE:  ITT GT
3D2100:  VCMPEGT.F32     S0, S2
3D2104:  VMRSGT          APSR_nzcv, FPSCR
3D2108:  BLE             loc_3D2112
3D210A:  VMOV.F32        S0, S2
3D210E:  VSTR            S2, [R2]
3D2112:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3D211C)
3D2114:  VMOV.F32        S2, #10.0
3D2118:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3D211A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3D211C:  VLDR            S4, [R0]
3D2120:  VMIN.F32        D1, D2, D1
3D2124:  VMUL.F32        S0, S0, S2
3D2128:  VLDR            S2, [R1]
3D212C:  VADD.F32        S0, S2, S0
3D2130:  VSTR            S0, [R1]
3D2134:  BX              LR
